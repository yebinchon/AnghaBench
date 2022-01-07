
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vdd {scalar_t__ vdd_type; int max_depth; struct isoent* rootent; } ;
struct TYPE_4__ {struct isoent* first; } ;
struct TYPE_3__ {struct extr_rec* first; } ;
struct isoent {struct isoent* drnext; struct isoent* parent; TYPE_2__ subdirs; TYPE_1__ extr_rec_list; } ;
struct extr_rec {int offset; int buf; struct extr_rec* next; } ;
struct archive_write {int dummy; } ;


 int ARCHIVE_OK ;
 int LOGICAL_BLOCK_SIZE ;
 scalar_t__ VDD_JOLIET ;
 int _write_directory_descriptors (struct archive_write*,struct vdd*,struct isoent*,int) ;
 int memcpy (unsigned char*,int ,int) ;
 int memset (unsigned char*,int ,int) ;
 unsigned char* wb_buffptr (struct archive_write*) ;
 int wb_consume (struct archive_write*,int) ;

__attribute__((used)) static int
write_directory_descriptors(struct archive_write *a, struct vdd *vdd)
{
 struct isoent *np;
 int depth, r;

 depth = 0;
 np = vdd->rootent;
 do {
  struct extr_rec *extr;

  r = _write_directory_descriptors(a, vdd, np, depth);
  if (r < 0)
   return (r);
  if (vdd->vdd_type != VDD_JOLIET) {




   for (extr = np->extr_rec_list.first;
       extr != ((void*)0);
       extr = extr->next) {
    unsigned char *wb;

    wb = wb_buffptr(a);
    memcpy(wb, extr->buf, extr->offset);
    memset(wb + extr->offset, 0,
        LOGICAL_BLOCK_SIZE - extr->offset);
    r = wb_consume(a, LOGICAL_BLOCK_SIZE);
    if (r < 0)
     return (r);
   }
  }

  if (np->subdirs.first != ((void*)0) && depth + 1 < vdd->max_depth) {

   np = np->subdirs.first;
   depth++;
   continue;
  }
  while (np != np->parent) {
   if (np->drnext == ((void*)0)) {

    np = np->parent;
    depth--;
   } else {
    np = np->drnext;
    break;
   }
  }
 } while (np != np->parent);

 return (ARCHIVE_OK);
}
