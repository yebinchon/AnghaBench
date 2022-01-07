
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ write_ptr; scalar_t__ last_block_start; scalar_t__ last_block_length; } ;
struct rar5 {TYPE_1__ cstate; } ;
typedef scalar_t__ ssize_t ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static int is_valid_filter_block_start(struct rar5* rar,
    uint32_t start)
{
 const int64_t block_start = (ssize_t) start + rar->cstate.write_ptr;
 const int64_t last_bs = rar->cstate.last_block_start;
 const ssize_t last_bl = rar->cstate.last_block_length;

 if(last_bs == 0 || last_bl == 0) {

  return 1;
 }

 if(block_start >= last_bs + last_bl) {


  return 1;
 }


 return 0;
}
