
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct _citrus_iconv_std_shared {int is_invalid; scalar_t__ is_use_invalid; } ;
struct _citrus_iconv_std_context {int sc_dst_encoding; int sc_src_encoding; } ;
struct _citrus_iconv {TYPE_1__* cv_shared; struct _citrus_iconv_std_context* cv_closure; } ;
typedef int _index_t ;
typedef int _csid_t ;
struct TYPE_2__ {scalar_t__ ci_ilseq_invalid; int ci_hooks; int ci_discard_ilseq; struct _citrus_iconv_std_shared* ci_closure; } ;


 int EILSEQ ;
 int EINVAL ;
 int E_NO_CORRESPONDING_CHAR ;
 int _CITRUS_ICONV_F_HIDE_INVALID ;


 int cstombx (int *,char*,size_t,int ,int ,size_t*,int ) ;
 int do_conv (struct _citrus_iconv_std_shared const*,int *,int *) ;
 int get_state_desc_gen (int *,int*) ;
 int init_encoding_state (int *) ;
 int mbtocsx (int *,int *,int *,char**,size_t,size_t*,int ) ;
 int put_state_resetx (int *,char*,size_t,size_t*) ;
 int restore_encoding_state (int *) ;
 int save_encoding_state (int *) ;
 int wctombx (int *,char*,size_t,int ,size_t*,int ) ;

__attribute__((used)) static int
_citrus_iconv_std_iconv_convert(struct _citrus_iconv * __restrict cv,
    char * __restrict * __restrict in, size_t * __restrict inbytes,
    char * __restrict * __restrict out, size_t * __restrict outbytes,
    uint32_t flags, size_t * __restrict invalids)
{
 const struct _citrus_iconv_std_shared *is = cv->cv_shared->ci_closure;
 struct _citrus_iconv_std_context *sc = cv->cv_closure;
 _csid_t csid;
 _index_t idx;
 char *tmpin;
 size_t inval, szrin, szrout;
 int ret, state = 0;

 inval = 0;
 if (in == ((void*)0) || *in == ((void*)0)) {

  if (out != ((void*)0) && *out != ((void*)0)) {

   save_encoding_state(&sc->sc_src_encoding);
   save_encoding_state(&sc->sc_dst_encoding);
   szrout = 0;

   ret = put_state_resetx(&sc->sc_dst_encoding,
       *out, *outbytes, &szrout);
   if (ret)
    goto err;

   if (szrout == (size_t)-2) {

    ret = EINVAL;
    goto err;
   }
   *out += szrout;
   *outbytes -= szrout;
  } else

   init_encoding_state(&sc->sc_dst_encoding);
  init_encoding_state(&sc->sc_src_encoding);
  *invalids = 0;
  return (0);
 }


 for (;;) {
  if (*inbytes == 0) {
   ret = get_state_desc_gen(&sc->sc_src_encoding, &state);
   if (state == 129 ||
       state == 128)
    break;
  }


  save_encoding_state(&sc->sc_src_encoding);
  save_encoding_state(&sc->sc_dst_encoding);


  tmpin = *in;
  szrin = szrout = 0;
  ret = mbtocsx(&sc->sc_src_encoding, &csid, &idx, &tmpin,
      *inbytes, &szrin, cv->cv_shared->ci_hooks);
  if (ret)
   goto err;

  if (szrin == (size_t)-2) {

   ret = get_state_desc_gen(&sc->sc_src_encoding, &state);
   if (ret) {
    ret = EINVAL;
    goto err;
   }
   switch (state) {
   case 129:
   case 128:

    goto next;
   }
   ret = EINVAL;
   goto err;
  }

  ret = do_conv(is, &csid, &idx);
  if (ret) {
   if (ret == E_NO_CORRESPONDING_CHAR) {






    if (cv->cv_shared->ci_ilseq_invalid != 0) {
     ret = EILSEQ;
     goto err;
    }
    inval++;
    szrout = 0;
    if ((((flags & _CITRUS_ICONV_F_HIDE_INVALID) == 0) &&
        !cv->cv_shared->ci_discard_ilseq) &&
        is->is_use_invalid) {
     ret = wctombx(&sc->sc_dst_encoding,
         *out, *outbytes, is->is_invalid,
         &szrout, cv->cv_shared->ci_hooks);
     if (ret)
      goto err;
    }
    goto next;
   } else
    goto err;
  }

  ret = cstombx(&sc->sc_dst_encoding,
      *out, *outbytes, csid, idx, &szrout,
      cv->cv_shared->ci_hooks);
  if (ret)
   goto err;
next:
  *inbytes -= tmpin-*in;
  *in = tmpin;
  *outbytes -= szrout;
  *out += szrout;
 }
 *invalids = inval;

 return (0);

err:
 restore_encoding_state(&sc->sc_src_encoding);
 restore_encoding_state(&sc->sc_dst_encoding);
 *invalids = inval;

 return (ret);
}
