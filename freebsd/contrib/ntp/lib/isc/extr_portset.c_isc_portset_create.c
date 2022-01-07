
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_portset_t ;
typedef int isc_mem_t ;


 int ISC_R_NOMEMORY ;
 int ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int * isc_mem_get (int *,int) ;
 int memset (int *,int ,int) ;

isc_result_t
isc_portset_create(isc_mem_t *mctx, isc_portset_t **portsetp) {
 isc_portset_t *portset;

 REQUIRE(portsetp != ((void*)0) && *portsetp == ((void*)0));

 portset = isc_mem_get(mctx, sizeof(*portset));
 if (portset == ((void*)0))
  return (ISC_R_NOMEMORY);


 memset(portset, 0, sizeof(*portset));
 *portsetp = portset;

 return (ISC_R_SUCCESS);
}
