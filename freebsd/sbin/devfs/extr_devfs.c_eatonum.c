
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int atonum (char const*,int *) ;
 int errx (int,char*,char const*) ;

uint16_t
eatonum(const char *s)
{
 uint16_t num;

 if (!atonum(s, &num))
  errx(1, "error converting to number: %s", s);
 return (num);
}
