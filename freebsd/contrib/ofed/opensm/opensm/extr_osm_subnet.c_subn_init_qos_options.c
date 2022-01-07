
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int high_limit; int * sl2vl; int * vlarb_low; int * vlarb_high; scalar_t__ max_vls; } ;
typedef TYPE_1__ osm_qos_options_t ;


 int free (int *) ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static void subn_init_qos_options(osm_qos_options_t *opt, osm_qos_options_t *f)
{
 opt->max_vls = 0;
 opt->high_limit = -1;
 if (opt->vlarb_high)
  free(opt->vlarb_high);
 opt->vlarb_high = ((void*)0);
 if (opt->vlarb_low)
  free(opt->vlarb_low);
 opt->vlarb_low = ((void*)0);
 if (opt->sl2vl)
  free(opt->sl2vl);
 opt->sl2vl = ((void*)0);
 if (f)
  memcpy(f, opt, sizeof(*f));
}
