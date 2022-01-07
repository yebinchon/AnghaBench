
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _asn1_check_infinite_end (unsigned char const**,long) ;

int ASN1_check_infinite_end(unsigned char **p, long len)
{
    return _asn1_check_infinite_end((const unsigned char **)p, len);
}
