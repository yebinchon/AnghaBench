
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_std_shared {int is_srcs; int is_dst_encoding; int is_src_encoding; } ;
struct _citrus_iconv_shared {struct _citrus_iconv_std_shared* ci_closure; } ;


 int _stdenc_close (int ) ;
 int close_srcs (int *) ;
 int free (struct _citrus_iconv_std_shared*) ;

__attribute__((used)) static void
_citrus_iconv_std_iconv_uninit_shared(struct _citrus_iconv_shared *ci)
{
 struct _citrus_iconv_std_shared *is = ci->ci_closure;

 if (is == ((void*)0))
  return;

 _stdenc_close(is->is_src_encoding);
 _stdenc_close(is->is_dst_encoding);
 close_srcs(&is->is_srcs);
 free(is);
}
