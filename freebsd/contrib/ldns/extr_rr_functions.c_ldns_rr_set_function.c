
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 int ldns_rdf_deep_free (int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_set_rdf (int *,int *,size_t) ;

__attribute__((used)) static bool
ldns_rr_set_function(ldns_rr_type type, ldns_rr *rr, ldns_rdf *rdf, size_t pos)
{
        ldns_rdf *pop;
        if (!rr || ldns_rr_get_type(rr) != type) {
                return 0;
        }
        pop = ldns_rr_set_rdf(rr, rdf, pos);
  ldns_rdf_deep_free(pop);
        return 1;
}
