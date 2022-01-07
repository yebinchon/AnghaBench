
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_diff_data {int (* out_header ) (int *,int ,int *,int *,int *) ;} ;
typedef int ibnd_node_t ;


 int stub1 (int *,int ,int *,int *,int *) ;

__attribute__((used)) static void diff_iter_out_header(ibnd_node_t * node,
     struct iter_diff_data *data,
     int *out_header_flag)
{
 if (!(*out_header_flag)) {
  (*data->out_header) (node, 0, ((void*)0), ((void*)0), ((void*)0));
  (*out_header_flag)++;
 }
}
