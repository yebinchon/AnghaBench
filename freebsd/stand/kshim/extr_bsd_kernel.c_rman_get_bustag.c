
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int r_bustag; } ;
typedef int bus_space_tag_t ;



bus_space_tag_t
rman_get_bustag(struct resource *r)
{

 return (r->r_bustag);
}
