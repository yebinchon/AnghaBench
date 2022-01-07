
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
typedef unsigned int uChar ;
struct hashValue {unsigned int a; unsigned int b; unsigned int c; } ;
typedef int Char ;


 int assert (int) ;
 int mix (unsigned int,unsigned int,unsigned int) ;

__attribute__((used)) static void
addWordToHash(struct hashValue *h, const Char *word)
{
    uint32_t a = h->a, b = h->b, c = h->c;
    assert(sizeof(Char) == 1);
    while (1) {
 unsigned k;
 if ((k = *word++) == 0) break; a += k;
 if ((k = *word++) == 0) break; a += k << 8;
 if ((k = *word++) == 0) break; a += k << 16;
 if ((k = *word++) == 0) break; a += k << 24;
 if ((k = *word++) == 0) break; b += k;
 if ((k = *word++) == 0) break; b += k << 8;
 if ((k = *word++) == 0) break; b += k << 16;
 if ((k = *word++) == 0) break; b += k << 24;
 if ((k = *word++) == 0) break; c += k;
 if ((k = *word++) == 0) break; c += k << 8;
 if ((k = *word++) == 0) break; c += k << 16;
 if ((k = *word++) == 0) break; c += k << 24;
 mix(a, b, c);
    }

    h->a = a, h->b = b, h->c = c;
}
