
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_iconv_std_shared {int is_src_encoding; int is_dst_encoding; int is_srcs; int is_invalid; int is_use_invalid; } ;
struct _citrus_iconv_shared {struct _citrus_iconv_std_shared* ci_closure; } ;
struct _citrus_esdb {int db_invalid; int db_use_invalid; int db_len_variable; int db_variable; int db_encname; } ;


 int TAILQ_INIT (int *) ;
 int _citrus_esdb_open (struct _citrus_esdb*,char const*) ;
 int _esdb_close (struct _citrus_esdb*) ;
 int _stdenc_close (int ) ;
 int _stdenc_open (int *,int ,int ,int ) ;
 int errno ;
 int free (struct _citrus_iconv_std_shared*) ;
 struct _citrus_iconv_std_shared* malloc (int) ;
 int open_srcs (int *,struct _citrus_esdb*,struct _citrus_esdb*) ;

__attribute__((used)) static int

_citrus_iconv_std_iconv_init_shared(struct _citrus_iconv_shared *ci,
    const char * __restrict src, const char * __restrict dst)
{
 struct _citrus_esdb esdbdst, esdbsrc;
 struct _citrus_iconv_std_shared *is;
 int ret;

 is = malloc(sizeof(*is));
 if (is == ((void*)0)) {
  ret = errno;
  goto err0;
 }
 ret = _citrus_esdb_open(&esdbsrc, src);
 if (ret)
  goto err1;
 ret = _citrus_esdb_open(&esdbdst, dst);
 if (ret)
  goto err2;
 ret = _stdenc_open(&is->is_src_encoding, esdbsrc.db_encname,
     esdbsrc.db_variable, esdbsrc.db_len_variable);
 if (ret)
  goto err3;
 ret = _stdenc_open(&is->is_dst_encoding, esdbdst.db_encname,
     esdbdst.db_variable, esdbdst.db_len_variable);
 if (ret)
  goto err4;
 is->is_use_invalid = esdbdst.db_use_invalid;
 is->is_invalid = esdbdst.db_invalid;

 TAILQ_INIT(&is->is_srcs);
 ret = open_srcs(&is->is_srcs, &esdbsrc, &esdbdst);
 if (ret)
  goto err5;

 _esdb_close(&esdbsrc);
 _esdb_close(&esdbdst);
 ci->ci_closure = is;

 return (0);

err5:
 _stdenc_close(is->is_dst_encoding);
err4:
 _stdenc_close(is->is_src_encoding);
err3:
 _esdb_close(&esdbdst);
err2:
 _esdb_close(&esdbsrc);
err1:
 free(is);
err0:
 return (ret);
}
