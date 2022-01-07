
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_diff__token_index_t ;
struct TYPE_3__ {size_t token_index; struct TYPE_3__* next; } ;
typedef TYPE_1__ svn_diff__position_t ;
typedef int apr_pool_t ;


 int* apr_palloc (int *,int) ;

svn_diff__token_index_t*
svn_diff__get_token_counts(svn_diff__position_t *loop_start,
                           svn_diff__token_index_t num_tokens,
                           apr_pool_t *pool)
{
  svn_diff__token_index_t *token_counts;
  svn_diff__token_index_t token_index;
  svn_diff__position_t *current;

  token_counts = apr_palloc(pool, num_tokens * sizeof(*token_counts));
  for (token_index = 0; token_index < num_tokens; token_index++)
    token_counts[token_index] = 0;

  current = loop_start;
  if (current != ((void*)0))
    {
      do
        {
          token_counts[current->token_index]++;
          current = current->next;
        }
      while (current != loop_start);
    }

  return token_counts;
}
