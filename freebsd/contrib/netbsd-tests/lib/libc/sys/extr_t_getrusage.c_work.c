
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UINT16_MAX ;

__attribute__((used)) static void
work(void)
{
 size_t n = UINT16_MAX * 10;

 while (n > 0) {





   asm volatile("nop");

   n--;
 }
}
