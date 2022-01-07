
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct _citrus_iconv_std_shared {int is_dst_encoding; int is_src_encoding; } ;
struct _citrus_iconv_std_context {int sc_dst_encoding; int sc_src_encoding; } ;
struct _citrus_iconv {void* cv_closure; TYPE_1__* cv_shared; } ;
struct TYPE_2__ {struct _citrus_iconv_std_shared* ci_closure; } ;


 size_t _stdenc_get_state_size (int ) ;
 int errno ;
 int init_encoding (int *,int ,char*,char*) ;
 struct _citrus_iconv_std_context* malloc (size_t) ;

__attribute__((used)) static int
_citrus_iconv_std_iconv_init_context(struct _citrus_iconv *cv)
{
 const struct _citrus_iconv_std_shared *is = cv->cv_shared->ci_closure;
 struct _citrus_iconv_std_context *sc;
 char *ptr;
 size_t sz, szpsdst, szpssrc;

 szpssrc = _stdenc_get_state_size(is->is_src_encoding);
 szpsdst = _stdenc_get_state_size(is->is_dst_encoding);

 sz = (szpssrc + szpsdst)*2 + sizeof(struct _citrus_iconv_std_context);
 sc = malloc(sz);
 if (sc == ((void*)0))
  return (errno);

 ptr = (char *)&sc[1];
 if (szpssrc > 0)
  init_encoding(&sc->sc_src_encoding, is->is_src_encoding,
      ptr, ptr+szpssrc);
 else
  init_encoding(&sc->sc_src_encoding, is->is_src_encoding,
      ((void*)0), ((void*)0));
 ptr += szpssrc*2;
 if (szpsdst > 0)
  init_encoding(&sc->sc_dst_encoding, is->is_dst_encoding,
      ptr, ptr+szpsdst);
 else
  init_encoding(&sc->sc_dst_encoding, is->is_dst_encoding,
      ((void*)0), ((void*)0));

 cv->cv_closure = (void *)sc;

 return (0);
}
