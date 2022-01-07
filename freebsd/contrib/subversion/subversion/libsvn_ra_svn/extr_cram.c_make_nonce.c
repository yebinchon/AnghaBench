
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint64_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int apr_generate_random_bytes (unsigned char*,int) ;
 int apr_time_now () ;

__attribute__((used)) static apr_status_t make_nonce(apr_uint64_t *nonce)
{



  *nonce = apr_time_now();
  return APR_SUCCESS;

}
