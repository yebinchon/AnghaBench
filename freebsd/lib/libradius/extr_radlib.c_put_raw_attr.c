
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {int out_len; int* out; } ;


 int MSGSIZE ;
 int generr (struct rad_handle*,char*) ;
 int memcpy (size_t*,void const*,size_t) ;

__attribute__((used)) static int
put_raw_attr(struct rad_handle *h, int type, const void *value, size_t len)
{
 if (len > 253) {
  generr(h, "Attribute too long");
  return -1;
 }
 if (h->out_len + 2 + len > MSGSIZE) {
  generr(h, "Maximum message length exceeded");
  return -1;
 }
 h->out[h->out_len++] = type;
 h->out[h->out_len++] = len + 2;
 memcpy(&h->out[h->out_len], value, len);
 h->out_len += len;
 return 0;
}
