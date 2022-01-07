
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 int ENOMEM ;
 size_t SFRAG ;
 char* cgetcap (char*,char const*,char) ;
 int errno ;
 char* malloc (size_t) ;
 char* reallocf (char*,size_t) ;

int
cgetustr(char *buf, const char *cap, char **str)
{
 u_int m_room;
 char *bp, *mp;
 int len;
 char *mem;




 if ((bp = cgetcap(buf, cap, '=')) == ((void*)0))
  return (-1);





 if ((mem = malloc(SFRAG)) == ((void*)0)) {
  errno = ENOMEM;
  return (-2);
 }
 m_room = SFRAG;
 mp = mem;

 while (*bp != ':' && *bp != '\0') {






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
