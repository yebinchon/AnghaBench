
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signature_alg {int sig_oid; } ;
typedef int heim_oid ;


 scalar_t__ der_heim_oid_cmp (int ,int const*) ;
 struct signature_alg const** sig_algs ;

__attribute__((used)) static const struct signature_alg *
find_sig_alg(const heim_oid *oid)
{
    unsigned int i;
    for (i = 0; sig_algs[i]; i++)
 if (der_heim_oid_cmp(sig_algs[i]->sig_oid, oid) == 0)
     return sig_algs[i];
    return ((void*)0);
}
