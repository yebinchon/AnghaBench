
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zError__ft ;
typedef scalar_t__ inflate_ft ;
typedef scalar_t__ inflateInit__ft ;
typedef scalar_t__ inflateEnd_ft ;
typedef scalar_t__ deflate_ft ;
typedef scalar_t__ deflateInit__ft ;
typedef scalar_t__ deflateEnd_ft ;
typedef scalar_t__ compress_ft ;
typedef int COMP_METHOD ;


 scalar_t__ DSO_bind_func (int *,char*) ;
 int * DSO_load (int *,int ,int *,int ) ;
 int LIBZ ;
 int OPENSSL_INIT_ZLIB ;
 int OPENSSL_init_crypto (int ,int *) ;
 int comp_zlib_cleanup_int () ;
 scalar_t__ p_compress ;
 scalar_t__ p_deflate ;
 scalar_t__ p_deflateEnd ;
 scalar_t__ p_deflateInit_ ;
 scalar_t__ p_inflate ;
 scalar_t__ p_inflateEnd ;
 scalar_t__ p_inflateInit_ ;
 scalar_t__ p_zError ;
 int * zlib_dso ;
 scalar_t__ zlib_loaded ;
 int zlib_method_nozlib ;
 int zlib_stateful_method ;

COMP_METHOD *COMP_zlib(void)
{
    COMP_METHOD *meth = &zlib_method_nozlib;
    return meth;
}
