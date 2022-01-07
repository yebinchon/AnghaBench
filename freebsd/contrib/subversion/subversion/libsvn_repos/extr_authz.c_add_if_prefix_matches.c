
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ len; int data; } ;
typedef TYPE_2__ svn_stringbuf_t ;
struct TYPE_10__ {TYPE_4__* node; } ;
typedef TYPE_3__ sorted_pattern_t ;
struct TYPE_8__ {scalar_t__ len; int data; } ;
struct TYPE_11__ {TYPE_1__ segment; } ;
typedef TYPE_4__ node_t ;
typedef int lookup_state_t ;


 int add_next_node (int *,TYPE_4__*) ;
 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static void
add_if_prefix_matches(lookup_state_t *state,
                      const sorted_pattern_t *prefix,
                      const svn_stringbuf_t *segment)
{
  node_t *node = prefix->node;
  if ( node->segment.len <= segment->len
      && !memcmp(node->segment.data, segment->data, node->segment.len))
    add_next_node(state, node);
}
