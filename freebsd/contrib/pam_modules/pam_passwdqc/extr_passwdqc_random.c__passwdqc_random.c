
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int random_bits; int max; } ;
typedef TYPE_1__ passwdqc_params_t ;
typedef int output ;
typedef int bytes ;


 int O_RDONLY ;
 char* SEPARATORS ;
 char** _passwdqc_wordset_4k ;
 int close (int) ;
 char* memchr (char*,char,int) ;
 int memcpy (char*,char*,int) ;
 int memset (unsigned char*,int ,int) ;
 int open (char*,int ) ;
 int read_loop (int,unsigned char*,int) ;

char *_passwdqc_random(passwdqc_params_t *params)
{
 static char output[0x100];
 int bits;
 int use_separators, count, i;
 unsigned int length;
 char *start, *end;
 int fd;
 unsigned char bytes[2];

 if (!(bits = params->random_bits))
  return ((void*)0);

 count = 1 + ((bits - 12) + 14) / 15;
 use_separators = ((bits + 11) / 12 != count);

 length = count * 7 - 1;
 if (length >= sizeof(output) || (int)length > params->max)
  return ((void*)0);

 if ((fd = open("/dev/urandom", O_RDONLY)) < 0) return ((void*)0);

 length = 0;
 do {
  if (read_loop(fd, bytes, sizeof(bytes)) != sizeof(bytes)) {
   close(fd);
   return ((void*)0);
  }

  i = (((int)bytes[1] & 0x0f) << 8) | (int)bytes[0];
  start = _passwdqc_wordset_4k[i];
  end = memchr(start, '\0', 6);
  if (!end) end = start + 6;
  if (length + (end - start) >= sizeof(output) - 1) {
   close(fd);
   return ((void*)0);
  }
  memcpy(&output[length], start, end - start);
  length += end - start;
  bits -= 12;

  if (use_separators && bits > 3) {
   i = ((int)bytes[1] & 0x70) >> 4;
   output[length++] = SEPARATORS[i];
   bits -= 3;
  } else
  if (bits > 0)
   output[length++] = ' ';
 } while (bits > 0);

 memset(bytes, 0, sizeof(bytes));
 output[length] = '\0';

 close(fd);

 return output;
}
