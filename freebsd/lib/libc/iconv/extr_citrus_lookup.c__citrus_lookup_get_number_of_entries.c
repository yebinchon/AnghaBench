
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_lookup {int (* cl_num_entries ) (struct _citrus_lookup*) ;} ;


 int stub1 (struct _citrus_lookup*) ;

int
_citrus_lookup_get_number_of_entries(struct _citrus_lookup *cl)
{

 return ((*cl->cl_num_entries)(cl));
}
