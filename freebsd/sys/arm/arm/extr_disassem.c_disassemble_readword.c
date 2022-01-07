
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;



__attribute__((used)) static u_int
disassemble_readword(u_int address)
{
 return(*((u_int *)address));
}
