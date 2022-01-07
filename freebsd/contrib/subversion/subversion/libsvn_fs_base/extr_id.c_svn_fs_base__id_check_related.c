
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_id_t ;
typedef int svn_boolean_t ;
struct TYPE_6__ {int node_id; } ;
typedef TYPE_2__ id_private_t ;


 int TRUE ;
 scalar_t__ strcmp (int ,int ) ;

svn_boolean_t
svn_fs_base__id_check_related(const svn_fs_id_t *a,
                              const svn_fs_id_t *b)
{
  id_private_t *pvta = a->fsap_data, *pvtb = b->fsap_data;

  if (a == b)
    return TRUE;

  return (strcmp(pvta->node_id, pvtb->node_id) == 0);
}
