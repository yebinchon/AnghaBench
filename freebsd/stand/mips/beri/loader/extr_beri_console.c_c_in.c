
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int beri_getc () ;

__attribute__((used)) static int
c_in(void)
{

 return (beri_getc());
}
