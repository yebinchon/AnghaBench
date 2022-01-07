
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_4__ {int size; int data; } ;
typedef TYPE_1__ DBT ;


 int OFFSET (int*) ;
 int memmove (char*,int ,int) ;

__attribute__((used)) static void
putpair(char *p, const DBT *key, const DBT *val)
{
 u_int16_t *bp, n, off;

 bp = (u_int16_t *)p;


 n = bp[0];

 off = OFFSET(bp) - key->size;
 memmove(p + off, key->data, key->size);
 bp[++n] = off;


 off -= val->size;
 memmove(p + off, val->data, val->size);
 bp[++n] = off;


 bp[0] = n;
 bp[n + 1] = off - ((n + 3) * sizeof(u_int16_t));
 bp[n + 2] = off;
}
