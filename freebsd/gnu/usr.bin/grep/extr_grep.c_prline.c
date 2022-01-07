
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;


 char* _ (char*) ;
 int add_count (int ,int) ;
 char const* bufbeg ;
 scalar_t__ color_option ;
 int dossified_pos (int ) ;
 int errno ;
 int error (int ,int ,char*) ;
 size_t execute (char const*,int,size_t*,int) ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 char* filename ;
 int filename_mask ;
 int fputs (char*,int ) ;
 int fwrite (char const*,int,int,int ) ;
 char* grep_color ;
 char const* lastnl ;
 char const* lastout ;
 scalar_t__ line_buffered ;
 int nlscan (char const*) ;
 scalar_t__ only_matching ;
 scalar_t__ out_byte ;
 scalar_t__ out_file ;
 scalar_t__ out_line ;
 int print_offset_sep (int ,int) ;
 int printf (char*,char*,...) ;
 int stdout ;
 size_t stub1 (char const*,int,size_t*,int) ;
 size_t stub2 (char const*,int,size_t*,int) ;
 int totalcc ;
 int totalnl ;

__attribute__((used)) static void
prline (char const *beg, char const *lim, int sep)
{
  if (out_file)
    printf ("%s%c", filename, sep & filename_mask);
  if (out_line)
    {
      nlscan (beg);
      totalnl = add_count (totalnl, 1);
      print_offset_sep (totalnl, sep);
      lastnl = lim;
    }
  if (out_byte)
    {
      uintmax_t pos = add_count (totalcc, beg - bufbeg);



      print_offset_sep (pos, sep);
    }
  if (only_matching)
    {
      size_t match_size;
      size_t match_offset;
      while ((match_offset = (*execute) (beg, lim - beg, &match_size, 1))
   != (size_t) -1)
        {
   char const *b = beg + match_offset;
   if (b == lim)
     break;
   if (match_size == 0)
     break;
   if(color_option)
     printf("\33[%sm", grep_color);
   fwrite(b, sizeof (char), match_size, stdout);
   if(color_option)
     fputs("\33[00m", stdout);
   fputs("\n", stdout);
   beg = b + match_size;
        }
      lastout = lim;
      if(line_buffered)
 fflush(stdout);
      return;
    }
  if (color_option)
    {
      size_t match_size;
      size_t match_offset;
      while (lim-beg && (match_offset = (*execute) (beg, lim - beg, &match_size, 1))
      != (size_t) -1)
 {
   char const *b = beg + match_offset;

   if (b == lim)
     break;

   if (match_size == 0)
     break;
   fwrite (beg, sizeof (char), match_offset, stdout);
   printf ("\33[%sm", grep_color);
   fwrite (b, sizeof (char), match_size, stdout);
   fputs ("\33[00m", stdout);
   beg = b + match_size;
 }
      fputs ("\33[K", stdout);
    }
  fwrite (beg, 1, lim - beg, stdout);
  if (ferror (stdout))
    error (0, errno, _("writing output"));
  lastout = lim;
  if (line_buffered)
    fflush (stdout);
}
