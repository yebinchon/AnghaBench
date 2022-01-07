
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AMD64_NUM_REGS ;

__attribute__((used)) static int
amd64_cannot_store_register(int regno)
{

 return (regno >= AMD64_NUM_REGS);
}
