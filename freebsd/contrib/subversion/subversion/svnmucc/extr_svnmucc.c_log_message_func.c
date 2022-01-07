
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {char* data; } ;
typedef TYPE_2__ svn_string_t ;
typedef int svn_error_t ;
struct log_message_baton {char* log_message; TYPE_1__* ctx; scalar_t__ non_interactive; } ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_8__ {int config; } ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CL_INSUFFICIENT_ARGS ;
 int SVN_ERR_W (int ,int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int svn_cmdline__edit_string_externally (TYPE_2__**,int *,int *,char*,TYPE_2__*,char*,int ,int ,int *,int *) ;
 int * svn_error_create (int ,int *,int ) ;
 TYPE_2__* svn_string_create (char*,int *) ;
 int svn_subst_translate_string2 (TYPE_2__**,int *,int *,TYPE_2__*,int *,int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
log_message_func(const char **log_msg,
                 const char **tmp_file,
                 const apr_array_header_t *commit_items,
                 void *baton,
                 apr_pool_t *pool)
{
  struct log_message_baton *lmb = baton;

  *tmp_file = ((void*)0);

  if (lmb->log_message)
    {
      svn_string_t *message = svn_string_create(lmb->log_message, pool);

      SVN_ERR_W(svn_subst_translate_string2(&message, ((void*)0), ((void*)0),
                                            message, ((void*)0), FALSE,
                                            pool, pool),
                _("Error normalizing log message to internal format"));

      *log_msg = message->data;

      return SVN_NO_ERROR;
    }

  if (lmb->non_interactive)
    {
      return svn_error_create(SVN_ERR_CL_INSUFFICIENT_ARGS, ((void*)0),
                              _("Cannot invoke editor to get log message "
                                "when non-interactive"));
    }
  else
    {
      svn_string_t *msg = svn_string_create("", pool);

      SVN_ERR(svn_cmdline__edit_string_externally(
                      &msg, ((void*)0), ((void*)0), "", msg, "svnmucc-commit",
                      lmb->ctx->config, TRUE, ((void*)0), pool));

      if (msg && msg->data)
        *log_msg = msg->data;
      else
        *log_msg = ((void*)0);

      return SVN_NO_ERROR;
    }
}
