
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {scalar_t__ out; } ;
typedef int ssize_t ;


 size_t LEN_AUTH ;
 scalar_t__ POS_AUTH ;
 int memcpy (char*,scalar_t__,size_t) ;

ssize_t
rad_request_authenticator(struct rad_handle *h, char *buf, size_t len)
{
 if (len < LEN_AUTH)
  return (-1);
 memcpy(buf, h->out + POS_AUTH, LEN_AUTH);
 if (len > LEN_AUTH)
  buf[LEN_AUTH] = '\0';
 return (LEN_AUTH);
}
