
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char* data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_error_t ;
typedef int svn_client_ctx_t ;
struct TYPE_10__ {int encoding; scalar_t__ message; TYPE_1__* filedata; } ;
typedef TYPE_3__ svn_cl__opt_state_t ;
typedef int apr_pool_t ;
struct TYPE_8__ {scalar_t__ len; scalar_t__ data; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CL_BAD_LOG_MESSAGE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 scalar_t__ strlen (scalar_t__) ;
 int * svn_error_create (int ,int *,int ) ;
 TYPE_2__* svn_string_create (scalar_t__,int *) ;
 int svn_subst_translate_string2 (TYPE_2__**,int *,int *,TYPE_2__*,int ,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
get_comment(const char **comment, svn_client_ctx_t *ctx,
            svn_cl__opt_state_t *opt_state, apr_pool_t *pool)
{
  svn_string_t *comment_string;

  if (opt_state->filedata)
    {

      if (strlen(opt_state->filedata->data) < opt_state->filedata->len)
        {


          return svn_error_create(SVN_ERR_CL_BAD_LOG_MESSAGE, ((void*)0),
                                  _("Lock comment contains a zero byte"));
        }
      comment_string = svn_string_create(opt_state->filedata->data, pool);

    }
  else if (opt_state->message)
    {

      comment_string = svn_string_create(opt_state->message, pool);
    }
  else
    {
      *comment = ((void*)0);
      return SVN_NO_ERROR;
    }


  SVN_ERR(svn_subst_translate_string2(&comment_string, ((void*)0), ((void*)0),
                                      comment_string, opt_state->encoding,
                                      FALSE, pool, pool));
  *comment = comment_string->data;

  return SVN_NO_ERROR;
}
