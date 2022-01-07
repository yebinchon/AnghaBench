
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_15__ ;


struct TYPE_30__ {int rights; } ;
typedef TYPE_4__ path_access_t ;
struct TYPE_29__ {int len; int data; } ;
struct TYPE_31__ {TYPE_3__ segment; int sub_nodes; TYPE_1__* pattern_sub_nodes; int rights; } ;
typedef TYPE_5__ node_t ;
struct TYPE_32__ {TYPE_5__* node; TYPE_9__* segment; } ;
typedef TYPE_6__ node_segment_pair_t ;
struct TYPE_33__ {int min_rights; int max_rights; TYPE_4__ access; } ;
typedef TYPE_7__ limited_rights_t ;
struct TYPE_34__ {int path; } ;
typedef TYPE_8__ construction_context_t ;
struct TYPE_28__ {int data; } ;
struct TYPE_35__ {int kind; TYPE_2__ pattern; } ;
typedef TYPE_9__ authz_rule_segment_t ;
typedef int apr_pool_t ;
struct TYPE_27__ {int complex; int suffixes; int prefixes; int any_var; int any; } ;
struct TYPE_26__ {int repeat; } ;


 int SVN_ERR_ASSERT_NO_RETURN (int) ;
 int TRUE ;
 TYPE_6__* apr_array_push (int ) ;
 int apr_hash_set (int ,int ,int ,TYPE_5__*) ;



 int authz_rule_literal ;


 int combine_access (int *,TYPE_7__*) ;
 TYPE_5__* create_node (TYPE_9__*,int *) ;
 TYPE_5__* ensure_node (int *,TYPE_9__*,int *) ;
 TYPE_5__* ensure_node_in_array (int *,TYPE_9__*,int *) ;
 TYPE_15__* ensure_pattern_sub_nodes (TYPE_5__*,int *) ;
 int svn_hash__make (int *) ;
 TYPE_5__* svn_hash_gets (int ,int ) ;

__attribute__((used)) static void
insert_path(construction_context_t *ctx,
            node_t *node,
            path_access_t *path_access,
            int segment_count,
            authz_rule_segment_t *segment,
            apr_pool_t *result_pool,
            apr_pool_t *scratch_pool)
{
  node_t *sub_node;
  node_segment_pair_t *node_segment;


  if (segment_count == 0)
    {




      limited_rights_t rights;
      rights.access = *path_access;
      rights.max_rights = path_access->rights;
      rights.min_rights = path_access->rights;
      combine_access(&node->rights, &rights);
      return;
    }


  if (segment->kind != authz_rule_literal)
    ensure_pattern_sub_nodes(node, result_pool);

  switch (segment->kind)
    {

    case 131:
      sub_node = ensure_node(&node->pattern_sub_nodes->any,
                             segment, result_pool);
      break;


    case 132:
      sub_node = ensure_node(&node->pattern_sub_nodes->any_var,
                             segment, result_pool);
      ensure_pattern_sub_nodes(sub_node, result_pool)->repeat = TRUE;
      break;


    case 129:
      sub_node = ensure_node_in_array(&node->pattern_sub_nodes->prefixes,
                                      segment, result_pool);
      break;


    case 128:
      sub_node = ensure_node_in_array(&node->pattern_sub_nodes->suffixes,
                                      segment, result_pool);
      break;


    case 130:
      sub_node = ensure_node_in_array(&node->pattern_sub_nodes->complex,
                                      segment, result_pool);
      break;


    default:
      SVN_ERR_ASSERT_NO_RETURN(segment->kind == authz_rule_literal);

      if (!node->sub_nodes)
        {
          node->sub_nodes = svn_hash__make(result_pool);
          sub_node = ((void*)0);
        }
      else
        {
          sub_node = svn_hash_gets(node->sub_nodes, segment->pattern.data);
        }


      if (!sub_node)
        {
          sub_node = create_node(segment, result_pool);
          apr_hash_set(node->sub_nodes,
                       sub_node->segment.data,
                       sub_node->segment.len,
                       sub_node);
        }
    }


  node_segment = apr_array_push(ctx->path);
  node_segment->segment = segment;
  node_segment->node = sub_node;


  insert_path(ctx, sub_node, path_access, segment_count - 1, segment + 1,
              result_pool, scratch_pool);
}
