
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_pr {int buf; } ;


 int free (int ) ;

void
bp_free(struct buf_pr *b)
{

 free(b->buf);
}
