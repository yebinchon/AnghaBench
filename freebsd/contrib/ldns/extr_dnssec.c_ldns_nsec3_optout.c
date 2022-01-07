
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;


 int LDNS_NSEC3_VARS_OPTOUT_MASK ;
 int ldns_nsec3_flags (int const*) ;

bool
ldns_nsec3_optout(const ldns_rr *nsec3_rr)
{
 return (ldns_nsec3_flags(nsec3_rr) & LDNS_NSEC3_VARS_OPTOUT_MASK);
}
