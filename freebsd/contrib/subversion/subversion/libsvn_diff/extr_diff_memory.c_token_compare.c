
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_diff__normalize_state_t ;
struct TYPE_4__ {char** normalization_buf; int normalization_options; } ;
typedef TYPE_2__ diff_mem_baton_t ;
typedef scalar_t__ apr_off_t ;


 int * SVN_NO_ERROR ;
 int memcmp (char*,char*,size_t) ;
 int svn_diff__normalize_buffer (char**,scalar_t__*,int *,int ,int ) ;
 int svn_diff__normalize_state_normal ;

__attribute__((used)) static svn_error_t *
token_compare(void *baton, void *token1, void *token2, int *result)
{


  diff_mem_baton_t *btn = baton;
  svn_string_t *t1 = token1;
  svn_string_t *t2 = token2;
  char *buf1 = btn->normalization_buf[0];
  char *buf2 = btn->normalization_buf[1];
  apr_off_t len1 = t1->len;
  apr_off_t len2 = t2->len;
  svn_diff__normalize_state_t state = svn_diff__normalize_state_normal;

  svn_diff__normalize_buffer(&buf1, &len1, &state, t1->data,
                             btn->normalization_options);
  state = svn_diff__normalize_state_normal;
  svn_diff__normalize_buffer(&buf2, &len2, &state, t2->data,
                             btn->normalization_options);

  if (len1 != len2)
    *result = (len1 < len2) ? -1 : 1;
  else
    *result = (len1 == 0) ? 0 : memcmp(buf1, buf2, (size_t) len1);

  return SVN_NO_ERROR;
}
