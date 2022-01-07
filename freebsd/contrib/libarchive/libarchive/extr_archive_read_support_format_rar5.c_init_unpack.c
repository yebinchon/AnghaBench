
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ window_size; int rd; int ldd; int dd; int ld; int bd; scalar_t__ last_write_ptr; scalar_t__ write_ptr; int * filtered_buf; int * window_buf; } ;
struct TYPE_3__ {scalar_t__ calculated_crc32; } ;
struct rar5 {TYPE_2__ cstate; TYPE_1__ file; } ;


 void* calloc (int,scalar_t__) ;
 int free (int *) ;
 int init_window_mask (struct rar5*) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static void init_unpack(struct rar5* rar) {
 rar->file.calculated_crc32 = 0;
 init_window_mask(rar);

 free(rar->cstate.window_buf);
 free(rar->cstate.filtered_buf);

 if(rar->cstate.window_size > 0) {
  rar->cstate.window_buf = calloc(1, rar->cstate.window_size);
  rar->cstate.filtered_buf = calloc(1, rar->cstate.window_size);
 } else {
  rar->cstate.window_buf = ((void*)0);
  rar->cstate.filtered_buf = ((void*)0);
 }

 rar->cstate.write_ptr = 0;
 rar->cstate.last_write_ptr = 0;

 memset(&rar->cstate.bd, 0, sizeof(rar->cstate.bd));
 memset(&rar->cstate.ld, 0, sizeof(rar->cstate.ld));
 memset(&rar->cstate.dd, 0, sizeof(rar->cstate.dd));
 memset(&rar->cstate.ldd, 0, sizeof(rar->cstate.ldd));
 memset(&rar->cstate.rd, 0, sizeof(rar->cstate.rd));
}
