
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int ch_slotnum; int ch_anafanum; } ;
typedef TYPE_1__ ibnd_node_t ;


 int IBND_ERROR (char*) ;
 int SPINES_MAX_NUM ;
 scalar_t__ is_spine_2012 (TYPE_1__*) ;
 scalar_t__ is_spine_4700 (TYPE_1__*) ;
 scalar_t__ is_spine_4700x2 (TYPE_1__*) ;
 scalar_t__ is_spine_9288 (TYPE_1__*) ;

__attribute__((used)) static int get_spine_index(ibnd_node_t * node)
{
 int retval;

 if (is_spine_9288(node) || is_spine_2012(node))
  retval = 3 * (node->ch_slotnum - 1) + node->ch_anafanum;
 else if (is_spine_4700(node) || is_spine_4700x2(node))
  retval = 2 * (node->ch_slotnum - 1) + node->ch_anafanum;
 else
  retval = node->ch_slotnum;

 if (retval > SPINES_MAX_NUM || retval < 1) {
  IBND_ERROR("Internal error\n");
  return -1;
 }
 return retval;
}
