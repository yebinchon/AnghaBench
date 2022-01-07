
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_iconv_shared {TYPE_1__* ci_ops; } ;
struct _citrus_iconv {struct _citrus_iconv_shared* cv_shared; } ;
typedef int path ;
struct TYPE_2__ {int (* io_init_context ) (struct _citrus_iconv*) ;} ;


 int CODESET ;
 int EINVAL ;
 int PATH_MAX ;
 char* _CITRUS_ICONV_ALIAS ;
 int _LOOKUP_CASE_IGNORE ;
 char* _PATH_ICONV ;
 char const* _lookup_alias (char*,char const*,char*,size_t,int ) ;
 int errno ;
 int free (struct _citrus_iconv*) ;
 int get_shared (struct _citrus_iconv_shared**,char*,char*) ;
 int init_cache () ;
 struct _citrus_iconv* malloc (int) ;
 char* nl_langinfo (int ) ;
 int release_shared (struct _citrus_iconv_shared*) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int * strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (char*,char const*,size_t) ;
 int stub1 (struct _citrus_iconv*) ;

int
_citrus_iconv_open(struct _citrus_iconv * __restrict * __restrict rcv,
    const char * __restrict src, const char * __restrict dst)
{
 struct _citrus_iconv *cv = ((void*)0);
 struct _citrus_iconv_shared *ci = ((void*)0);
 char realdst[PATH_MAX], realsrc[PATH_MAX];



 int ret;

 init_cache();


 if ((strcmp(src, "") == 0) || (strcmp(src, "char") == 0))
  src = nl_langinfo(CODESET);
 if ((strcmp(dst, "") == 0) || (strcmp(dst, "char") == 0))
  dst = nl_langinfo(CODESET);
 strlcpy(realsrc, src, (size_t)PATH_MAX);
 strlcpy(realdst, dst, (size_t)PATH_MAX);



 if (strchr(realsrc, '/') != ((void*)0) || strchr(realdst, '/'))
  return (EINVAL);


 ret = get_shared(&ci, realsrc, realdst);
 if (ret)
  return (ret);


 if (*rcv == ((void*)0)) {
  cv = malloc(sizeof(*cv));
  if (cv == ((void*)0)) {
   ret = errno;
   release_shared(ci);
   return (ret);
  }
  *rcv = cv;
 }
 (*rcv)->cv_shared = ci;
 ret = (*ci->ci_ops->io_init_context)(*rcv);
 if (ret) {
  release_shared(ci);
  free(cv);
  return (ret);
 }
 return (0);
}
