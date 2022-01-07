
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int valid; } ;
typedef TYPE_1__ xlate_handle_node_t ;
typedef int apr_status_t ;


 int APR_SUCCESS ;
 int FALSE ;

__attribute__((used)) static apr_status_t
xlate_handle_node_cleanup(void *arg)
{
  xlate_handle_node_t *node = arg;

  node->valid = FALSE;
  return APR_SUCCESS;
}
