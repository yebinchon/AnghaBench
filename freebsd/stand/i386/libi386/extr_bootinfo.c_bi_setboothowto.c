
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_howto_to_env (int) ;

void
bi_setboothowto(int howto)
{

    boot_howto_to_env(howto);
}
