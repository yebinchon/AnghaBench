
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int forking; } ;
typedef TYPE_1__ witness_tsd_t ;


 int config_debug ;

void
witness_prefork(witness_tsd_t *witness_tsd) {
 if (!config_debug) {
  return;
 }
 witness_tsd->forking = 1;
}
