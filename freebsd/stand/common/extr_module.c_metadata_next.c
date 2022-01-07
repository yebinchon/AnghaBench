
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_metadata {int md_type; struct file_metadata* md_next; } ;



struct file_metadata *
metadata_next(struct file_metadata *md, int type)
{

 if (md == ((void*)0))
  return (((void*)0));
 while((md = md->md_next) != ((void*)0))
  if (md->md_type == type)
   break;
 return (md);
}
