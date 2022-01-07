
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_xfer {TYPE_1__* task_transfer; } ;
struct auth_chunk {int dummy; } ;
struct TYPE_2__ {struct auth_chunk* chunks_first; } ;



__attribute__((used)) static void
chunk_rrlist_start(struct auth_xfer* xfr, struct auth_chunk** rr_chunk,
 int* rr_num, size_t* rr_pos)
{
 *rr_chunk = xfr->task_transfer->chunks_first;
 *rr_num = 0;
 *rr_pos = 0;
}
