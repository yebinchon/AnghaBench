
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper {scalar_t__ cm_closure; } ;


 int free (scalar_t__) ;
 int uninit (scalar_t__) ;

__attribute__((used)) static void

_citrus_mapper_serial_mapper_uninit(struct _citrus_mapper *cm)
{

 if (cm && cm->cm_closure) {
  uninit(cm->cm_closure);
  free(cm->cm_closure);
 }
}
