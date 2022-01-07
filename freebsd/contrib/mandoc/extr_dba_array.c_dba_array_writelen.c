
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dba_array {scalar_t__ ed; scalar_t__ eu; } ;
typedef int int32_t ;


 int dba_int_write (scalar_t__) ;
 int dba_skip (int ,scalar_t__) ;

int32_t
dba_array_writelen(struct dba_array *array, int32_t nmemb)
{
 dba_int_write(array->eu - array->ed);
 return dba_skip(nmemb, array->eu - array->ed);
}
