
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int f_internal_t ;


 int * calloc (int,int) ;
 int create_lid2guid (int *) ;

f_internal_t *allocate_fabric_internal(void)
{
 f_internal_t *f = calloc(1, sizeof(*f));
 if (f)
  create_lid2guid(f);

 return (f);
}
