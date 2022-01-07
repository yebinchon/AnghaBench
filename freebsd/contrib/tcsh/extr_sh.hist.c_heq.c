
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wordent {struct wordent* next; int word; } ;


 scalar_t__ Strcmp (int ,int ) ;

__attribute__((used)) static int
heq(const struct wordent *a0, const struct wordent *b0)
{
    const struct wordent *a = a0->next, *b = b0->next;

    for (;;) {
 if (Strcmp(a->word, b->word) != 0)
     return 0;
 a = a->next;
 b = b->next;
 if (a == a0)
     return (b == b0) ? 1 : 0;
 if (b == b0)
     return 0;
    }
}
