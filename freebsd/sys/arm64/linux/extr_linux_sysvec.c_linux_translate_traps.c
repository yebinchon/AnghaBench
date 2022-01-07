
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIN_SDT_PROBE2 (int ,int (*) (int,int),int ,int,int) ;
 int sysvec ;
 int todo ;

__attribute__((used)) static int
linux_translate_traps(int signal, int trap_code)
{

 LIN_SDT_PROBE2(sysvec, linux_translate_traps, todo, signal, trap_code);
 return (signal);
}
