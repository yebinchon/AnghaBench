
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* deinit ) () ;} ;
struct fst_ctrl_handle {TYPE_1__ ctrl; int global_ctrls_lentry; } ;


 int dl_list_del (int *) ;
 int os_free (struct fst_ctrl_handle*) ;
 int stub1 () ;

void fst_global_del_ctrl(struct fst_ctrl_handle *h)
{
 dl_list_del(&h->global_ctrls_lentry);
 if (h->ctrl.deinit)
  h->ctrl.deinit();
 os_free(h);
}
