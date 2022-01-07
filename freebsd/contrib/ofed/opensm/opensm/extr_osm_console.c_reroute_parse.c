
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int force_reroute; } ;
struct TYPE_6__ {TYPE_1__ subn; } ;
typedef TYPE_2__ osm_opensm_t ;
typedef int FILE ;


 int TRUE ;
 int osm_opensm_sweep (TYPE_2__*) ;

__attribute__((used)) static void reroute_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 p_osm->subn.force_reroute = TRUE;
 osm_opensm_sweep(p_osm);
}
