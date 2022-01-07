
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {int dummy; } ;
typedef int Char ;


 int INT_MAX ;
 int * expand_lex (struct wordent const*,int ,int ) ;

Char *
sprlex(const struct wordent *sp0)
{
    return expand_lex(sp0, 0, INT_MAX);
}
