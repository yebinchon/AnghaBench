
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_9__ {int spa_mos; } ;
typedef TYPE_1__ spa_t ;
struct TYPE_10__ {int dd_head_dataset_obj; int dd_child_dir_zapobj; } ;
typedef TYPE_2__ dsl_dir_phys_t ;
struct TYPE_11__ {int dn_bonus; } ;
typedef TYPE_3__ dnode_phys_t ;
typedef int dir_obj ;


 int DMU_POOL_DIRECTORY_OBJECT ;
 char* DMU_POOL_ROOT_DATASET ;
 int EIO ;
 int ENOENT ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ objset_get_dnode (TYPE_1__ const*,int *,int ,TYPE_3__*) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ zap_lookup (TYPE_1__ const*,TYPE_3__*,char*,int,int,int *) ;

__attribute__((used)) static int
zfs_lookup_dataset(const spa_t *spa, const char *name, uint64_t *objnum)
{
 char element[256];
 uint64_t dir_obj, child_dir_zapobj;
 dnode_phys_t child_dir_zap, dir;
 dsl_dir_phys_t *dd;
 const char *p, *q;

 if (objset_get_dnode(spa, &spa->spa_mos, DMU_POOL_DIRECTORY_OBJECT, &dir))
  return (EIO);
 if (zap_lookup(spa, &dir, DMU_POOL_ROOT_DATASET, sizeof (dir_obj),
     1, &dir_obj))
  return (EIO);

 p = name;
 for (;;) {
  if (objset_get_dnode(spa, &spa->spa_mos, dir_obj, &dir))
   return (EIO);
  dd = (dsl_dir_phys_t *)&dir.dn_bonus;

  while (*p == '/')
   p++;

  if (*p == '\0')
   break;

  q = strchr(p, '/');
  if (q) {
   memcpy(element, p, q - p);
   element[q - p] = '\0';
   p = q + 1;
  } else {
   strcpy(element, p);
   p += strlen(p);
  }

  child_dir_zapobj = dd->dd_child_dir_zapobj;
  if (objset_get_dnode(spa, &spa->spa_mos, child_dir_zapobj, &child_dir_zap) != 0)
   return (EIO);


  if (zap_lookup(spa, &child_dir_zap, element, sizeof (dir_obj),
      1, &dir_obj) != 0)
   return (ENOENT);
 }

 *objnum = dd->dd_head_dataset_obj;
 return (0);
}
