
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 int reprintf (char*,int,int,int,int ) ;
 int short2str (char*) ;

__attribute__((used)) static void
str_delete(Char *d, int dat, int dlen, int num)
{
    Char *a, *b;

    if (num <= 0)
 return;
    if (dat + num >= dlen) {
 d[dat] = '\0';
 return;
    }







    if (num > 0) {
 b = d + dat;
 a = b + num;
 while (a < &d[dlen])
     *b++ = *a++;
 d[dlen] = '\0';
    }




}
