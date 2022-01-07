
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pd_handle; scalar_t__ pd_alias; } ;
typedef TYPE_1__ pdinfo_t ;
typedef scalar_t__ EFI_HANDLE ;



__attribute__((used)) static bool
same_handle(pdinfo_t *pd, EFI_HANDLE h)
{

 return (pd->pd_handle == h || pd->pd_alias == h);
}
