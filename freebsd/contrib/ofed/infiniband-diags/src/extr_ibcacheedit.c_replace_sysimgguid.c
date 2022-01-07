
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct guids {scalar_t__ before; int found; int after; } ;
struct TYPE_3__ {int info; } ;
typedef TYPE_1__ ibnd_node_t ;


 int IB_NODE_SYSTEM_GUID_F ;
 scalar_t__ mad_get_field64 (int ,int ,int ) ;
 int mad_set_field64 (int ,int ,int ,int ) ;

__attribute__((used)) static void replace_sysimgguid(ibnd_node_t *node, void *user_data)
{
 struct guids *guids;
 uint64_t sysimgguid;

 guids = (struct guids *)user_data;

 sysimgguid = mad_get_field64(node->info, 0, IB_NODE_SYSTEM_GUID_F);
 if (sysimgguid == guids->before) {
  mad_set_field64(node->info, 0, IB_NODE_SYSTEM_GUID_F,
    guids->after);
  guids->found++;
 }
}
