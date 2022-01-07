
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int buf ;



__attribute__((used)) static void
smash_stack(void)
{
 static uint32_t junk = 0xdeadbeef;
 uint32_t buf[512];
 int i;

 for (i = 0; i < sizeof(buf) / sizeof(buf[0]); i++)
  buf[i] = junk;
}
