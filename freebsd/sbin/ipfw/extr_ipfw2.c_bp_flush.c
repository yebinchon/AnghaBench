
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buf_pr {char* ptr; char* buf; int size; int avail; } ;



void
bp_flush(struct buf_pr *b)
{

 b->ptr = b->buf;
 b->avail = b->size;
 b->buf[0] = '\0';
}
