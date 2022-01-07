
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct termp {scalar_t__ ti; TYPE_1__* tcol; int line; } ;
struct TYPE_2__ {int offset; } ;


 int putchar (char) ;

__attribute__((used)) static void
ascii_endline(struct termp *p)
{

 p->line++;
 p->tcol->offset -= p->ti;
 p->ti = 0;
 putchar('\n');
}
