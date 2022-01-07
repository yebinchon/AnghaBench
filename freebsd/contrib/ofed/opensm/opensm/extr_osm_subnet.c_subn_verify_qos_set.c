
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sl2vl; int vlarb_high; int vlarb_low; int high_limit; int max_vls; } ;
typedef TYPE_1__ osm_qos_options_t ;


 int subn_verify_high_limit (int *,char const*) ;
 int subn_verify_max_vls (int *,char const*) ;
 int subn_verify_sl2vl (int *,char const*) ;
 int subn_verify_vlarb (int *,char const*,char*) ;

__attribute__((used)) static void subn_verify_qos_set(osm_qos_options_t *set, const char *prefix)
{
 subn_verify_max_vls(&set->max_vls, prefix);
 subn_verify_high_limit(&set->high_limit, prefix);
 subn_verify_vlarb(&set->vlarb_low, prefix, "low");
 subn_verify_vlarb(&set->vlarb_high, prefix, "high");
 subn_verify_sl2vl(&set->sl2vl, prefix);
}
