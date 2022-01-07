
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* fsap_data; } ;
typedef TYPE_1__ svn_fs_id_t ;
struct TYPE_5__ {char const* node_id; } ;
typedef TYPE_2__ id_private_t ;



const char *
svn_fs_base__id_node_id(const svn_fs_id_t *id)
{
  id_private_t *pvt = id->fsap_data;

  return pvt->node_id;
}
