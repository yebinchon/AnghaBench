
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;


 char* _mtox (char*,int const*) ;

char *
mp_mtox(const MINT *mp)
{

 return (_mtox("mtox", mp));
}
