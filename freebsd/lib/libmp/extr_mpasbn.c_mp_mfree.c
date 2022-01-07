
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;


 int _mfree (char*,int *) ;

void
mp_mfree(MINT *mp)
{

 _mfree("mfree", mp);
}
