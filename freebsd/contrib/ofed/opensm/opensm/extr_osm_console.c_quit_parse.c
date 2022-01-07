
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int log; int console; } ;
typedef TYPE_1__ osm_opensm_t ;
typedef int FILE ;


 int cio_close (int *,int *) ;

__attribute__((used)) static void quit_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 cio_close(&p_osm->console, &p_osm->log);
}
