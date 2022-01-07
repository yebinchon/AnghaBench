
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct rad_handle {scalar_t__* out; scalar_t__ authentic_pos; scalar_t__ out_len; } ;
typedef int md_zero ;


 int MD5_DIGEST_LENGTH ;
 size_t POS_CODE ;
 scalar_t__ RAD_ACCOUNTING_REQUEST ;
 int RAD_MESSAGE_AUTHENTIC ;
 int generr (struct rad_handle*,char*) ;
 int memset (int *,int ,int) ;
 int put_raw_attr (struct rad_handle*,int ,int *,int) ;

int
rad_put_message_authentic(struct rad_handle *h)
{
 generr(h, "Message Authenticator not supported,"
     " please recompile libradius with SSL support");
 return -1;

}
