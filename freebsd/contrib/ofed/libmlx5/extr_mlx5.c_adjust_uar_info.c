
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_device {int page_size; } ;
struct mlx5_context {int uar_size; int num_uars_per_page; } ;
struct mlx5_alloc_ucontext_resp {int log_uar_size; int num_uars_per_page; } ;



__attribute__((used)) static void adjust_uar_info(struct mlx5_device *mdev,
       struct mlx5_context *context,
       struct mlx5_alloc_ucontext_resp resp)
{
 if (!resp.log_uar_size && !resp.num_uars_per_page) {

  context->uar_size = mdev->page_size;
  context->num_uars_per_page = 1;
  return;
 }

 context->uar_size = 1 << resp.log_uar_size;
 context->num_uars_per_page = resp.num_uars_per_page;
}
