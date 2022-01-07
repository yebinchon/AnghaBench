
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_status ;
typedef int ldns_resolver ;


 scalar_t__ LDNS_STATUS_MEM_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int * ldns_resolver_new () ;
 scalar_t__ ldns_resolver_new_frm_file (int **,int *) ;

__attribute__((used)) static ldns_status
ldns_resolver_new_default(ldns_resolver **res) {
    if (ldns_resolver_new_frm_file(res, ((void*)0)) == LDNS_STATUS_OK ||
        (*res = ldns_resolver_new()) != ((void*)0))
        return LDNS_STATUS_OK;
    return LDNS_STATUS_MEM_ERR;
}
