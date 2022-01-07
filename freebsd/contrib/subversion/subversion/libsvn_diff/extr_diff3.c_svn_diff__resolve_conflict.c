
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ modified_start; scalar_t__ latest_start; scalar_t__ modified_length; scalar_t__ latest_length; struct TYPE_11__* next; struct TYPE_11__* resolved_diff; int original_length; int original_start; void* type; } ;
typedef TYPE_1__ svn_diff_t ;
typedef int svn_diff__token_index_t ;
struct TYPE_12__ {scalar_t__ offset; scalar_t__ token_index; struct TYPE_12__* next; } ;
typedef TYPE_2__ svn_diff__position_t ;
struct TYPE_13__ {scalar_t__ length; struct TYPE_13__* next; TYPE_2__** position; } ;
typedef TYPE_3__ svn_diff__lcs_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;


 void* apr_palloc (int *,int) ;
 int * svn_diff__get_token_counts (TYPE_2__*,int ,int *) ;
 TYPE_3__* svn_diff__lcs (TYPE_2__*,TYPE_2__*,int *,int *,int ,int ,int ,int *) ;
 void* svn_diff__type_conflict ;
 void* svn_diff__type_diff_common ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;

void
svn_diff__resolve_conflict(svn_diff_t *hunk,
                           svn_diff__position_t **position_list1,
                           svn_diff__position_t **position_list2,
                           svn_diff__token_index_t num_tokens,
                           apr_pool_t *pool)
{
  apr_off_t modified_start = hunk->modified_start + 1;
  apr_off_t latest_start = hunk->latest_start + 1;
  apr_off_t common_length;
  apr_off_t modified_length = hunk->modified_length;
  apr_off_t latest_length = hunk->latest_length;
  svn_diff__position_t *start_position[2];
  svn_diff__position_t *position[2];
  svn_diff__token_index_t *token_counts[2];
  svn_diff__lcs_t *lcs = ((void*)0);
  svn_diff__lcs_t **lcs_ref = &lcs;
  svn_diff_t **diff_ref = &hunk->resolved_diff;
  apr_pool_t *subpool;





  start_position[0] = *position_list1;
  start_position[1] = *position_list2;

  while (start_position[0]->offset < modified_start)
    start_position[0] = start_position[0]->next;

  while (start_position[1]->offset < latest_start)
    start_position[1] = start_position[1]->next;

  position[0] = start_position[0];
  position[1] = start_position[1];

  common_length = modified_length < latest_length
                ? modified_length : latest_length;

  while (common_length > 0
         && position[0]->token_index == position[1]->token_index)
    {
      position[0] = position[0]->next;
      position[1] = position[1]->next;

      common_length--;
    }

  if (common_length == 0
      && modified_length == latest_length)
    {
      hunk->type = svn_diff__type_diff_common;
      hunk->resolved_diff = ((void*)0);

      *position_list1 = position[0];
      *position_list2 = position[1];

      return;
    }

  hunk->type = svn_diff__type_conflict;
  subpool = svn_pool_create(pool);




  common_length = (modified_length < latest_length
                  ? modified_length : latest_length)
                - common_length;




  if (common_length > 0)
    {
      lcs = apr_palloc(subpool, sizeof(*lcs));
      lcs->next = ((void*)0);
      lcs->position[0] = start_position[0];
      lcs->position[1] = start_position[1];
      lcs->length = common_length;

      lcs_ref = &lcs->next;
    }

  modified_length -= common_length;
  latest_length -= common_length;

  modified_start = start_position[0]->offset;
  latest_start = start_position[1]->offset;

  start_position[0] = position[0];
  start_position[1] = position[1];





  if (modified_length == 0)
    {
      *position_list1 = position[0];
      position[0] = ((void*)0);
    }
  else
    {
      while (--modified_length)
        position[0] = position[0]->next;

      *position_list1 = position[0]->next;
      position[0]->next = start_position[0];
    }

  if (latest_length == 0)
    {
      *position_list2 = position[1];
      position[1] = ((void*)0);
    }
  else
    {
      while (--latest_length)
        position[1] = position[1]->next;

      *position_list2 = position[1]->next;
      position[1]->next = start_position[1];
    }

  token_counts[0] = svn_diff__get_token_counts(position[0], num_tokens,
                                               subpool);
  token_counts[1] = svn_diff__get_token_counts(position[1], num_tokens,
                                               subpool);

  *lcs_ref = svn_diff__lcs(position[0], position[1], token_counts[0],
                           token_counts[1], num_tokens, 0, 0, subpool);




  if ((*lcs_ref)->position[0]->offset == 1)
    (*lcs_ref)->position[0] = *position_list1;

  if ((*lcs_ref)->position[1]->offset == 1)
    (*lcs_ref)->position[1] = *position_list2;


  while (1)
    {
      if (modified_start < lcs->position[0]->offset
          || latest_start < lcs->position[1]->offset)
        {
          (*diff_ref) = apr_palloc(pool, sizeof(**diff_ref));

          (*diff_ref)->type = svn_diff__type_conflict;
          (*diff_ref)->original_start = hunk->original_start;
          (*diff_ref)->original_length = hunk->original_length;
          (*diff_ref)->modified_start = modified_start - 1;
          (*diff_ref)->modified_length = lcs->position[0]->offset
                                         - modified_start;
          (*diff_ref)->latest_start = latest_start - 1;
          (*diff_ref)->latest_length = lcs->position[1]->offset
                                       - latest_start;
          (*diff_ref)->resolved_diff = ((void*)0);

          diff_ref = &(*diff_ref)->next;
        }


      if (lcs->length == 0)
        break;

      modified_start = lcs->position[0]->offset;
      latest_start = lcs->position[1]->offset;

      (*diff_ref) = apr_palloc(pool, sizeof(**diff_ref));

      (*diff_ref)->type = svn_diff__type_diff_common;
      (*diff_ref)->original_start = hunk->original_start;
      (*diff_ref)->original_length = hunk->original_length;
      (*diff_ref)->modified_start = modified_start - 1;
      (*diff_ref)->modified_length = lcs->length;
      (*diff_ref)->latest_start = latest_start - 1;
      (*diff_ref)->latest_length = lcs->length;
      (*diff_ref)->resolved_diff = ((void*)0);

      diff_ref = &(*diff_ref)->next;

      modified_start += lcs->length;
      latest_start += lcs->length;

      lcs = lcs->next;
    }

  *diff_ref = ((void*)0);

  svn_pool_destroy(subpool);
}
