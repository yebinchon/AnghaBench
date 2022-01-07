
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
typedef int nvpriv_t ;
struct TYPE_3__ {int nvl_nvflag; scalar_t__ nvl_pad; scalar_t__ nvl_flag; scalar_t__ nvl_priv; int nvl_version; } ;
typedef TYPE_1__ nvlist_t ;


 int NV_UNIQUE_NAME ;
 int NV_UNIQUE_NAME_TYPE ;
 int NV_VERSION ;

__attribute__((used)) static void
nvlist_init(nvlist_t *nvl, uint32_t nvflag, nvpriv_t *priv)
{
 nvl->nvl_version = NV_VERSION;
 nvl->nvl_nvflag = nvflag & (NV_UNIQUE_NAME|NV_UNIQUE_NAME_TYPE);
 nvl->nvl_priv = (uint64_t)(uintptr_t)priv;
 nvl->nvl_flag = 0;
 nvl->nvl_pad = 0;
}
