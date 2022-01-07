
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_mode; } ;
struct stats {TYPE_1__ stat; } ;
typedef scalar_t__ off_t ;


 int BZ2_bzclose (scalar_t__) ;
 scalar_t__ BZflag ;

 int EINTR ;

 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 scalar_t__ RECURSE_DIRECTORIES ;
 int SEEK_SET ;
 int SET_BINARY (int) ;
 scalar_t__ SKIP_DIRECTORIES ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ Zflag ;
 char* _ (char*) ;
 scalar_t__ after_last_match ;
 scalar_t__ bufmapped ;
 scalar_t__ bufoffset ;
 scalar_t__ bzbufdesc ;
 scalar_t__ close (int) ;
 scalar_t__ count_matches ;
 scalar_t__ directories ;
 int errno ;
 int error (int ,int,char*,char const*) ;
 int fcntl (int,int ,...) ;
 char* filename ;
 char filename_mask ;
 int grep (int,char const*,struct stats*) ;
 int grepdir (char const*,struct stats*) ;
 int gzbufdesc ;
 int gzclose (int ) ;
 scalar_t__ is_EISDIR (int,char const*) ;
 int isatty (int) ;
 int isdir (char const*) ;
 char* label ;
 int list_files ;
 scalar_t__ lseek (int,scalar_t__,int ) ;
 int open (char const*,int) ;
 scalar_t__ out_file ;
 scalar_t__ outleft ;
 int printf (char*,...) ;
 scalar_t__ stat (char const*,TYPE_1__*) ;
 int suppress_errors ;
 int suppressible_error (char const*,int) ;

__attribute__((used)) static int
grepfile (char const *file, struct stats *stats)
{
  int desc;
  int count;
  int status;
  int flags;

  if (! file)
    {
      desc = 0;
      filename = label ? label : _("(standard input)");
    }
  else
    {
      while ((desc = open (file, O_RDONLY | O_NONBLOCK)) < 0 && errno == EINTR)
 continue;

      if (desc < 0)
 {
   int e = errno;

   if (is_EISDIR (e, file) && directories == RECURSE_DIRECTORIES)
     {
       if (stat (file, &stats->stat) != 0)
  {
    error (0, errno, "%s", file);
    return 1;
  }

       return grepdir (file, stats);
     }

   if (!suppress_errors)
     {
       if (directories == SKIP_DIRECTORIES)
  switch (e)
    {

    case 128:
      return 1;

    case 129:


      if (isdir (file))
        return 1;
      break;
    }
     }

   suppressible_error (file, e);
   return 1;
 }

      flags = fcntl(desc, F_GETFL);
      flags &= ~O_NONBLOCK;
      fcntl(desc, F_SETFL, flags);
      filename = file;
    }
  count = grep (desc, file, stats);
  if (count < 0)
    status = count + 2;
  else
    {
      if (count_matches)
 {
   if (out_file)
     printf ("%s%c", filename, ':' & filename_mask);
   printf ("%d\n", count);
 }

      status = !count;
      if (list_files == 1 - 2 * status)
 printf ("%s%c", filename, '\n' & filename_mask);

      if (BZflag && bzbufdesc)
 BZ2_bzclose(bzbufdesc);
      else





      if (! file)
 {
   off_t required_offset = outleft ? bufoffset : after_last_match;
   if ((bufmapped || required_offset != bufoffset)
       && lseek (desc, required_offset, SEEK_SET) < 0
       && S_ISREG (stats->stat.st_mode))
     error (0, errno, "%s", filename);
 }
      else
 while (close (desc) != 0)
   if (errno != EINTR)
     {
       error (0, errno, "%s", file);
       break;
     }
    }

  return status;
}
