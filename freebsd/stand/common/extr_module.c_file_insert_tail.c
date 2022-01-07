
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {struct preloaded_file* f_next; } ;


 struct preloaded_file* preloaded_files ;

__attribute__((used)) static void
file_insert_tail(struct preloaded_file *fp)
{
 struct preloaded_file *cm;


 fp->f_next = ((void*)0);
 if (preloaded_files == ((void*)0)) {
  preloaded_files = fp;
 } else {
  for (cm = preloaded_files; cm->f_next != ((void*)0); cm = cm->f_next)
   ;
  cm->f_next = fp;
 }
}
