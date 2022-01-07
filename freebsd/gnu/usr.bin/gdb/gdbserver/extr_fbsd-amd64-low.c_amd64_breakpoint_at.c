
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int read_inferior_memory (int ,unsigned char*,int) ;

__attribute__((used)) static int
amd64_breakpoint_at(CORE_ADDR pc)
{
 unsigned char c;

 read_inferior_memory(pc, &c, 1);
 if (c == 0xCC)
  return (1);

 return (0);
}
