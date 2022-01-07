
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcs {int ossa; int ofsbasgx; int ogsbasgx; int fslimit; int gslimit; scalar_t__* reserved3; scalar_t__ flags; } ;


 int EINVAL ;
 int PAGE_SIZE ;
 int nitems (scalar_t__*) ;

__attribute__((used)) static int
sgx_tcs_validate(struct tcs *tcs)
{
 int i;

 if ((tcs->flags) ||
     (tcs->ossa & (PAGE_SIZE - 1)) ||
     (tcs->ofsbasgx & (PAGE_SIZE - 1)) ||
     (tcs->ogsbasgx & (PAGE_SIZE - 1)) ||
     ((tcs->fslimit & 0xfff) != 0xfff) ||
     ((tcs->gslimit & 0xfff) != 0xfff))
  return (EINVAL);

 for (i = 0; i < nitems(tcs->reserved3); i++)
  if (tcs->reserved3[i])
   return (EINVAL);

 return (0);
}
