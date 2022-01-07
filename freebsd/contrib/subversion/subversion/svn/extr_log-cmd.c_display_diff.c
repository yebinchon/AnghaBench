
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int svn_stream_t ;
struct TYPE_9__ {scalar_t__ number; } ;
struct TYPE_10__ {TYPE_1__ value; void* kind; } ;
typedef TYPE_2__ svn_opt_revision_t ;
struct TYPE_11__ {scalar_t__ revision; } ;
typedef TYPE_3__ svn_log_entry_t ;
typedef int svn_error_t ;
typedef int svn_depth_t ;
typedef int svn_client_ctx_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 char* _ (char*) ;
 int svn_client_diff_peg6 (int *,char const*,TYPE_2__ const*,TYPE_2__*,TYPE_2__*,int *,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int *,int *,int *,int *,int *) ;
 int svn_cmdline_output_encoding (int *) ;
 int * svn_cstring_split (char const*,char*,int ,int *) ;
 void* svn_opt_revision_number ;
 int svn_stream_puts (int *,char*) ;

__attribute__((used)) static svn_error_t *
display_diff(const svn_log_entry_t *log_entry,
             const char *target_path_or_url,
             const svn_opt_revision_t *target_peg_revision,
             svn_depth_t depth,
             const char *diff_extensions,
             svn_stream_t *outstream,
             svn_stream_t *errstream,
             svn_client_ctx_t *ctx,
             apr_pool_t *pool)
{
  apr_array_header_t *diff_options;
  svn_opt_revision_t start_revision;
  svn_opt_revision_t end_revision;


  if (diff_extensions)
    diff_options = svn_cstring_split(diff_extensions, " \t\n\r",
                                     TRUE, pool);
  else
    diff_options = ((void*)0);

  start_revision.kind = svn_opt_revision_number;
  start_revision.value.number = log_entry->revision - 1;
  end_revision.kind = svn_opt_revision_number;
  end_revision.value.number = log_entry->revision;

  SVN_ERR(svn_stream_puts(outstream, "\n"));
  SVN_ERR(svn_client_diff_peg6(diff_options,
                               target_path_or_url,
                               target_peg_revision,
                               &start_revision, &end_revision,
                               ((void*)0),
                               depth,
                               FALSE ,
                               FALSE ,
                               TRUE ,
                               FALSE ,
                               FALSE ,
                               FALSE ,
                               FALSE ,
                               FALSE ,
                               svn_cmdline_output_encoding(pool),
                               outstream,
                               errstream,
                               ((void*)0),
                               ctx, pool));
  SVN_ERR(svn_stream_puts(outstream, _("\n")));
  return SVN_NO_ERROR;
}
