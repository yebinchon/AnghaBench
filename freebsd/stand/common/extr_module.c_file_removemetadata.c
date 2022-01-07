
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {struct file_metadata* f_metadata; } ;
struct file_metadata {struct file_metadata* md_next; } ;


 int free (struct file_metadata*) ;

void
file_removemetadata(struct preloaded_file *fp)
{
 struct file_metadata *md, *next;

 for (md = fp->f_metadata; md != ((void*)0); md = next)
 {
  next = md->md_next;
  free(md);
 }
 fp->f_metadata = ((void*)0);
}
