
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hashValue {int c; int b; int a; } ;


 int final (int ,int ,int ) ;

__attribute__((used)) static uint32_t
finalizeHash(struct hashValue *h)
{
    uint32_t a = h->a, b = h->b, c = h->c;
    final(a, b, c);
    return c;
}
