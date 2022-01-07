
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int keys; scalar_t__ gid; scalar_t__ uid; scalar_t__ fflags_set; scalar_t__ fflags_clear; scalar_t__ mode; int const type; } ;
struct mtree_writer {int keys; TYPE_1__ set; } ;
struct mtree_entry {scalar_t__ gid; scalar_t__ uid; scalar_t__ fflags_set; scalar_t__ fflags_clear; scalar_t__ mode; int filetype; } ;
 int F_FLAGS ;
 int F_GID ;
 int F_GNAME ;
 int F_MODE ;
 int F_TYPE ;
 int F_UID ;
 int F_UNAME ;

__attribute__((used)) static int
get_global_set_keys(struct mtree_writer *mtree, struct mtree_entry *me)
{
 int keys;

 keys = mtree->keys;





 if (mtree->set.keys == 0)
  return (keys);

 if ((mtree->set.keys & (F_GNAME | F_GID)) != 0 &&
      mtree->set.gid == me->gid)
  keys &= ~(F_GNAME | F_GID);
 if ((mtree->set.keys & (F_UNAME | F_UID)) != 0 &&
      mtree->set.uid == me->uid)
  keys &= ~(F_UNAME | F_UID);
 if (mtree->set.keys & F_FLAGS) {
  if (mtree->set.fflags_set == me->fflags_set &&
      mtree->set.fflags_clear == me->fflags_clear)
   keys &= ~F_FLAGS;
 }
 if ((mtree->set.keys & F_MODE) != 0 && mtree->set.mode == me->mode)
  keys &= ~F_MODE;

 switch (me->filetype) {
 case 130: case 128: case 133:
 case 134: case 131:
  break;
 case 132:
  if ((mtree->set.keys & F_TYPE) != 0 &&
      mtree->set.type == 132)
   keys &= ~F_TYPE;
  break;
 case 129:
 default:
  if ((mtree->set.keys & F_TYPE) != 0 &&
      mtree->set.type == 129)
   keys &= ~F_TYPE;
  break;
 }

 return (keys);
}
