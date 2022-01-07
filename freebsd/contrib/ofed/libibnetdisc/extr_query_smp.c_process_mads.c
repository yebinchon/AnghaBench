
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int smps_on_wire; } ;
typedef TYPE_1__ smp_engine_t ;


 int cl_is_qmap_empty (int *) ;
 int process_one_recv (TYPE_1__*) ;

int process_mads(smp_engine_t * engine)
{
 int rc;
 while (!cl_is_qmap_empty(&engine->smps_on_wire))
  if ((rc = process_one_recv(engine)) != 0)
   return rc;
 return 0;
}
