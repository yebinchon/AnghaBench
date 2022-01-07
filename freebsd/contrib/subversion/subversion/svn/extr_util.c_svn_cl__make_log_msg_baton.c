
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_error_t ;
typedef int svn_config_t ;
struct TYPE_5__ {int non_interactive; int no_unlock; int * encoding; int editor_cmd; int message; TYPE_1__* filedata; } ;
typedef TYPE_2__ svn_cl__opt_state_t ;
struct log_msg_baton {char const* base_dir; int * pool; int non_interactive; int keep_locks; int * config; int * tmpfile_left; int * message_encoding; int editor_cmd; int message; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
struct TYPE_4__ {scalar_t__ len; int data; } ;


 int SVN_CONFIG_CATEGORY_CONFIG ;
 int SVN_CONFIG_OPTION_LOG_ENCODING ;
 int SVN_CONFIG_SECTION_MISCELLANY ;
 int SVN_ERR_CL_BAD_LOG_MESSAGE ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 struct log_msg_baton* apr_pcalloc (int *,int) ;
 scalar_t__ strlen (int ) ;
 int svn_config_get (int *,int **,int ,int ,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_hash_gets (int *,int ) ;

svn_error_t *
svn_cl__make_log_msg_baton(void **baton,
                           svn_cl__opt_state_t *opt_state,
                           const char *base_dir ,
                           apr_hash_t *config,
                           apr_pool_t *pool)
{
  struct log_msg_baton *lmb = apr_pcalloc(pool, sizeof(*lmb));

  if (opt_state->filedata)
    {
      if (strlen(opt_state->filedata->data) < opt_state->filedata->len)
        {




          return svn_error_create(SVN_ERR_CL_BAD_LOG_MESSAGE, ((void*)0),
                                  _("Log message contains a zero byte"));
        }
      lmb->message = opt_state->filedata->data;
    }
  else
    {
      lmb->message = opt_state->message;
    }

  lmb->editor_cmd = opt_state->editor_cmd;
  if (opt_state->encoding)
    {
      lmb->message_encoding = opt_state->encoding;
    }
  else if (config)
    {
      svn_config_t *cfg = svn_hash_gets(config, SVN_CONFIG_CATEGORY_CONFIG);
      svn_config_get(cfg, &(lmb->message_encoding),
                     SVN_CONFIG_SECTION_MISCELLANY,
                     SVN_CONFIG_OPTION_LOG_ENCODING,
                     ((void*)0));
    }
  else
    lmb->message_encoding = ((void*)0);

  lmb->base_dir = base_dir;
  lmb->tmpfile_left = ((void*)0);
  lmb->config = config;
  lmb->keep_locks = opt_state->no_unlock;
  lmb->non_interactive = opt_state->non_interactive;
  lmb->pool = pool;
  *baton = lmb;
  return SVN_NO_ERROR;
}
