
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int smp_engine_t ;
struct TYPE_6__ {int path; } ;
typedef TYPE_1__ ibnd_smp_t ;
struct TYPE_7__ {int numports; } ;
typedef TYPE_2__ ibnd_node_t ;


 int query_port_info (int *,int *,TYPE_2__*,int) ;
 int recv_port_info (int *,TYPE_1__*,int *,void*) ;

__attribute__((used)) static int recv_port0_info(smp_engine_t * engine, ibnd_smp_t * smp,
      uint8_t * mad, void *cb_data)
{
 ibnd_node_t *node = cb_data;
 int i, status;

 status = recv_port_info(engine, smp, mad, cb_data);

 for (i = 1; i <= node->numports; i++)
  query_port_info(engine, &smp->path, node, i);

 return status;
}
