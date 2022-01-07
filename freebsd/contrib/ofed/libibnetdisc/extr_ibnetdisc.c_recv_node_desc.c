
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int smp_engine_t ;
typedef int ibnd_smp_t ;
struct TYPE_2__ {int nodedesc; } ;
typedef TYPE_1__ ibnd_node_t ;


 int IB_SMP_DATA_OFFS ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static int recv_node_desc(smp_engine_t * engine, ibnd_smp_t * smp,
     uint8_t * mad, void *cb_data)
{
 uint8_t *node_desc = mad + IB_SMP_DATA_OFFS;
 ibnd_node_t *node = cb_data;
 memcpy(node->nodedesc, node_desc, sizeof(node->nodedesc));
 return 0;
}
