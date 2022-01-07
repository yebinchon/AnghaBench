
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct preloaded_file {struct file_metadata* f_metadata; } ;
struct file_metadata {size_t md_size; int md_type; struct file_metadata* md_next; int md_data; } ;


 int bcopy (void*,int ,size_t) ;
 struct file_metadata* malloc (int) ;

void
file_addmetadata(struct preloaded_file *fp, int type, size_t size, void *p)
{
 struct file_metadata *md;

 md = malloc(sizeof(struct file_metadata) - sizeof(md->md_data) + size);
 if (md != ((void*)0)) {
  md->md_size = size;
  md->md_type = type;
  bcopy(p, md->md_data, size);
  md->md_next = fp->f_metadata;
 }
 fp->f_metadata = md;
}
