
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef size_t u_char ;
typedef int title ;
struct sshkey {int dummy; } ;
typedef int hash ;


 int FLDSIZE_X ;
 int FLDSIZE_Y ;
 int MAXIMUM (int,int ) ;
 size_t MINIMUM (size_t,size_t) ;
 char* calloc (int,int) ;
 int memcpy (char*,char*,size_t) ;
 int memset (size_t**,int ,int) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int sshkey_size (struct sshkey const*) ;
 char* sshkey_type (struct sshkey const*) ;
 int strlen (char*) ;

__attribute__((used)) static char *
fingerprint_randomart(const char *alg, u_char *dgst_raw, size_t dgst_raw_len,
    const struct sshkey *k)
{




 char *augmentation_string = " .o+=*BOX@%&#/^SE";
 char *retval, *p, title[FLDSIZE_X], hash[FLDSIZE_X];
 u_char field[FLDSIZE_X][FLDSIZE_Y];
 size_t i, tlen, hlen;
 u_int b;
 int x, y, r;
 size_t len = strlen(augmentation_string) - 1;

 if ((retval = calloc((FLDSIZE_X + 3), (FLDSIZE_Y + 2))) == ((void*)0))
  return ((void*)0);


 memset(field, 0, FLDSIZE_X * FLDSIZE_Y * sizeof(char));
 x = FLDSIZE_X / 2;
 y = FLDSIZE_Y / 2;


 for (i = 0; i < dgst_raw_len; i++) {
  int input;

  input = dgst_raw[i];
  for (b = 0; b < 4; b++) {

   x += (input & 0x1) ? 1 : -1;
   y += (input & 0x2) ? 1 : -1;


   x = MAXIMUM(x, 0);
   y = MAXIMUM(y, 0);
   x = MINIMUM(x, FLDSIZE_X - 1);
   y = MINIMUM(y, FLDSIZE_Y - 1);


   if (field[x][y] < len - 2)
    field[x][y]++;
   input = input >> 2;
  }
 }


 field[FLDSIZE_X / 2][FLDSIZE_Y / 2] = len - 1;
 field[x][y] = len;


 r = snprintf(title, sizeof(title), "[%s %u]",
  sshkey_type(k), sshkey_size(k));

 if (r < 0 || r > (int)sizeof(title))
  r = snprintf(title, sizeof(title), "[%s]", sshkey_type(k));
 tlen = (r <= 0) ? 0 : strlen(title);


 r = snprintf(hash, sizeof(hash), "[%s]", alg);
 hlen = (r <= 0) ? 0 : strlen(hash);


 p = retval;
 *p++ = '+';
 for (i = 0; i < (FLDSIZE_X - tlen) / 2; i++)
  *p++ = '-';
 memcpy(p, title, tlen);
 p += tlen;
 for (i += tlen; i < FLDSIZE_X; i++)
  *p++ = '-';
 *p++ = '+';
 *p++ = '\n';


 for (y = 0; y < FLDSIZE_Y; y++) {
  *p++ = '|';
  for (x = 0; x < FLDSIZE_X; x++)
   *p++ = augmentation_string[MINIMUM(field[x][y], len)];
  *p++ = '|';
  *p++ = '\n';
 }


 *p++ = '+';
 for (i = 0; i < (FLDSIZE_X - hlen) / 2; i++)
  *p++ = '-';
 memcpy(p, hash, hlen);
 p += hlen;
 for (i += hlen; i < FLDSIZE_X; i++)
  *p++ = '-';
 *p++ = '+';

 return retval;
}
