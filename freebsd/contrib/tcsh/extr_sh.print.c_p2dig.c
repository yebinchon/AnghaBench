
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xprintf (char*,unsigned int,unsigned int) ;

__attribute__((used)) static void
p2dig(unsigned i)
{

    xprintf("%u%u", i / 10, i % 10);
}
