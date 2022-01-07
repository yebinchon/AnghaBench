
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;


 int ENOMEM ;
 int free (unsigned char*) ;
 unsigned char* malloc (int) ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static krb5_error_code
rr13(unsigned char *buf, size_t len)
{
    unsigned char *tmp;
    int bytes = (len + 7) / 8;
    int i;
    if(len == 0)
 return 0;
    {
 const int bits = 13 % len;
 const int lbit = len % 8;

 tmp = malloc(bytes);
 if (tmp == ((void*)0))
     return ENOMEM;
 memcpy(tmp, buf, bytes);
 if(lbit) {

     tmp[bytes - 1] &= 0xff << (8 - lbit);
     for(i = lbit; i < 8; i += len)
  tmp[bytes - 1] |= buf[0] >> i;
 }
 for(i = 0; i < bytes; i++) {
     int bb;
     int b1, s1, b2, s2;

     bb = 8 * i - bits;
     while(bb < 0)
  bb += len;

     b1 = bb / 8;
     s1 = bb % 8;

     if(bb + 8 > bytes * 8)

  s2 = (len + 8 - s1) % 8;
     else
  s2 = 8 - s1;
     b2 = (b1 + 1) % bytes;
     buf[i] = (tmp[b1] << s1) | (tmp[b2] >> s2);
 }
 free(tmp);
    }
    return 0;
}
