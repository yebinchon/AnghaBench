
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u8 ;
typedef int skip_buf ;
typedef int Arc4 ;


 int wc_Arc4Process (int *,unsigned char*,unsigned char*,size_t) ;
 int wc_Arc4SetKey (int *,unsigned char const*,size_t) ;

int rc4_skip(const u8 *key, size_t keylen, size_t skip, u8 *data,
      size_t data_len)
{

 Arc4 arc4;
 unsigned char skip_buf[16];

 wc_Arc4SetKey(&arc4, key, keylen);

 while (skip >= sizeof(skip_buf)) {
  size_t len = skip;

  if (len > sizeof(skip_buf))
   len = sizeof(skip_buf);
  wc_Arc4Process(&arc4, skip_buf, skip_buf, len);
  skip -= len;
 }

 wc_Arc4Process(&arc4, data, data, data_len);

 return 0;



}
