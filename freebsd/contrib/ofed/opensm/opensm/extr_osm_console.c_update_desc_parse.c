
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int osm_opensm_t ;
typedef int FILE ;


 int osm_update_node_desc (int *) ;

__attribute__((used)) static void update_desc_parse(char **p_last, osm_opensm_t * p_osm, FILE * out)
{
 osm_update_node_desc(p_osm);
}
