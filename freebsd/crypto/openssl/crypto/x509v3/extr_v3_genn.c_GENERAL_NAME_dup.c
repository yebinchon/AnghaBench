
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i2d_of_void ;
typedef int d2i_of_void ;
typedef int GENERAL_NAME ;


 scalar_t__ ASN1_dup (int *,int *,char*) ;
 scalar_t__ d2i_GENERAL_NAME ;
 scalar_t__ i2d_GENERAL_NAME ;

GENERAL_NAME *GENERAL_NAME_dup(GENERAL_NAME *a)
{
    return (GENERAL_NAME *)ASN1_dup((i2d_of_void *)i2d_GENERAL_NAME,
                                    (d2i_of_void *)d2i_GENERAL_NAME,
                                    (char *)a);
}
