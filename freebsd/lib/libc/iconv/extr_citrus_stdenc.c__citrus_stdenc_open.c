
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_stdenc_ops {int (* eo_init ) (struct _citrus_stdenc*,void const*,size_t,int *) ;int * eo_get_state_desc; int * eo_wctomb; int * eo_mbtowc; int * eo_cstomb; int * eo_mbtocs; int * eo_init_state; int * eo_uninit; } ;
struct _citrus_stdenc {int * ce_traits; struct _citrus_stdenc_ops* ce_ops; int * ce_module; int * ce_closure; } ;
typedef int (* _citrus_stdenc_getops_t ) (struct _citrus_stdenc_ops*,int) ;
typedef int * _citrus_module_t ;


 int EINVAL ;
 int _CITRUS_DEFAULT_STDENC_NAME ;
 scalar_t__ _citrus_find_getops (int *,char const*,char*) ;
 int _citrus_load_module (int **,char const*) ;
 int _citrus_stdenc_close (struct _citrus_stdenc*) ;
 struct _citrus_stdenc _citrus_stdenc_default ;
 int errno ;
 void* malloc (int) ;
 int strcmp (char const*,int ) ;
 int stub1 (struct _citrus_stdenc_ops*,int) ;
 int stub2 (struct _citrus_stdenc*,void const*,size_t,int *) ;

int
_citrus_stdenc_open(struct _citrus_stdenc * __restrict * __restrict rce,
    char const * __restrict encname, const void * __restrict variable,
    size_t lenvar)
{
 struct _citrus_stdenc *ce;
 _citrus_module_t handle;
 _citrus_stdenc_getops_t getops;
 int ret;

 if (!strcmp(encname, _CITRUS_DEFAULT_STDENC_NAME)) {
  *rce = &_citrus_stdenc_default;
  return (0);
 }
 ce = malloc(sizeof(*ce));
 if (ce == ((void*)0)) {
  ret = errno;
  goto bad;
 }
 ce->ce_ops = ((void*)0);
 ce->ce_closure = ((void*)0);
 ce->ce_module = ((void*)0);
 ce->ce_traits = ((void*)0);

 ret = _citrus_load_module(&handle, encname);
 if (ret)
  goto bad;

 ce->ce_module = handle;

 getops = (_citrus_stdenc_getops_t)_citrus_find_getops(ce->ce_module,
     encname, "stdenc");
 if (getops == ((void*)0)) {
  ret = EINVAL;
  goto bad;
 }

 ce->ce_ops = (struct _citrus_stdenc_ops *)malloc(sizeof(*ce->ce_ops));
 if (ce->ce_ops == ((void*)0)) {
  ret = errno;
  goto bad;
 }

 ret = (*getops)(ce->ce_ops, sizeof(*ce->ce_ops));
 if (ret)
  goto bad;


 if (ce->ce_ops->eo_init == ((void*)0) ||
     ce->ce_ops->eo_uninit == ((void*)0) ||
     ce->ce_ops->eo_init_state == ((void*)0) ||
     ce->ce_ops->eo_mbtocs == ((void*)0) ||
     ce->ce_ops->eo_cstomb == ((void*)0) ||
     ce->ce_ops->eo_mbtowc == ((void*)0) ||
     ce->ce_ops->eo_wctomb == ((void*)0) ||
     ce->ce_ops->eo_get_state_desc == ((void*)0)) {
  ret = EINVAL;
  goto bad;
 }


 ce->ce_traits = malloc(sizeof(*ce->ce_traits));
 if (ce->ce_traits == ((void*)0)) {
  ret = errno;
  goto bad;
 }

 ret = (*ce->ce_ops->eo_init)(ce, variable, lenvar, ce->ce_traits);
 if (ret)
  goto bad;

 *rce = ce;

 return (0);

bad:
 _citrus_stdenc_close(ce);
 return (ret);
}
