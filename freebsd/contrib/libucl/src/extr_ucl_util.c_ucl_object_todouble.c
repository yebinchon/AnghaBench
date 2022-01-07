
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ucl_object_t ;


 int ucl_object_todouble_safe (int const*,double*) ;

double
ucl_object_todouble (const ucl_object_t *obj)
{
 double result = 0.;

 ucl_object_todouble_safe (obj, &result);
 return result;
}
