
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int umad_fd; int smps_on_wire; } ;
typedef TYPE_1__ smp_engine_t ;
typedef int ibnd_smp_t ;
typedef int cl_map_item_t ;


 int IBND_ERROR (char*) ;
 int * cl_qmap_end (int *) ;
 int * cl_qmap_head (int *) ;
 int cl_qmap_remove_item (int *,int *) ;
 int free (int *) ;
 int * get_smp (TYPE_1__*) ;
 int umad_close_port (int ) ;

void smp_engine_destroy(smp_engine_t * engine)
{
 cl_map_item_t *item;
 ibnd_smp_t *smp;


 smp = get_smp(engine);
 if (smp)
  IBND_ERROR("outstanding SMP's\n");
 for ( ; smp; smp = get_smp(engine))
  free(smp);


 item = cl_qmap_head(&engine->smps_on_wire);
 if (item != cl_qmap_end(&engine->smps_on_wire))
  IBND_ERROR("outstanding SMP's on wire\n");
 for ( ; item != cl_qmap_end(&engine->smps_on_wire);
      item = cl_qmap_head(&engine->smps_on_wire)) {
  cl_qmap_remove_item(&engine->smps_on_wire, item);
  free(item);
 }

 umad_close_port(engine->umad_fd);
}
