
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ MODE_LIST ;
 int current_filename_printed ;
 scalar_t__ filename ;
 int files_pos ;
 int files_total ;
 int first_filename_printed ;
 int fprintf (int *,char*,scalar_t__,int,...) ;
 int fputc (char,int *) ;
 scalar_t__ opt_mode ;
 int opt_robot ;
 int signals_block () ;
 int signals_unblock () ;
 int * stderr ;
 scalar_t__ stdin_filename ;
 int * stdout ;

__attribute__((used)) static void
print_filename(void)
{
 if (!opt_robot && (files_total != 1 || filename != stdin_filename)) {
  signals_block();

  FILE *file = opt_mode == MODE_LIST ? stdout : stderr;



  if (first_filename_printed)
   fputc('\n', file);

  first_filename_printed = 1;
  current_filename_printed = 1;



  if (files_total == 0)
   fprintf(file, "%s (%u)\n", filename,
     files_pos);
  else
   fprintf(file, "%s (%u/%u)\n", filename,
     files_pos, files_total);

  signals_unblock();
 }

 return;
}
