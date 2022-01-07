
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int outb (int,int) ;

__attribute__((used)) static void
isa_outb(int port, int value)
{

    outb(port, value);
}
