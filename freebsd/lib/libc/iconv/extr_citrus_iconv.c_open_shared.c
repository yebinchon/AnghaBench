
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _citrus_iconv_shared {TYPE_1__* ci_ops; int * ci_module; void* ci_convname; int * ci_closure; } ;
typedef int (* _citrus_iconv_getops_t ) (TYPE_1__*) ;
struct TYPE_3__ {int (* io_init_shared ) (struct _citrus_iconv_shared*,char const*,char const*) ;int * io_convert; int * io_uninit_context; int * io_init_context; int * io_uninit_shared; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ _citrus_find_getops (int *,char const*,char*) ;
 int _citrus_load_module (int **,char const*) ;
 int close_shared (struct _citrus_iconv_shared*) ;
 int errno ;
 void* malloc (int) ;
 int memcpy (void*,char const*,size_t) ;
 scalar_t__ strcmp (char const*,char const*) ;
 size_t strlen (char const*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (struct _citrus_iconv_shared*,char const*,char const*) ;

__attribute__((used)) static __inline int
open_shared(struct _citrus_iconv_shared * __restrict * __restrict rci,
    const char * __restrict convname, const char * __restrict src,
    const char * __restrict dst)
{
 struct _citrus_iconv_shared *ci;
 _citrus_iconv_getops_t getops;
 const char *module;
 size_t len_convname;
 int ret;
 module = "iconv_std";



 len_convname = strlen(convname);
 ci = malloc(sizeof(*ci) + len_convname + 1);
 if (!ci) {
  ret = errno;
  goto err;
 }
 ci->ci_module = ((void*)0);
 ci->ci_ops = ((void*)0);
 ci->ci_closure = ((void*)0);
 ci->ci_convname = (void *)&ci[1];
 memcpy(ci->ci_convname, convname, len_convname + 1);


 ret = _citrus_load_module(&ci->ci_module, module);
 if (ret)
  goto err;


 getops = (_citrus_iconv_getops_t)_citrus_find_getops(ci->ci_module,
     module, "iconv");
 if (!getops) {
  ret = EOPNOTSUPP;
  goto err;
 }
 ci->ci_ops = malloc(sizeof(*ci->ci_ops));
 if (!ci->ci_ops) {
  ret = errno;
  goto err;
 }
 ret = (*getops)(ci->ci_ops);
 if (ret)
  goto err;

 if (ci->ci_ops->io_init_shared == ((void*)0) ||
     ci->ci_ops->io_uninit_shared == ((void*)0) ||
     ci->ci_ops->io_init_context == ((void*)0) ||
     ci->ci_ops->io_uninit_context == ((void*)0) ||
     ci->ci_ops->io_convert == ((void*)0)) {
  ret = EINVAL;
  goto err;
 }


 ret = (*ci->ci_ops->io_init_shared)(ci, src, dst);
 if (ret)
  goto err;

 *rci = ci;

 return (0);
err:
 close_shared(ci);
 return (ret);
}
