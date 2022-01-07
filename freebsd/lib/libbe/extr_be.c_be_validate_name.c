
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* root; } ;
typedef TYPE_1__ libbe_handle_t ;


 int BE_ERR_INVALIDNAME ;
 int BE_ERR_PATHLEN ;
 int BE_ERR_SUCCESS ;
 scalar_t__ MAXNAMELEN ;
 int ZFS_TYPE_DATASET ;
 scalar_t__ strlen (char const*) ;
 int zfs_name_valid (char const*,int ) ;

int
be_validate_name(libbe_handle_t *lbh, const char *name)
{





 if (strlen(lbh->root) + 1 + strlen(name) > MAXNAMELEN)
  return (BE_ERR_PATHLEN);

 if (!zfs_name_valid(name, ZFS_TYPE_DATASET))
  return (BE_ERR_INVALIDNAME);

 return (BE_ERR_SUCCESS);
}
