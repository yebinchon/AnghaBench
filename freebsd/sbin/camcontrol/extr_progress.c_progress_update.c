
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int done; int percent; int size; int now; int elapsed; int start; int eta; } ;
typedef TYPE_1__ progress_t ;


 int time (int *) ;

int
progress_update(progress_t *prog, uint64_t done)
{
 prog->done = done;
 prog->percent = (prog->done * 100) / prog->size;
 prog->now = time(((void*)0));
 prog->elapsed = prog->now - prog->start;
 if (done == 0 || prog->elapsed == 0 || prog->done / prog->elapsed == 0) {
  prog->eta = 0;
 } else {
  prog->eta = prog->size / (prog->done / prog->elapsed) - prog->elapsed;
 }
 return 1;
}
