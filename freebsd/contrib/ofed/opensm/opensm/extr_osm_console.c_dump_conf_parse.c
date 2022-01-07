
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int opt; } ;
struct TYPE_5__ {TYPE_1__ subn; } ;
typedef TYPE_2__ osm_opensm_t ;
typedef int FILE ;


 int osm_subn_output_conf (int *,int *) ;

__attribute__((used)) static void dump_conf_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 osm_subn_output_conf(out, &p_osm->subn.opt);
}
