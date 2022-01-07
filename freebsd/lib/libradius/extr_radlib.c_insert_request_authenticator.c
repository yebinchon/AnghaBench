
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_server {int * secret; } ;
struct rad_handle {size_t srv; size_t out_len; int * out; int * in; struct rad_server* servers; } ;
typedef int MD5_CTX ;


 size_t LEN_AUTH ;
 int MD5Final (int *,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,int *,size_t) ;
 size_t POS_ATTRS ;
 size_t POS_AUTH ;
 size_t POS_CODE ;
 size_t strlen (int *) ;

__attribute__((used)) static void
insert_request_authenticator(struct rad_handle *h, int resp)
{
 MD5_CTX ctx;
 const struct rad_server *srvp;

 srvp = &h->servers[h->srv];


 MD5Init(&ctx);
 MD5Update(&ctx, &h->out[POS_CODE], POS_AUTH - POS_CODE);
 if (resp)
     MD5Update(&ctx, &h->in[POS_AUTH], LEN_AUTH);
 else
     MD5Update(&ctx, &h->out[POS_AUTH], LEN_AUTH);
 MD5Update(&ctx, &h->out[POS_ATTRS], h->out_len - POS_ATTRS);
 MD5Update(&ctx, srvp->secret, strlen(srvp->secret));
 MD5Final(&h->out[POS_AUTH], &ctx);
}
