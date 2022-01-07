
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_tok {int key; } ;


 int strcmp (int ,int ) ;

int
compare_key_tok_text(
 const void *a1,
 const void *a2
 )
{
 const struct key_tok *p1 = a1;
 const struct key_tok *p2 = a2;

 return strcmp(p1->key, p2->key);
}
