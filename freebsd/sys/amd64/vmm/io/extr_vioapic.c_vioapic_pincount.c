
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;


 int REDIR_ENTRIES ;

int
vioapic_pincount(struct vm *vm)
{

 return (REDIR_ENTRIES);
}
