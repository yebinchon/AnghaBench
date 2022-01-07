
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int MINT ;


 int _movem (char*,int const*,int *) ;

void
mp_move(const MINT *smp, MINT *tmp)
{

 _movem("move", smp, tmp);
}
