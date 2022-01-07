
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_tok {scalar_t__ token; } ;



int
compare_key_tok_id(
 const void *a1,
 const void *a2
 )
{
 const struct key_tok *p1 = a1;
 const struct key_tok *p2 = a2;

 if (p1->token == p2->token)
  return 0;

 if (p1->token < p2->token)
  return -1;
 else
  return 1;
}
