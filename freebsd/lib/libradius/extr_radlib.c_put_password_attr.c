
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rad_handle {scalar_t__ pass_pos; scalar_t__ out_len; size_t pass_len; scalar_t__ pass; } ;


 size_t PASSSIZE ;
 int clear_password (struct rad_handle*) ;
 int generr (struct rad_handle*,char*) ;
 int memcpy (scalar_t__,void const*,size_t) ;
 int memset (scalar_t__,int ,int) ;
 int put_raw_attr (struct rad_handle*,int,scalar_t__,int) ;

__attribute__((used)) static int
put_password_attr(struct rad_handle *h, int type, const void *value, size_t len)
{
 int padded_len;
 int pad_len;

 if (h->pass_pos != 0) {
  generr(h, "Multiple User-Password attributes specified");
  return -1;
 }
 if (len > PASSSIZE)
  len = PASSSIZE;
 padded_len = len == 0 ? 16 : (len+15) & ~0xf;
 pad_len = padded_len - len;





 clear_password(h);
 put_raw_attr(h, type, h->pass, padded_len);
 h->pass_pos = h->out_len - padded_len;


 memcpy(h->pass, value, len);
 h->pass_len = len;
 memset(h->pass + len, 0, pad_len);
 return 0;
}
