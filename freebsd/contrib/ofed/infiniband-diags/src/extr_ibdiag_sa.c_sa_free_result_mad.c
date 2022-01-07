
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sa_query_result {int * p_result_madw; } ;


 int free (int *) ;
 int umad_size () ;

void sa_free_result_mad(struct sa_query_result *result)
{
 if (result->p_result_madw) {
  free((uint8_t *) result->p_result_madw - umad_size());
  result->p_result_madw = ((void*)0);
 }
}
