
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char* uintmax_t ;
struct TYPE_3__ {char* sn_name; scalar_t__ sn_id; scalar_t__ sn_parent_id; } ;
typedef TYPE_1__ sfs_node_t ;


 int printf (char*,char*) ;

__attribute__((used)) static void
sfs_print_node(sfs_node_t *node)
{
 printf("\tname = %s\n", node->sn_name);
 printf("\tparent_id = %ju\n", (uintmax_t)node->sn_parent_id);
 printf("\tid = %ju\n", (uintmax_t)node->sn_id);
}
