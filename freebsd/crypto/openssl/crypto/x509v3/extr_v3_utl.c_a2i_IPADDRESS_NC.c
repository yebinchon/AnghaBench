
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_OCTET_STRING ;


 int ASN1_OCTET_STRING_free (int *) ;
 int * ASN1_OCTET_STRING_new () ;
 int ASN1_OCTET_STRING_set (int *,unsigned char*,int) ;
 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int a2i_ipadd (unsigned char*,char*) ;
 char* strchr (char const*,char) ;

ASN1_OCTET_STRING *a2i_IPADDRESS_NC(const char *ipasc)
{
    ASN1_OCTET_STRING *ret = ((void*)0);
    unsigned char ipout[32];
    char *iptmp = ((void*)0), *p;
    int iplen1, iplen2;
    p = strchr(ipasc, '/');
    if (!p)
        return ((void*)0);
    iptmp = OPENSSL_strdup(ipasc);
    if (!iptmp)
        return ((void*)0);
    p = iptmp + (p - ipasc);
    *p++ = 0;

    iplen1 = a2i_ipadd(ipout, iptmp);

    if (!iplen1)
        goto err;

    iplen2 = a2i_ipadd(ipout + iplen1, p);

    OPENSSL_free(iptmp);
    iptmp = ((void*)0);

    if (!iplen2 || (iplen1 != iplen2))
        goto err;

    ret = ASN1_OCTET_STRING_new();
    if (ret == ((void*)0))
        goto err;
    if (!ASN1_OCTET_STRING_set(ret, ipout, iplen1 + iplen2))
        goto err;

    return ret;

 err:
    OPENSSL_free(iptmp);
    ASN1_OCTET_STRING_free(ret);
    return ((void*)0);
}
