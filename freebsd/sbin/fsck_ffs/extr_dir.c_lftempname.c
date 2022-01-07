
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ino_t ;


 int maxino ;

__attribute__((used)) static int
lftempname(char *bufp, ino_t ino)
{
 ino_t in;
 char *cp;
 int namlen;

 cp = bufp + 2;
 for (in = maxino; in > 0; in /= 10)
  cp++;
 *--cp = 0;
 namlen = cp - bufp;
 in = ino;
 while (cp > bufp) {
  *--cp = (in % 10) + '0';
  in /= 10;
 }
 *cp = '#';
 return (namlen);
}
