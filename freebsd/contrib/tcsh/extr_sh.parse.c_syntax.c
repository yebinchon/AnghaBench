
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {struct wordent* next; int * word; } ;
struct command {int dummy; } ;


 scalar_t__ any (char*,int ) ;
 struct command* syn0 (struct wordent const*,struct wordent const*,int) ;

struct command *
syntax(const struct wordent *p1, const struct wordent *p2, int flags)
{

    while (p1 != p2)
 if (any(";&\n", p1->word[0]))
     p1 = p1->next;
 else
     return (syn0(p1, p2, flags));
    return (0);
}
