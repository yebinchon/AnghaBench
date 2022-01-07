
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned char* data; scalar_t__ flags; int length; int type; } ;
typedef TYPE_1__ ASN1_GENERALIZEDTIME ;


 int ASN1_GENERALIZEDTIME_check (TYPE_1__*) ;
 int ASN1_STRING_copy (TYPE_1__*,TYPE_1__*) ;
 int V_ASN1_GENERALIZEDTIME ;
 int strlen (char const*) ;

int ASN1_GENERALIZEDTIME_set_string(ASN1_GENERALIZEDTIME *s, const char *str)
{
    ASN1_GENERALIZEDTIME t;

    t.type = V_ASN1_GENERALIZEDTIME;
    t.length = strlen(str);
    t.data = (unsigned char *)str;
    t.flags = 0;

    if (!ASN1_GENERALIZEDTIME_check(&t))
        return 0;

    if (s != ((void*)0) && !ASN1_STRING_copy(s, &t))
        return 0;

    return 1;
}
