
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int reprintf (char*,int,...) ;
 int short2str (char*) ;

__attribute__((used)) static void
str_insert(Char *d, int dat, int dlen, Char *s, int num)
{
    Char *a, *b;

    if (num <= 0)
 return;
    if (num > dlen - dat)
 num = dlen - dat;
    if (num > 0) {
 b = d + dlen - 1;
 a = b - num;
 while (a >= &d[dat])
     *b-- = *a--;
 d[dlen] = '\0';
    }







    for (a = d + dat; (a < d + dlen) && (num > 0); num--)
 *a++ = *s++;






}
