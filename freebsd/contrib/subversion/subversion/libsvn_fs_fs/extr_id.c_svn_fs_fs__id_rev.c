
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_fs_id_t ;
struct TYPE_4__ {int revision; } ;
struct TYPE_5__ {TYPE_1__ rev_item; } ;
struct TYPE_6__ {TYPE_2__ private_id; } ;
typedef TYPE_3__ fs_fs__id_t ;



svn_revnum_t
svn_fs_fs__id_rev(const svn_fs_id_t *fs_id)
{
  const fs_fs__id_t *id = (const fs_fs__id_t *)fs_id;

  return id->private_id.rev_item.revision;
}
