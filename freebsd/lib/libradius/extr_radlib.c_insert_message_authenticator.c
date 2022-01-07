
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct rad_server {int secret; } ;
struct rad_handle {size_t srv; int authentic_pos; size_t out_len; int * out; int * in; struct rad_server* servers; } ;
typedef int HMAC_CTX ;


 int EVP_MAX_MD_SIZE ;
 int EVP_md5 () ;
 int HMAC_CTX_free (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_Final (int *,int *,int *) ;
 int HMAC_Init_ex (int *,int ,int ,int ,int *) ;
 int HMAC_Update (int *,int *,size_t) ;
 size_t LEN_AUTH ;
 size_t POS_ATTRS ;
 size_t POS_AUTH ;
 size_t POS_CODE ;
 int memcpy (int *,int *,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void
insert_message_authenticator(struct rad_handle *h, int resp)
{
}
