
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int osm_qos_level_t ;


 scalar_t__ calloc (int,int) ;

osm_qos_level_t *osm_qos_policy_qos_level_create()
{
 osm_qos_level_t *p =
     (osm_qos_level_t *) calloc(1, sizeof(osm_qos_level_t));
 return p;
}
