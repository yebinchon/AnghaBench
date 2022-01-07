
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block {int sense; } ;



void
gen_not(struct block *b)
{
 b->sense = !b->sense;
}
