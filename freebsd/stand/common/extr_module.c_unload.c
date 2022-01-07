
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {struct preloaded_file* f_next; } ;


 int file_discard (struct preloaded_file*) ;
 scalar_t__ loadaddr ;
 struct preloaded_file* preloaded_files ;
 int unsetenv (char*) ;

void
unload(void)
{
 struct preloaded_file *fp;

 while (preloaded_files != ((void*)0)) {
  fp = preloaded_files;
  preloaded_files = preloaded_files->f_next;
  file_discard(fp);
 }
 loadaddr = 0;
 unsetenv("kernelname");
}
