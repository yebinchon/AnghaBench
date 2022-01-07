
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa_handle {int dummy; } ;
struct query_params {int cpi; } ;
struct query_cmd {int dummy; } ;


 int dump_class_port_info (int *) ;

__attribute__((used)) static int query_class_port_info(const struct query_cmd *q, struct sa_handle * h,
     struct query_params *p, int argc, char *argv[])
{
 dump_class_port_info(&p->cpi);
 return (0);
}
