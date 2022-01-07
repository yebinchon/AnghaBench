
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {struct preloaded_file* f_next; } ;


 struct preloaded_file* preloaded_files ;

__attribute__((used)) static void
file_remove(struct preloaded_file *fp)
{
 struct preloaded_file *cm;

 if (preloaded_files == ((void*)0))
  return;

 if (preloaded_files == fp) {
  preloaded_files = fp->f_next;
  return;
        }
        for (cm = preloaded_files; cm->f_next != ((void*)0); cm = cm->f_next) {
  if (cm->f_next == fp) {
   cm->f_next = fp->f_next;
   return;
  }
 }
}
