
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sl2vl; int vlarb_low; int vlarb_high; } ;
typedef TYPE_1__ osm_qos_options_t ;


 int free (int ) ;

__attribute__((used)) static void subn_destroy_qos_options(osm_qos_options_t *opt)
{
 free(opt->vlarb_high);
 free(opt->vlarb_low);
 free(opt->sl2vl);
}
