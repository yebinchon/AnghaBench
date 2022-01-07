
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_status_t ;


 int APR_SUCCESS ;
 int * xlat_ntou_static_handle ;
 int * xlat_uton_static_handle ;
 int * xlate_handle_hash ;

__attribute__((used)) static apr_status_t
xlate_cleanup(void *arg)
{


  xlate_handle_hash = ((void*)0);


  xlat_ntou_static_handle = ((void*)0);
  xlat_uton_static_handle = ((void*)0);

  return APR_SUCCESS;
}
