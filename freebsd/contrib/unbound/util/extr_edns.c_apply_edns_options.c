
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int dummy; } ;
struct edns_data {int dummy; } ;
struct config_file {scalar_t__ do_tcp_keepalive; } ;
struct comm_point {int dummy; } ;


 int edns_keepalive (struct edns_data*,struct edns_data*,struct comm_point*,struct regional*) ;

int apply_edns_options(struct edns_data* edns_out, struct edns_data* edns_in,
 struct config_file* cfg, struct comm_point* c, struct regional* region)
{
 if(cfg->do_tcp_keepalive &&
  !edns_keepalive(edns_out, edns_in, c, region))
  return 0;

 return 1;
}
