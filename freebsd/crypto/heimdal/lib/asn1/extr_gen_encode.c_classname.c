
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t Der_class ;


 size_t ASN1_C_PRIVATE ;
 size_t ASN1_C_UNIV ;

const char *
classname(Der_class class)
{
    const char *cn[] = { "ASN1_C_UNIV", "ASN1_C_APPL",
    "ASN1_C_CONTEXT", "ASN1_C_PRIV" };
    if(class < ASN1_C_UNIV || class > ASN1_C_PRIVATE)
 return "???";
    return cn[class];
}
