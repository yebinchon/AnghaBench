
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;


 char* _mtod (char*,int const*) ;
 int free (char*) ;
 int printf (char*,char*) ;

void
mp_mout(const MINT *mp)
{
 char *s;

 s = _mtod("mout", mp);
 printf("%s", s);
 free(s);
}
