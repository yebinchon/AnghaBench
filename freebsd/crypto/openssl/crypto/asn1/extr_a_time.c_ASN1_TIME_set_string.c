
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_TIME ;


 int ASN1_GENERALIZEDTIME_set_string (int *,char const*) ;
 scalar_t__ ASN1_UTCTIME_set_string (int *,char const*) ;

int ASN1_TIME_set_string(ASN1_TIME *s, const char *str)
{

    if (ASN1_UTCTIME_set_string(s, str))
        return 1;
    return ASN1_GENERALIZEDTIME_set_string(s, str);
}
