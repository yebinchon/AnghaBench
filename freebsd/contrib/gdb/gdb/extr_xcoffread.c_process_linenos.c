
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct symloc {int lineno_off; } ;
struct subfile {struct linetable* line_vector; } ;
struct linetable_entry {int dummy; } ;
struct linetable {int nitems; } ;
struct coff_symfile_info {int max_lineno_offset; } ;
typedef int main_subfile ;
typedef int file_ptr ;
struct TYPE_10__ {int local_linesz; } ;
struct TYPE_9__ {int line_vector_length; struct linetable* line_vector; struct linetable* name; } ;
struct TYPE_8__ {int begin; unsigned int funStartLine; int end; char* name; struct subfile* subfile; } ;
struct TYPE_7__ {TYPE_1__* objfile; scalar_t__ read_symtab_private; } ;
struct TYPE_6__ {int obfd; scalar_t__ sym_private; } ;
typedef int CORE_ADDR ;


 struct linetable* arrange_linetable (struct linetable*) ;
 TYPE_5__* coff_data (int ) ;
 TYPE_4__* current_subfile ;
 int enter_line_range (struct subfile*,int,int,int ,int ,unsigned int*) ;
 int inclIndx ;
 TYPE_3__* inclTable ;
 int memset (struct subfile*,char,int) ;
 char* pop_subfile () ;
 int push_subfile () ;
 int start_subfile (char*,char*) ;
 char* strrchr (char*,char) ;
 TYPE_2__* this_symtab_psymtab ;
 int xfree (struct linetable*) ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (struct linetable*,int) ;
 struct linetable* xstrdup (char*) ;

__attribute__((used)) static void
process_linenos (CORE_ADDR start, CORE_ADDR end)
{
  int offset, ii;
  file_ptr max_offset =
  ((struct coff_symfile_info *) this_symtab_psymtab->objfile->sym_private)
  ->max_lineno_offset;


  struct subfile main_subfile;






  unsigned int main_source_baseline = 0;

  unsigned *firstLine;

  offset =
    ((struct symloc *) this_symtab_psymtab->read_symtab_private)->lineno_off;
  if (offset == 0)
    goto return_after_cleanup;

  memset (&main_subfile, '\0', sizeof (main_subfile));

  if (inclIndx == 0)


    enter_line_range (&main_subfile, offset, 0, start, end,
        &main_source_baseline);

  else
    {


      int linesz =
 coff_data (this_symtab_psymtab->objfile->obfd)->local_linesz;
      main_source_baseline = 0;

      for (ii = 0; ii < inclIndx; ++ii)
 {
   struct subfile *tmpSubfile;


   if (offset < inclTable[ii].begin)
     {
       enter_line_range
  (&main_subfile, offset, inclTable[ii].begin - linesz,
   start, 0, &main_source_baseline);
     }



   tmpSubfile = inclTable[ii].subfile =
     (struct subfile *) xmalloc (sizeof (struct subfile));

   memset (tmpSubfile, '\0', sizeof (struct subfile));
   firstLine = &(inclTable[ii].funStartLine);


   enter_line_range (tmpSubfile, inclTable[ii].begin,
       inclTable[ii].end, start, 0, firstLine);

   if (offset <= inclTable[ii].end)
     offset = inclTable[ii].end + linesz;
 }



      if (offset < max_offset + 1 - linesz)
 {
   enter_line_range (&main_subfile, offset, 0, start, end,
       &main_source_baseline);
 }
    }


  if (main_subfile.line_vector)
    {
      struct linetable *lineTb, *lv;

      lv = main_subfile.line_vector;




      lineTb = arrange_linetable (lv);
      if (lv == lineTb)
 {
   current_subfile->line_vector = (struct linetable *)
     xrealloc (lv, (sizeof (struct linetable)
      + lv->nitems * sizeof (struct linetable_entry)));
 }
      else
 {
   xfree (lv);
   current_subfile->line_vector = lineTb;
 }

      current_subfile->line_vector_length =
 current_subfile->line_vector->nitems;
    }



  for (ii = 0; ii < inclIndx; ++ii)
    {
      if ((inclTable[ii].subfile)->line_vector)
 {
   struct linetable *lineTb, *lv;

   lv = (inclTable[ii].subfile)->line_vector;




   lineTb = arrange_linetable (lv);

   push_subfile ();
   {



     char *fakename = strrchr (inclTable[ii].name, '.');
     if (fakename == ((void*)0))
       fakename = " ?";
     start_subfile (fakename, (char *) 0);
     xfree (current_subfile->name);
   }
   current_subfile->name = xstrdup (inclTable[ii].name);


   if (lv == lineTb)
     {
       current_subfile->line_vector =
  (struct linetable *) xrealloc
  (lv, (sizeof (struct linetable)
        + lv->nitems * sizeof (struct linetable_entry)));

     }
   else
     {
       xfree (lv);
       current_subfile->line_vector = lineTb;
     }

   current_subfile->line_vector_length =
     current_subfile->line_vector->nitems;
   start_subfile (pop_subfile (), (char *) 0);
 }
    }

return_after_cleanup:


  inclIndx = 0;


  memset (&main_subfile, '\0', sizeof (struct subfile));
}
