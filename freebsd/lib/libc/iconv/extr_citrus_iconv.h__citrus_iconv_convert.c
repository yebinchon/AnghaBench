
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct _citrus_iconv {TYPE_2__* cv_shared; } ;
struct TYPE_4__ {TYPE_1__* ci_ops; } ;
struct TYPE_3__ {int (* io_convert ) (struct _citrus_iconv*,char**,size_t*,char**,size_t*,int ,size_t*) ;} ;


 int stub1 (struct _citrus_iconv*,char**,size_t*,char**,size_t*,int ,size_t*) ;

__attribute__((used)) static __inline int
_citrus_iconv_convert(struct _citrus_iconv * __restrict cv,
    char * __restrict * __restrict in, size_t * __restrict inbytes,
    char * __restrict * __restrict out, size_t * __restrict outbytes,
    uint32_t flags, size_t * __restrict nresults)
{

 return (*cv->cv_shared->ci_ops->io_convert)(cv, in, inbytes, out,
     outbytes, flags, nresults);
}
