
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int printf (char*,int) ;

__attribute__((used)) static void
disassemble_printaddr(u_int address)
{
 printf("0x%08x", address);
}
