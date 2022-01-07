
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xpt_busfunc_t ;
struct xpt_traverse_config {void* tr_arg; int * tr_func; int depth; } ;


 int XPT_DEPTH_BUS ;
 int xptbustraverse (int *,int ,struct xpt_traverse_config*) ;
 int xptdefbusfunc ;

__attribute__((used)) static int
xpt_for_all_busses(xpt_busfunc_t *tr_func, void *arg)
{
 struct xpt_traverse_config tr_config;

 tr_config.depth = XPT_DEPTH_BUS;
 tr_config.tr_func = tr_func;
 tr_config.tr_arg = arg;

 return(xptbustraverse(((void*)0), xptdefbusfunc, &tr_config));
}
