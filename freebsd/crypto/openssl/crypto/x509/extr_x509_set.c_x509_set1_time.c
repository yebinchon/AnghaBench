
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const ASN1_TIME ;


 int const* ASN1_STRING_dup (int const*) ;
 int ASN1_TIME_free (int const*) ;

int x509_set1_time(ASN1_TIME **ptm, const ASN1_TIME *tm)
{
    ASN1_TIME *in;
    in = *ptm;
    if (in != tm) {
        in = ASN1_STRING_dup(tm);
        if (in != ((void*)0)) {
            ASN1_TIME_free(*ptm);
            *ptm = in;
        }
    }
    return (in != ((void*)0));
}
