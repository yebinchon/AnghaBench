
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_mem_t ;


 int LOCK (int *) ;
 int REQUIRE (int ) ;
 int UNLOCK (int *) ;
 int createlock ;
 int mem_createfunc (size_t,size_t,int **,unsigned int) ;
 int stub1 (size_t,size_t,int **,unsigned int) ;

isc_result_t
isc_mem_create2(size_t init_max_size, size_t target_size, isc_mem_t **mctxp,
  unsigned int flags)
{
 isc_result_t result;

 LOCK(&createlock);

 REQUIRE(mem_createfunc != ((void*)0));
 result = (*mem_createfunc)(init_max_size, target_size, mctxp, flags);

 UNLOCK(&createlock);

 return (result);
}
