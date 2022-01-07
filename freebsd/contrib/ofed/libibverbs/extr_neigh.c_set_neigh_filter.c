
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtnl_neigh {int dummy; } ;
struct get_neigh_handler {struct rtnl_neigh* filter_neigh; } ;



__attribute__((used)) static void set_neigh_filter(struct get_neigh_handler *neigh_handler,
        struct rtnl_neigh *filter) {
 neigh_handler->filter_neigh = filter;
}
