
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Node ;


 int * alt (int ) ;
 int concat (int ) ;
 int primary () ;

Node *regexp(void)
{
 return (alt(concat(primary())));
}
