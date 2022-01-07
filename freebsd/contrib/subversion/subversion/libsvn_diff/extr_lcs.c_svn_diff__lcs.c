
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef size_t svn_diff__token_index_t ;
struct TYPE_16__ {TYPE_4__* lcs; TYPE_3__** position; } ;
typedef TYPE_2__ svn_diff__snake_t ;
struct TYPE_17__ {int offset; int token_index; struct TYPE_17__* next; } ;
typedef TYPE_3__ svn_diff__position_t ;
struct TYPE_18__ {int refcount; struct TYPE_18__* next; TYPE_1__** position; int length; } ;
typedef TYPE_4__ svn_diff__lcs_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_off_t ;
struct TYPE_15__ {int offset; } ;


 TYPE_4__* apr_palloc (int *,int) ;
 void* apr_pcalloc (int *,int) ;
 TYPE_4__* prepend_lcs (TYPE_4__*,int,int,int,int *) ;
 TYPE_4__* svn_diff__lcs_reverse (TYPE_4__*) ;
 int svn_diff__snake (TYPE_2__*,size_t**,TYPE_4__**,int *) ;

svn_diff__lcs_t *
svn_diff__lcs(svn_diff__position_t *position_list1,
              svn_diff__position_t *position_list2,
              svn_diff__token_index_t *token_counts_list1,
              svn_diff__token_index_t *token_counts_list2,
              svn_diff__token_index_t num_tokens,
              apr_off_t prefix_lines,
              apr_off_t suffix_lines,
              apr_pool_t *pool)
{
  apr_off_t length[2];
  svn_diff__token_index_t *token_counts[2];
  svn_diff__token_index_t unique_count[2];
  svn_diff__token_index_t token_index;
  svn_diff__snake_t *fp;
  apr_off_t d;
  apr_off_t k;
  apr_off_t p = 0;
  svn_diff__lcs_t *lcs, *lcs_freelist = ((void*)0);

  svn_diff__position_t sentinel_position[2];




  lcs = apr_palloc(pool, sizeof(*lcs));
  lcs->position[0] = apr_pcalloc(pool, sizeof(*lcs->position[0]));
  lcs->position[0]->offset = position_list1
                             ? position_list1->offset + suffix_lines + 1
                             : prefix_lines + suffix_lines + 1;
  lcs->position[1] = apr_pcalloc(pool, sizeof(*lcs->position[1]));
  lcs->position[1]->offset = position_list2
                             ? position_list2->offset + suffix_lines + 1
                             : prefix_lines + suffix_lines + 1;
  lcs->length = 0;
  lcs->refcount = 1;
  lcs->next = ((void*)0);

  if (position_list1 == ((void*)0) || position_list2 == ((void*)0))
    {
      if (suffix_lines)
        lcs = prepend_lcs(lcs, suffix_lines,
                          lcs->position[0]->offset - suffix_lines,
                          lcs->position[1]->offset - suffix_lines,
                          pool);
      if (prefix_lines)
        lcs = prepend_lcs(lcs, prefix_lines, 1, 1, pool);

      return lcs;
    }

  unique_count[1] = unique_count[0] = 0;
  for (token_index = 0; token_index < num_tokens; token_index++)
    {
      if (token_counts_list1[token_index] == 0)
        unique_count[1] += token_counts_list2[token_index];
      if (token_counts_list2[token_index] == 0)
        unique_count[0] += token_counts_list1[token_index];
    }




  length[0] = position_list1->offset - position_list1->next->offset + 1
              - unique_count[0];
  length[1] = position_list2->offset - position_list2->next->offset + 1
              - unique_count[1];




  fp = apr_pcalloc(pool,
                   sizeof(*fp) * (apr_size_t)(length[0] + length[1] + 3));







  fp += length[1] + 1;

  sentinel_position[0].next = position_list1->next;
  position_list1->next = &sentinel_position[0];
  sentinel_position[0].offset = position_list1->offset + 1;
  token_counts[0] = token_counts_list1;

  sentinel_position[1].next = position_list2->next;
  position_list2->next = &sentinel_position[1];
  sentinel_position[1].offset = position_list2->offset + 1;
  token_counts[1] = token_counts_list2;



  sentinel_position[0].token_index = -1;
  sentinel_position[1].token_index = -2;




  d = length[0] - length[1];





  fp[d - 1].position[0] = sentinel_position[0].next;
  fp[d - 1].position[1] = &sentinel_position[1];

  p = 0;
  do
    {

      for (k = (d < 0 ? d : 0) - p; k < 0; k++)
        {
          svn_diff__snake(fp + k, token_counts, &lcs_freelist, pool);
        }

      for (k = (d > 0 ? d : 0) + p; k >= 0; k--)
        {
          svn_diff__snake(fp + k, token_counts, &lcs_freelist, pool);
        }

      p++;
    }
  while (fp[0].position[1] != &sentinel_position[1]);

  if (suffix_lines)
    lcs->next = prepend_lcs(fp[0].lcs, suffix_lines,
                            lcs->position[0]->offset - suffix_lines,
                            lcs->position[1]->offset - suffix_lines,
                            pool);
  else
    lcs->next = fp[0].lcs;

  lcs = svn_diff__lcs_reverse(lcs);

  position_list1->next = sentinel_position[0].next;
  position_list2->next = sentinel_position[1].next;

  if (prefix_lines)
    return prepend_lcs(lcs, prefix_lines, 1, 1, pool);
  else
    return lcs;
}
