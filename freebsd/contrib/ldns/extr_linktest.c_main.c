
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;


 int ldns_rr_free (int *) ;
 int * ldns_rr_new () ;

int
main(void)
{
  ldns_rr *rr = ldns_rr_new();

  ldns_rr_free(rr);
  return 0;
}
