
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int hostflags; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;



unsigned int X509_VERIFY_PARAM_get_hostflags(const X509_VERIFY_PARAM *param)
{
    return param->hostflags;
}
