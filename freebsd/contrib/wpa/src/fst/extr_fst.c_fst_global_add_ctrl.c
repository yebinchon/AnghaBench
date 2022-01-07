
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fst_ctrl {scalar_t__ (* init ) () ;} ;
struct fst_ctrl_handle {int global_ctrls_lentry; struct fst_ctrl ctrl; } ;


 int dl_list_add_tail (int *,int *) ;
 int fst_global_ctrls_list ;
 int os_free (struct fst_ctrl_handle*) ;
 struct fst_ctrl_handle* os_zalloc (int) ;
 scalar_t__ stub1 () ;

struct fst_ctrl_handle * fst_global_add_ctrl(const struct fst_ctrl *ctrl)
{
 struct fst_ctrl_handle *h;

 if (!ctrl)
  return ((void*)0);

 h = os_zalloc(sizeof(*h));
 if (!h)
  return ((void*)0);

 if (ctrl->init && ctrl->init()) {
  os_free(h);
  return ((void*)0);
 }

 h->ctrl = *ctrl;
 dl_list_add_tail(&fst_global_ctrls_list, &h->global_ctrls_lentry);

 return h;
}
