
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_repos_t ;
typedef int svn_error_t ;
struct svnadmin_opt_state {char* fs_type; int repository_path; TYPE_1__* compatible_version; scalar_t__ bdb_log_keep; scalar_t__ bdb_txn_nosync; } ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;
typedef int apr_getopt_t ;
struct TYPE_2__ {char* tag; int patch; int minor; int major; } ;


 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int SVN_FS_CONFIG_BDB_LOG_AUTOREMOVE ;
 int SVN_FS_CONFIG_BDB_TXN_NOSYNC ;
 int SVN_FS_CONFIG_COMPATIBLE_VERSION ;
 int SVN_FS_CONFIG_FS_TYPE ;
 int SVN_FS_CONFIG_PRE_1_4_COMPATIBLE ;
 int SVN_FS_CONFIG_PRE_1_5_COMPATIBLE ;
 int SVN_FS_CONFIG_PRE_1_6_COMPATIBLE ;
 int SVN_FS_CONFIG_PRE_1_8_COMPATIBLE ;
 int SVN_FS_TYPE_BDB ;
 int SVN_FS_TYPE_FSFS ;
 int SVN_FS_TYPE_FSX ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * apr_hash_make (int *) ;
 char* apr_psprintf (int *,char*,int ,int ,int ,char*,char*) ;
 int fflush (int ) ;
 int parse_args (int *,int *,int ,int ,int *) ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;
 int svn_cmdline_fprintf (int ,int *,int ,char*,int ,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int * svn_error_createf (int ,int *,int ,int ) ;
 int svn_fs_set_warning_func (int ,int ,int *) ;
 int svn_hash_sets (int *,int ,char*) ;
 int svn_repos_create (int **,int ,int *,int *,int *,int *,int *) ;
 int svn_repos_fs (int *) ;
 int svn_version__at_least (TYPE_1__*,int,int,int ) ;
 int warning_func ;

__attribute__((used)) static svn_error_t *
subcommand_create(apr_getopt_t *os, void *baton, apr_pool_t *pool)
{
  struct svnadmin_opt_state *opt_state = baton;
  svn_repos_t *repos;
  apr_hash_t *fs_config = apr_hash_make(pool);


  SVN_ERR(parse_args(((void*)0), os, 0, 0, pool));

  svn_hash_sets(fs_config, SVN_FS_CONFIG_BDB_TXN_NOSYNC,
                (opt_state->bdb_txn_nosync ? "1" :"0"));

  svn_hash_sets(fs_config, SVN_FS_CONFIG_BDB_LOG_AUTOREMOVE,
                (opt_state->bdb_log_keep ? "0" :"1"));

  if (opt_state->fs_type)
    {





      if (0 == strcmp(opt_state->fs_type, SVN_FS_TYPE_BDB))
        {
          SVN_ERR(svn_cmdline_fprintf(
                      stderr, pool,
                      _("%swarning:"
                        " The \"%s\" repository back-end is deprecated,"
                        " consider using \"%s\" instead.\n"),
                      "svnadmin: ", SVN_FS_TYPE_BDB, SVN_FS_TYPE_FSFS));
          fflush(stderr);
        }
      svn_hash_sets(fs_config, SVN_FS_CONFIG_FS_TYPE, opt_state->fs_type);
    }

  if (opt_state->compatible_version)
    {
      if (! svn_version__at_least(opt_state->compatible_version, 1, 4, 0))
        svn_hash_sets(fs_config, SVN_FS_CONFIG_PRE_1_4_COMPATIBLE, "1");
      if (! svn_version__at_least(opt_state->compatible_version, 1, 5, 0))
        svn_hash_sets(fs_config, SVN_FS_CONFIG_PRE_1_5_COMPATIBLE, "1");
      if (! svn_version__at_least(opt_state->compatible_version, 1, 6, 0))
        svn_hash_sets(fs_config, SVN_FS_CONFIG_PRE_1_6_COMPATIBLE, "1");
      if (! svn_version__at_least(opt_state->compatible_version, 1, 8, 0))
        svn_hash_sets(fs_config, SVN_FS_CONFIG_PRE_1_8_COMPATIBLE, "1");


      svn_hash_sets(fs_config, SVN_FS_CONFIG_COMPATIBLE_VERSION,
                    apr_psprintf(pool, "%d.%d.%d%s%s",
                                 opt_state->compatible_version->major,
                                 opt_state->compatible_version->minor,
                                 opt_state->compatible_version->patch,
                                 opt_state->compatible_version->tag
                                 ? "-" : "",
                                 opt_state->compatible_version->tag
                                 ? opt_state->compatible_version->tag : ""));
    }

  if (opt_state->compatible_version)
    {
      if (! svn_version__at_least(opt_state->compatible_version, 1, 1, 0)


          && (opt_state->fs_type == ((void*)0)
              || !strcmp(opt_state->fs_type, SVN_FS_TYPE_FSFS)))
        {
          return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                                  _("Repositories compatible with 1.0.x must "
                                    "use --fs-type=bdb"));
        }

      if (! svn_version__at_least(opt_state->compatible_version, 1, 9, 0)
          && opt_state->fs_type && !strcmp(opt_state->fs_type, SVN_FS_TYPE_FSX))
        {
          return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
                                   _("Repositories compatible with 1.8.x or "
                                     "earlier cannot use --fs-type=%s"),
                                   SVN_FS_TYPE_FSX);
        }
    }

  SVN_ERR(svn_repos_create(&repos, opt_state->repository_path,
                           ((void*)0), ((void*)0), ((void*)0), fs_config, pool));
  svn_fs_set_warning_func(svn_repos_fs(repos), warning_func, ((void*)0));
  return SVN_NO_ERROR;
}
