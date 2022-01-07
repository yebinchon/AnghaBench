
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* nvp_name; } ;
typedef TYPE_1__ nvpair_t ;


 int NVPAIR_ASSERT (TYPE_1__ const*) ;

const char *
nvpair_name(const nvpair_t *nvp)
{

 NVPAIR_ASSERT(nvp);

 return (nvp->nvp_name);
}
