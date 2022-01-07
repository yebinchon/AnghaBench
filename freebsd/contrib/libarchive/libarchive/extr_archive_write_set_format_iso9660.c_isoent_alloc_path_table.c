
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vdd {int max_depth; TYPE_1__* pathtbl; } ;
struct archive_write {int archive; } ;
struct TYPE_2__ {scalar_t__ cnt; int * sorted; int * first; int ** last; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ENOMEM ;
 int archive_set_error (int *,int ,char*) ;
 TYPE_1__* malloc (int) ;

__attribute__((used)) static int
isoent_alloc_path_table(struct archive_write *a, struct vdd *vdd,
    int max_depth)
{
 int i;

 vdd->max_depth = max_depth;
 vdd->pathtbl = malloc(sizeof(*vdd->pathtbl) * vdd->max_depth);
 if (vdd->pathtbl == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }
 for (i = 0; i < vdd->max_depth; i++) {
  vdd->pathtbl[i].first = ((void*)0);
  vdd->pathtbl[i].last = &(vdd->pathtbl[i].first);
  vdd->pathtbl[i].sorted = ((void*)0);
  vdd->pathtbl[i].cnt = 0;
 }
 return (ARCHIVE_OK);
}
