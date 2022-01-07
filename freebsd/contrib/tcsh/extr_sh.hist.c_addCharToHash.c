
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uChar ;
struct hashValue {int c; int b; int a; } ;
typedef scalar_t__ Char ;


 int mix (int ,int ,int ) ;

__attribute__((used)) static void
addCharToHash(struct hashValue *h, Char ch)
{


    h->a += (uChar)ch;
    mix(h->a, h->b, h->c);
}
