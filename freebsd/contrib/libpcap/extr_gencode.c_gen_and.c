
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int sense; int head; } ;


 int backpatch (struct block*,int ) ;
 int merge (struct block*,struct block*) ;

void
gen_and(struct block *b0, struct block *b1)
{
 backpatch(b0, b1->head);
 b0->sense = !b0->sense;
 b1->sense = !b1->sense;
 merge(b1, b0);
 b1->sense = !b1->sense;
 b1->head = b0->head;
}
