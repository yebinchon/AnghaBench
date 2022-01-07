
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ window_mask; scalar_t__ window_size; } ;
struct rar5 {TYPE_1__ cstate; } ;



__attribute__((used)) static void init_window_mask(struct rar5* rar) {
 if (rar->cstate.window_size)
  rar->cstate.window_mask = rar->cstate.window_size - 1;
 else
  rar->cstate.window_mask = 0;
}
