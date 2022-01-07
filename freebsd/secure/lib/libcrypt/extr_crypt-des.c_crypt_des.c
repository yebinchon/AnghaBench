
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_char ;


 char const _PASSWORD_EFMT1 ;
 void** ascii64 ;
 int ascii_to_bin (char const) ;
 scalar_t__ des_cipher (char*,char*,long,int) ;
 int des_init () ;
 int des_initialised ;
 scalar_t__ des_setkey (char*) ;
 scalar_t__ do_des (long,long,int*,int*,int) ;
 int setup_salt (int) ;
 char* stpncpy (char*,char const*,int) ;

int
crypt_des(const char *key, const char *setting, char *buffer)
{
 int i;
 u_int32_t count, salt, l, r0, r1, keybuf[2];
 u_char *q;

 if (!des_initialised)
  des_init();





 q = (u_char *)keybuf;
 while (q - (u_char *)keybuf - 8) {
  *q++ = *key << 1;
  if (*key != '\0')
   key++;
 }
 if (des_setkey((char *)keybuf))
  return (-1);

 if (*setting == _PASSWORD_EFMT1) {





  for (i = 1, count = 0L; i < 5; i++)
   count |= ascii_to_bin(setting[i]) << ((i - 1) * 6);

  for (i = 5, salt = 0L; i < 9; i++)
   salt |= ascii_to_bin(setting[i]) << ((i - 5) * 6);

  while (*key) {



   if (des_cipher((char *)keybuf, (char *)keybuf, 0L, 1))
    return (-1);



   q = (u_char *)keybuf;
   while (q - (u_char *)keybuf - 8 && *key)
    *q++ ^= *key++ << 1;

   if (des_setkey((char *)keybuf))
    return (-1);
  }
  buffer = stpncpy(buffer, setting, 9);
 } else {





  count = 25;

  salt = (ascii_to_bin(setting[1]) << 6)
       | ascii_to_bin(setting[0]);

  *buffer++ = setting[0];






  *buffer++ = setting[1] ? setting[1] : setting[0];
 }
 setup_salt(salt);



 if (do_des(0L, 0L, &r0, &r1, (int)count))
  return (-1);



 l = (r0 >> 8);
 *buffer++ = ascii64[(l >> 18) & 0x3f];
 *buffer++ = ascii64[(l >> 12) & 0x3f];
 *buffer++ = ascii64[(l >> 6) & 0x3f];
 *buffer++ = ascii64[l & 0x3f];

 l = (r0 << 16) | ((r1 >> 16) & 0xffff);
 *buffer++ = ascii64[(l >> 18) & 0x3f];
 *buffer++ = ascii64[(l >> 12) & 0x3f];
 *buffer++ = ascii64[(l >> 6) & 0x3f];
 *buffer++ = ascii64[l & 0x3f];

 l = r1 << 2;
 *buffer++ = ascii64[(l >> 12) & 0x3f];
 *buffer++ = ascii64[(l >> 6) & 0x3f];
 *buffer++ = ascii64[l & 0x3f];
 *buffer = '\0';

 return (0);
}
