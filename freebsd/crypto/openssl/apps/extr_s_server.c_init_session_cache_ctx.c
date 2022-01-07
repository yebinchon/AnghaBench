
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int SSL_CTX_sess_set_get_cb (int *,int ) ;
 int SSL_CTX_sess_set_new_cb (int *,int ) ;
 int SSL_CTX_sess_set_remove_cb (int *,int ) ;
 int SSL_CTX_set_session_cache_mode (int *,int) ;
 int SSL_SESS_CACHE_NO_INTERNAL ;
 int SSL_SESS_CACHE_SERVER ;
 int add_session ;
 int del_session ;
 int get_session ;

__attribute__((used)) static void init_session_cache_ctx(SSL_CTX *sctx)
{
    SSL_CTX_set_session_cache_mode(sctx,
                                   SSL_SESS_CACHE_NO_INTERNAL |
                                   SSL_SESS_CACHE_SERVER);
    SSL_CTX_sess_set_new_cb(sctx, add_session);
    SSL_CTX_sess_set_get_cb(sctx, get_session);
    SSL_CTX_sess_set_remove_cb(sctx, del_session);
}
