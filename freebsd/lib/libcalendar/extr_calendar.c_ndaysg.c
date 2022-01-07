
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 int * date2idt (int *,int *) ;
 int ndaysgi (int *) ;

int
ndaysg(date *dt)
{
 date idt;

 if (date2idt(&idt, dt) == ((void*)0))
  return (-1);
 return (ndaysgi(&idt));
}
