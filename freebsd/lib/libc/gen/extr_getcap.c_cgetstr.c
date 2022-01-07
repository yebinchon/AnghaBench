
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int ENOMEM ;
 int ESC ;
 size_t SFRAG ;
 char* cgetcap (char*,char const*,char) ;
 int errno ;
 char* malloc (size_t) ;
 char* reallocf (char*,size_t) ;

int
cgetstr(char *buf, const char *cap, char **str)
{
 u_int m_room;
 char *bp, *mp;
 int len;
 char *mem;




 bp = cgetcap(buf, cap, '=');
 if (bp == ((void*)0))
  return (-1);





 if ((mem = malloc(SFRAG)) == ((void*)0)) {
  errno = ENOMEM;
  return (-2);
 }
 m_room = SFRAG;
 mp = mem;

 while (*bp != ':' && *bp != '\0') {






  if (*bp == '^') {
   bp++;
   if (*bp == ':' || *bp == '\0')
    break;
   if (*bp == '?') {
    *mp++ = '\177';
    bp++;
   } else
    *mp++ = *bp++ & 037;
  } else if (*bp == '\\') {
   bp++;
   if (*bp == ':' || *bp == '\0')
    break;
   if ('0' <= *bp && *bp <= '7') {
    int n, i;

    n = 0;
    i = 3;
    do {
     n = n * 8 + (*bp++ - '0');
    } while (--i && '0' <= *bp && *bp <= '7');
    *mp++ = n;
   }
   else switch (*bp++) {
    case 'b': case 'B':
     *mp++ = '\b';
     break;
    case 't': case 'T':
     *mp++ = '\t';
     break;
    case 'n': case 'N':
     *mp++ = '\n';
     break;
    case 'f': case 'F':
     *mp++ = '\f';
     break;
    case 'r': case 'R':
     *mp++ = '\r';
     break;
    case 'e': case 'E':
     *mp++ = ESC;
     break;
    case 'c': case 'C':
     *mp++ = ':';
     break;
    default:




     *mp++ = *(bp-1);
     break;
   }
  } else
   *mp++ = *bp++;
  m_room--;





  if (m_room == 0) {
   size_t size = mp - mem;

   if ((mem = reallocf(mem, size + SFRAG)) == ((void*)0))
    return (-2);
   m_room = SFRAG;
   mp = mem + size;
  }
 }
 *mp++ = '\0';
 m_room--;
 len = mp - mem - 1;




 if (m_room != 0)
  if ((mem = reallocf(mem, (size_t)(mp - mem))) == ((void*)0))
   return (-2);
 *str = mem;
 return (len);
}
