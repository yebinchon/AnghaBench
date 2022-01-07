
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DISPATCH_LEVEL ;
 int KeRaiseIrql (int ,int *) ;

__attribute__((used)) static uint8_t
KeRaiseIrqlToDpcLevel(void)
{
 uint8_t irql;

 KeRaiseIrql(DISPATCH_LEVEL, &irql);
 return (irql);
}
