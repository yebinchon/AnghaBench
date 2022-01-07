
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {TYPE_5__* user_data; } ;
typedef TYPE_4__ smp_engine_t ;
struct TYPE_14__ {TYPE_2__* cfg; TYPE_7__* f_int; } ;
typedef TYPE_5__ ibnd_scan_t ;
struct TYPE_10__ {size_t cnt; scalar_t__* p; } ;
struct TYPE_15__ {TYPE_1__ drpath; } ;
typedef TYPE_6__ ib_portid_t ;
struct TYPE_12__ {scalar_t__ maxhops_discovered; } ;
struct TYPE_16__ {TYPE_3__ fabric; } ;
typedef TYPE_7__ f_internal_t ;
struct TYPE_11__ {scalar_t__ max_hops; } ;



__attribute__((used)) static int retract_dpath(smp_engine_t * engine, ib_portid_t * portid)
{
 ibnd_scan_t *scan = engine->user_data;
 f_internal_t *f_int = scan->f_int;

 if (scan->cfg->max_hops &&
     f_int->fabric.maxhops_discovered > scan->cfg->max_hops)
  return 0;






 f_int->fabric.maxhops_discovered++;
 portid->drpath.p[portid->drpath.cnt] = 0;
 portid->drpath.cnt--;
 return 1;
}
