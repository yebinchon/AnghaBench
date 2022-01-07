
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gss_OID ;


 int GSS_C_NO_OID ;
 int GSS_KRB5_MECHANISM ;
 int GSS_SPNEGO_MECHANISM ;
 int errx (int,char*,char const*) ;
 scalar_t__ strcasecmp (char const*,char*) ;

gss_OID
select_mech(const char *mech)
{
    if (strcasecmp(mech, "krb5") == 0)
 return GSS_KRB5_MECHANISM;
    else if (strcasecmp(mech, "spnego") == 0)
 return GSS_SPNEGO_MECHANISM;
    else if (strcasecmp(mech, "no-oid") == 0)
 return GSS_C_NO_OID;
    else
 errx (1, "Unknown mechanism '%s' (spnego, krb5, no-oid)", mech);
}
