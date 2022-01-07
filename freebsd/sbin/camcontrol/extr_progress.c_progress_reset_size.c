
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int size; } ;
typedef TYPE_1__ progress_t ;



int
progress_reset_size(progress_t *prog, uint64_t size)
{
 prog->size = size;
 return 1;
}
