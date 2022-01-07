
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qos_mad_item_t ;


 int free (int *) ;

__attribute__((used)) static void osm_qos_mad_delete(qos_mad_item_t ** p_item)
{
 free(*p_item);
 *p_item = ((void*)0);
}
