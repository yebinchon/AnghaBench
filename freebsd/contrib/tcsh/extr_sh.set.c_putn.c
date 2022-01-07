
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tcsh_number_t ;
typedef scalar_t__ Char ;


 scalar_t__* Strsave (scalar_t__*) ;
 int putn1 (int ) ;
 scalar_t__* putp ;

Char *
putn(tcsh_number_t n)
{
    Char nbuf[1024];

    putp = nbuf;
    if (n < 0) {
 n = -n;
 *putp++ = '-';
    }
    putn1(n);
    *putp = 0;
    return (Strsave(nbuf));
}
