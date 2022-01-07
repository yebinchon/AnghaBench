
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u_int8_t ;
typedef unsigned int u_int32_t ;
typedef int u_int16_t ;


 scalar_t__ isascii (char) ;
 scalar_t__ isdigit (char) ;
 int putLong (unsigned char*,unsigned long) ;
 int putShort (unsigned char*,unsigned long) ;
 int putULong (unsigned char*,unsigned int) ;
 int putUShort (unsigned char*,int ) ;
 int warning (char*,...) ;

void
convert_num(unsigned char *buf, char *str, unsigned base, int size)
{
 bool negative = 0;
 unsigned tval, max;
 u_int32_t val = 0;
 char *ptr = str;

 if (*ptr == '-') {
  negative = 1;
  ptr++;
 }


 if (!base) {
  if (ptr[0] == '0') {
   if (ptr[1] == 'x') {
    base = 16;
    ptr += 2;
   } else if (isascii(ptr[1]) && isdigit(ptr[1])) {
    base = 8;
    ptr += 1;
   } else
    base = 10;
  } else
   base = 10;
 }

 do {
  tval = *ptr++;

  if (tval >= 'a')
   tval = tval - 'a' + 10;
  else if (tval >= 'A')
   tval = tval - 'A' + 10;
  else if (tval >= '0')
   tval -= '0';
  else {
   warning("Bogus number: %s.", str);
   break;
  }
  if (tval >= base) {
   warning("Bogus number: %s: digit %d not in base %d",
       str, tval, base);
   break;
  }
  val = val * base + tval;
 } while (*ptr);

 if (negative)
  max = (1 << (size - 1));
 else
  max = (1 << (size - 1)) + ((1 << (size - 1)) - 1);
 if (val > max) {
  switch (base) {
  case 8:
   warning("value %s%o exceeds max (%d) for precision.",
       negative ? "-" : "", val, max);
   break;
  case 16:
   warning("value %s%x exceeds max (%d) for precision.",
       negative ? "-" : "", val, max);
   break;
  default:
   warning("value %s%u exceeds max (%d) for precision.",
       negative ? "-" : "", val, max);
   break;
  }
 }

 if (negative)
  switch (size) {
  case 8:
   *buf = -(unsigned long)val;
   break;
  case 16:
   putShort(buf, -(unsigned long)val);
   break;
  case 32:
   putLong(buf, -(unsigned long)val);
   break;
  default:
   warning("Unexpected integer size: %d", size);
   break;
  }
 else
  switch (size) {
  case 8:
   *buf = (u_int8_t)val;
   break;
  case 16:
   putUShort(buf, (u_int16_t)val);
   break;
  case 32:
   putULong(buf, val);
   break;
  default:
   warning("Unexpected integer size: %d", size);
   break;
  }
}
