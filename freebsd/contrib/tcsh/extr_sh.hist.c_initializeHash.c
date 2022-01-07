
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashValue {int a; int b; int c; } ;



__attribute__((used)) static void
initializeHash(struct hashValue *h)
{
    h->a = h->b = h->c = 0xdeadbeef;
}
