
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* p_osm; } ;
typedef TYPE_3__ osm_subn_t ;
typedef int boolean_t ;
struct TYPE_5__ {int accum_log_file; } ;
struct TYPE_6__ {TYPE_1__ log; } ;



__attribute__((used)) static void opts_setup_accum_log_file(osm_subn_t *p_subn, void *p_val)
{
 p_subn->p_osm->log.accum_log_file = *((boolean_t *) p_val);
}
