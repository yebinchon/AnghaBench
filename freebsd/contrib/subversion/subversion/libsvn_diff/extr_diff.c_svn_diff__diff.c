
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ original_length; scalar_t__ modified_length; struct TYPE_8__* next; scalar_t__ latest_length; scalar_t__ latest_start; scalar_t__ modified_start; scalar_t__ original_start; int type; } ;
typedef TYPE_2__ svn_diff_t ;
struct TYPE_9__ {scalar_t__ length; struct TYPE_9__* next; TYPE_1__** position; } ;
typedef TYPE_3__ svn_diff__lcs_t ;
typedef scalar_t__ svn_boolean_t ;
typedef int apr_pool_t ;
typedef scalar_t__ apr_off_t ;
struct TYPE_7__ {scalar_t__ offset; } ;


 TYPE_2__* apr_palloc (int *,int) ;
 int svn_diff__type_common ;
 int svn_diff__type_diff_modified ;

svn_diff_t *
svn_diff__diff(svn_diff__lcs_t *lcs,
               apr_off_t original_start, apr_off_t modified_start,
               svn_boolean_t want_common,
               apr_pool_t *pool)
{
  svn_diff_t *diff;
  svn_diff_t **diff_ref = &diff;

  while (1)
    {
      if (original_start < lcs->position[0]->offset
          || modified_start < lcs->position[1]->offset)
      {
          (*diff_ref) = apr_palloc(pool, sizeof(**diff_ref));

          (*diff_ref)->type = svn_diff__type_diff_modified;
          (*diff_ref)->original_start = original_start - 1;
          (*diff_ref)->original_length =
            lcs->position[0]->offset - original_start;
          (*diff_ref)->modified_start = modified_start - 1;
          (*diff_ref)->modified_length =
            lcs->position[1]->offset - modified_start;
          (*diff_ref)->latest_start = 0;
          (*diff_ref)->latest_length = 0;

          diff_ref = &(*diff_ref)->next;
      }


      if (lcs->length == 0)
          break;

      original_start = lcs->position[0]->offset;
      modified_start = lcs->position[1]->offset;

      if (want_common)
        {
          (*diff_ref) = apr_palloc(pool, sizeof(**diff_ref));

          (*diff_ref)->type = svn_diff__type_common;
          (*diff_ref)->original_start = original_start - 1;
          (*diff_ref)->original_length = lcs->length;
          (*diff_ref)->modified_start = modified_start - 1;
          (*diff_ref)->modified_length = lcs->length;
          (*diff_ref)->latest_start = 0;
          (*diff_ref)->latest_length = 0;

          diff_ref = &(*diff_ref)->next;
        }

      original_start += lcs->length;
      modified_start += lcs->length;

      lcs = lcs->next;
    }

  *diff_ref = ((void*)0);

  return diff;
}
