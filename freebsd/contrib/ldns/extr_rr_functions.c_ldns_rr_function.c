
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 scalar_t__ ldns_rr_get_type (int const*) ;
 int * ldns_rr_rdf (int const*,size_t) ;

__attribute__((used)) static ldns_rdf *
ldns_rr_function(ldns_rr_type type, const ldns_rr *rr, size_t pos)
{
        if (!rr || ldns_rr_get_type(rr) != type) {
                return ((void*)0);
        }
        return ldns_rr_rdf(rr, pos);
}
