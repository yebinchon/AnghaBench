
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {struct file_metadata* f_metadata; } ;
struct file_metadata {int md_type; struct file_metadata* md_next; } ;



struct file_metadata *
file_findmetadata(struct preloaded_file *fp, int type)
{
 struct file_metadata *md;

 for (md = fp->f_metadata; md != ((void*)0); md = md->md_next)
  if (md->md_type == type)
   break;
 return(md);
}
