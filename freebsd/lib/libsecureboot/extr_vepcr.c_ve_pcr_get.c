
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ssize_t ;
struct TYPE_4__ {int vtable; } ;
struct TYPE_3__ {int (* out ) (int *,unsigned char*) ;} ;


 TYPE_2__ pcr_ctx ;
 size_t pcr_hlen ;
 TYPE_1__* pcr_md ;
 int stub1 (int *,unsigned char*) ;

ssize_t
ve_pcr_get(unsigned char *buf, size_t sz)
{
 if (!pcr_md)
  return (-1);
 if (sz < pcr_hlen)
  return (-1);
 pcr_md->out(&pcr_ctx.vtable, buf);
 return (pcr_hlen);
}
