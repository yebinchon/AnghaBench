
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_iconv {TYPE_1__* cv_shared; } ;
typedef int iconv_t ;
struct TYPE_2__ {int ci_ilseq_invalid; int * ci_hooks; int ci_discard_ilseq; } ;


 int EINVAL ;
 int ENOENT ;
 int ENOMEM ;
 int _citrus_iconv_open (struct _citrus_iconv**,char const*,char const*) ;
 int errno ;
 int free (char*) ;
 int strcasestr (char const*,char*) ;
 char* strndup (char const*,int) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static iconv_t
__bsd___iconv_open(const char *out, const char *in, struct _citrus_iconv *handle)
{
 const char *out_slashes;
 char *out_noslashes;
 int ret;







 out_slashes = strstr(out, "//");
 if (out_slashes != ((void*)0)) {
  out_noslashes = strndup(out, out_slashes - out);
  if (out_noslashes == ((void*)0)) {
   errno = ENOMEM;
   return ((iconv_t)-1);
  }
  ret = _citrus_iconv_open(&handle, in, out_noslashes);
  free(out_noslashes);
 } else {
  ret = _citrus_iconv_open(&handle, in, out);
 }

 if (ret) {
  errno = ret == ENOENT ? EINVAL : ret;
  return ((iconv_t)-1);
 }

 handle->cv_shared->ci_discard_ilseq = strcasestr(out, "//IGNORE");
 handle->cv_shared->ci_ilseq_invalid = 0;
 handle->cv_shared->ci_hooks = ((void*)0);

 return ((iconv_t)(void *)handle);
}
