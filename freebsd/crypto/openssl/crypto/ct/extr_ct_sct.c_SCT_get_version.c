
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sct_version_t ;
struct TYPE_3__ {int version; } ;
typedef TYPE_1__ SCT ;



sct_version_t SCT_get_version(const SCT *sct)
{
    return sct->version;
}
