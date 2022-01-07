
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;


 int _msub (char*,int const*,int const*,int *) ;

void
mp_msub(const MINT *mp1, const MINT *mp2, MINT *rmp)
{

 _msub("msub", mp1, mp2, rmp);
}
