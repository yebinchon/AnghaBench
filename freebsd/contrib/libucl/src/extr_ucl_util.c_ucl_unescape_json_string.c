
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char) ;

size_t
ucl_unescape_json_string (char *str, size_t len)
{
 char *t = str, *h = str;
 int i, uval;

 if (len <= 1) {
  return len;
 }


 while (len) {
  if (*h == '\\') {
   h ++;

   if (len == 1) {




    len --;
    *t++ = '\\';
    continue;
   }

   switch (*h) {
   case 'n':
    *t++ = '\n';
    break;
   case 'r':
    *t++ = '\r';
    break;
   case 'b':
    *t++ = '\b';
    break;
   case 't':
    *t++ = '\t';
    break;
   case 'f':
    *t++ = '\f';
    break;
   case '\\':
    *t++ = '\\';
    break;
   case '"':
    *t++ = '"';
    break;
   case 'u':

    uval = 0;
    h ++;
    len --;

    if (len > 3) {
     for (i = 0; i < 4; i++) {
      uval <<= 4;
      if (isdigit (h[i])) {
       uval += h[i] - '0';
      }
      else if (h[i] >= 'a' && h[i] <= 'f') {
       uval += h[i] - 'a' + 10;
      }
      else if (h[i] >= 'A' && h[i] <= 'F') {
       uval += h[i] - 'A' + 10;
      }
      else {
       break;
      }
     }


     if(uval < 0x80) {
      t[0] = (char)uval;
      t ++;
     }
     else if(uval < 0x800) {
      t[0] = 0xC0 + ((uval & 0x7C0) >> 6);
      t[1] = 0x80 + ((uval & 0x03F));
      t += 2;
     }
     else if(uval < 0x10000) {
      t[0] = 0xE0 + ((uval & 0xF000) >> 12);
      t[1] = 0x80 + ((uval & 0x0FC0) >> 6);
      t[2] = 0x80 + ((uval & 0x003F));
      t += 3;
     }
     else {
      *t++ = '?';
     }


     h += 4;
     len -= 4;

     if (len > 0) {
      len --;
     }
     continue;
    }
    else {
     *t++ = 'u';
    }
    break;
   default:
    *t++ = *h;
    break;
   }
   h ++;
   len --;
  }
  else {
   *t++ = *h++;
  }

  if (len > 0) {
   len --;
  }
 }
 *t = '\0';

 return (t - str);
}
