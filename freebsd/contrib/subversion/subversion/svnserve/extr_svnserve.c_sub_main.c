
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_2__ ;
typedef struct TYPE_35__ TYPE_1__ ;


typedef int svn_stream_t ;
typedef int svn_ra_svn_conn_t ;
typedef int svn_node_kind_t ;
struct TYPE_35__ {scalar_t__ apr_err; } ;
typedef TYPE_1__ svn_error_t ;
struct TYPE_36__ {int cache_size; void* single_threaded; } ;
typedef TYPE_2__ svn_cache_config_t ;
typedef int svn_boolean_t ;
struct TYPE_37__ {char* root; int tunnel; char const* tunnel_user; int memory_cache_size; int zero_copy_limit; int error_check_interval; int max_request_size; int max_response_size; int * logger; int compression_level; int * config_pool; int * cfg; int * base; int * fs_config; void* vhost; void* read_only; int username_case; } ;
typedef TYPE_3__ serve_params_t ;
typedef enum run_mode { ____Placeholder_run_mode } run_mode ;
typedef enum connection_handling_mode { ____Placeholder_connection_handling_mode } connection_handling_mode ;
struct TYPE_38__ {int pool; } ;
typedef TYPE_4__ connection_t ;
typedef int apr_uint64_t ;
typedef int apr_uint16_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_socket_t ;
struct TYPE_39__ {int family; } ;
typedef TYPE_5__ apr_sockaddr_t ;
typedef int apr_size_t ;
typedef int apr_proc_t ;
typedef int apr_pool_t ;
typedef int apr_int32_t ;
struct TYPE_40__ {int ind; } ;
typedef TYPE_6__ apr_getopt_t ;


 int ACCEPT_BACKLOG ;
 scalar_t__ APR_FROM_OS_ERROR (int ) ;
 scalar_t__ APR_INCHILD ;
 int APR_INET ;
 int APR_INET6 ;
 scalar_t__ APR_INPARENT ;
 int APR_IPV4_ADDR_OK ;
 int APR_IPV6_ADDR_OK ;
 int APR_PROC_DETACH_DAEMONIZE ;
 int APR_PROTO_TCP ;
 int APR_SO_REUSEADDR ;
 scalar_t__ APR_STATUS_IS_EOF (scalar_t__) ;
 scalar_t__ APR_SUCCESS ;
 int APR_UINT16_MAX ;
 int APR_UNSPEC ;
 int CASE_ASIS ;
 int CONNECTION_DEFAULT ;
 int ERROR_FAILED_SERVICE_CONTROLLER_CONNECT ;
 int EXIT_FAILURE ;
 void* FALSE ;
 int INVALID_SOCKET ;
 int MAX_REQUEST_SIZE ;
 int SIGCHLD ;
 int SIGPIPE ;
 int SIGXFSZ ;
 int SIG_IGN ;
 int SOCK_STREAM ;
 int SVN_DELTA_COMPRESSION_LEVEL_DEFAULT ;
 int SVN_DELTA_COMPRESSION_LEVEL_MAX ;
 int SVN_DELTA_COMPRESSION_LEVEL_NONE ;
 int SVN_ERR (int ) ;
 int SVN_ERR_CL_ARG_PARSING_ERROR ;
 int SVN_ERR_ILLEGAL_TARGET ;
 int SVN_FS_CONFIG_FSFS_BLOCK_READ ;
 int SVN_FS_CONFIG_FSFS_CACHE_DELTAS ;
 int SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS ;
 int SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS ;
 int SVN_FS_CONFIG_FSFS_CACHE_REVPROPS ;
 TYPE_1__* SVN_NO_ERROR ;
 int SVN_RA_SVN_PORT ;
 int THREADPOOL_MAX_SIZE ;
 int THREADPOOL_MIN_SIZE ;
 int THREADPOOL_THREAD_IDLE_LIMIT ;
 void* TRUE ;
 char* _ (char*) ;
 int accept_connection (TYPE_4__**,int *,TYPE_3__*,int,int *) ;
 scalar_t__ apr_getopt_long (TYPE_6__*,int ,int*,char const**) ;
 int * apr_hash_make (int *) ;
 scalar_t__ apr_os_sock_get (int *,int *) ;
 int apr_pool_cleanup_null ;
 int apr_pool_cleanup_register (int *,int *,int ,int ) ;
 int apr_proc_detach (int ) ;
 scalar_t__ apr_proc_fork (int *,int ) ;
 int apr_signal (int ,int ) ;
 scalar_t__ apr_sockaddr_info_get (TYPE_5__**,char const*,int,int ,int ,int *) ;
 scalar_t__ apr_socket_bind (int *,TYPE_5__*) ;
 int apr_socket_close (int *) ;
 scalar_t__ apr_socket_create (int **,int ,int ,int ,...) ;
 scalar_t__ apr_socket_listen (int *,int ) ;
 scalar_t__ apr_socket_opt_set (int *,int ,int) ;
 int apr_strtoi64 (char const*,int *,int ) ;
 scalar_t__ apr_thread_pool_create (int **,int,int,int *) ;
 int apr_thread_pool_idle_wait_set (int *,int ) ;
 scalar_t__ apr_thread_pool_push (int *,int ,TYPE_4__*,int ,int *) ;
 int apr_thread_pool_threshold_set (int *,int ) ;
 int atoi (char const*) ;
 int attach_connection (TYPE_4__*) ;
 int check_lib_versions () ;
 int close_connection (TYPE_4__*) ;



 int connection_pools ;
 int cyrus_init (int *) ;
 int help (int *) ;
 int logger__create (int **,char const*,int *) ;
 int logger__create_for_stderr (int **,int *) ;
 int logger__log_error (int *,TYPE_1__*,int *,int *) ;
 int redirect_stdout ;
 int run_mode_daemon ;
 int run_mode_inetd ;
 int run_mode_listen_once ;
 int run_mode_service ;
 int run_mode_tunnel ;
 int run_mode_unspecified ;
 TYPE_1__* serve (int *,TYPE_3__*,int *) ;
 TYPE_1__* serve_socket (TYPE_4__*,int ) ;
 int serve_thread ;
 int sigchld_handler ;
 int stderr ;
 TYPE_2__* svn_cache_config_get () ;
 int svn_cache_config_set (TYPE_2__*) ;
 int svn_cmdline__getopt_init (TYPE_6__**,int,char const**,int *) ;
 TYPE_1__* svn_cmdline_fprintf (int ,int *,char*) ;
 TYPE_1__* svn_cmdline_fputs (char*,char*,int *,...) ;
 int svn_cstring_atoui64 (int*,char const*) ;
 TYPE_1__* svn_cstring_strtoui64 (int*,char const*,int ,int ,int) ;
 int * svn_dirent_dirname (char const*,int *) ;
 int svn_dirent_get_absolute (char const**,char const*,int *) ;
 void* svn_dirent_internal_style (char const*,int *) ;
 int svn_error_clear (TYPE_1__*) ;
 TYPE_1__* svn_error_create (int ,int *,char*) ;
 TYPE_1__* svn_error_createf (int ,TYPE_1__*,char*,char const*) ;
 TYPE_1__* svn_error_wrap_apr (scalar_t__,char*) ;
 int svn_fs_initialize (int *) ;
 int svn_handle_error2 (TYPE_1__*,int ,void*,char*) ;
 int svn_hash_sets (int *,int ,char*) ;
 int svn_io_check_resolved_path (char const*,int *,int *) ;
 int svn_node_dir ;
 int * svn_pool_create (int *) ;
 int svn_pool_destroy (int *) ;
 int * svn_ra_svn_create_conn5 (int *,int *,int *,int ,int,int,int,int,int *) ;
 int svn_repos__config_pool_create (int **,int,int *) ;
 int svn_repos__config_pool_get (int **,int *,char const*,void*,int *,int *) ;
 int svn_repos_authz_initialize (int *) ;
 int svn_root_pools__create (int *) ;
 int svn_stream_for_stdin2 (int **,void*,int *) ;
 int svn_stream_for_stdout (int **,int *) ;
 int svn_tristate__from_word (char const*) ;
 int svn_tristate_true ;
 int svn_utf_cstring_to_utf8 (char const**,char const*,int *) ;
 int svnserve__options ;
 int * threads ;
 int usage (char const*,int *) ;
 int version (int,int *) ;
 int winservice_running () ;
 TYPE_1__* winservice_start () ;
 int winservice_svnserve_accept_socket ;
 int write_pid_file (char const*,int *) ;

__attribute__((used)) static svn_error_t *
sub_main(int *exit_code, int argc, const char *argv[], apr_pool_t *pool)
{
  enum run_mode run_mode = run_mode_unspecified;
  svn_boolean_t foreground = FALSE;
  apr_socket_t *sock;
  apr_sockaddr_t *sa;
  svn_error_t *err;
  apr_getopt_t *os;
  int opt;
  serve_params_t params;
  const char *arg;
  apr_status_t status;

  apr_proc_t proc;

  svn_boolean_t is_multi_threaded;
  enum connection_handling_mode handling_mode = CONNECTION_DEFAULT;
  svn_boolean_t cache_fulltexts = TRUE;
  svn_boolean_t cache_nodeprops = TRUE;
  svn_boolean_t cache_txdeltas = TRUE;
  svn_boolean_t cache_revprops = FALSE;
  svn_boolean_t use_block_read = FALSE;
  apr_uint16_t port = SVN_RA_SVN_PORT;
  const char *host = ((void*)0);
  int family = APR_INET;
  apr_int32_t sockaddr_info_flags = 0;



  svn_boolean_t quiet = FALSE;
  svn_boolean_t is_version = FALSE;
  int mode_opt_count = 0;
  int handling_opt_count = 0;
  const char *config_filename = ((void*)0);
  const char *pid_filename = ((void*)0);
  const char *log_filename = ((void*)0);
  svn_node_kind_t kind;
  apr_size_t min_thread_count = THREADPOOL_MIN_SIZE;
  apr_size_t max_thread_count = THREADPOOL_MAX_SIZE;





  SVN_ERR(check_lib_versions());


  SVN_ERR(svn_fs_initialize(pool));


  SVN_ERR(svn_repos_authz_initialize(pool));

  SVN_ERR(svn_cmdline__getopt_init(&os, argc, argv, pool));

  params.root = "/";
  params.tunnel = FALSE;
  params.tunnel_user = ((void*)0);
  params.read_only = FALSE;
  params.base = ((void*)0);
  params.cfg = ((void*)0);
  params.compression_level = SVN_DELTA_COMPRESSION_LEVEL_DEFAULT;
  params.logger = ((void*)0);
  params.config_pool = ((void*)0);
  params.fs_config = ((void*)0);
  params.vhost = FALSE;
  params.username_case = CASE_ASIS;
  params.memory_cache_size = (apr_uint64_t)-1;
  params.zero_copy_limit = 0;
  params.error_check_interval = 4096;
  params.max_request_size = MAX_REQUEST_SIZE * 0x100000;
  params.max_response_size = 0;

  while (1)
    {
      status = apr_getopt_long(os, svnserve__options, &opt, &arg);
      if (APR_STATUS_IS_EOF(status))
        break;
      if (status != APR_SUCCESS)
        {
          usage(argv[0], pool);
          *exit_code = EXIT_FAILURE;
          return SVN_NO_ERROR;
        }
      switch (opt)
        {
        case '6':




          break;

        case 'h':
          help(pool);
          return SVN_NO_ERROR;

        case 'q':
          quiet = TRUE;
          break;

        case 132:
          is_version = TRUE;
          break;

        case 'd':
          if (run_mode != run_mode_daemon)
            {
              run_mode = run_mode_daemon;
              mode_opt_count++;
            }
          break;

        case 144:
          foreground = TRUE;
          break;

        case 134:
          handling_mode = 129;
          handling_opt_count++;
          break;

        case 'i':
          if (run_mode != run_mode_inetd)
            {
              run_mode = run_mode_inetd;
              mode_opt_count++;
            }
          break;

        case 142:
          {
            apr_uint64_t val;

            err = svn_cstring_strtoui64(&val, arg, 0, APR_UINT16_MAX, 10);
            if (err)
              return svn_error_createf(SVN_ERR_CL_ARG_PARSING_ERROR, err,
                                       _("Invalid port '%s'"), arg);
            port = (apr_uint16_t)val;
          }
          break;

        case 143:
          host = arg;
          break;

        case 't':
          if (run_mode != run_mode_tunnel)
            {
              run_mode = run_mode_tunnel;
              mode_opt_count++;
            }
          break;

        case 133:
          params.tunnel_user = arg;
          break;

        case 'X':
          if (run_mode != run_mode_listen_once)
            {
              run_mode = run_mode_listen_once;
              mode_opt_count++;
            }
          break;

        case 'r':
          SVN_ERR(svn_utf_cstring_to_utf8(&params.root, arg, pool));

          SVN_ERR(svn_io_check_resolved_path(params.root, &kind, pool));
          if (kind != svn_node_dir)
            {
              return svn_error_createf(SVN_ERR_ILLEGAL_TARGET, ((void*)0),
                       _("Root path '%s' does not exist "
                         "or is not a directory"), params.root);
            }

          params.root = svn_dirent_internal_style(params.root, pool);
          SVN_ERR(svn_dirent_get_absolute(&params.root, params.root, pool));
          break;

        case 'R':
          params.read_only = TRUE;
          break;

        case 'T':
          handling_mode = 128;
          handling_opt_count++;
          break;

        case 'c':
          params.compression_level = atoi(arg);
          if (params.compression_level < SVN_DELTA_COMPRESSION_LEVEL_NONE)
            params.compression_level = SVN_DELTA_COMPRESSION_LEVEL_NONE;
          if (params.compression_level > SVN_DELTA_COMPRESSION_LEVEL_MAX)
            params.compression_level = SVN_DELTA_COMPRESSION_LEVEL_MAX;
          break;

        case 'M':
          {
            apr_uint64_t sz_val;
            SVN_ERR(svn_cstring_atoui64(&sz_val, arg));

            params.memory_cache_size = 0x100000 * sz_val;
          }
          break;

        case 147:
          cache_txdeltas = svn_tristate__from_word(arg) == svn_tristate_true;
          break;

        case 150:
          cache_fulltexts = svn_tristate__from_word(arg) == svn_tristate_true;
          break;

        case 148:
          cache_revprops = svn_tristate__from_word(arg) == svn_tristate_true;
          break;

        case 149:
          cache_nodeprops = svn_tristate__from_word(arg) == svn_tristate_true;
          break;

        case 151:
          use_block_read = svn_tristate__from_word(arg) == svn_tristate_true;
          break;

        case 146:
          {
            apr_size_t bandwidth = (apr_size_t)apr_strtoi64(arg, ((void*)0), 0);


            if (bandwidth >= 1000)
              {


                params.zero_copy_limit = bandwidth * 120;


                params.error_check_interval = bandwidth * 120;
              }
          }
          break;

        case 140:
          params.max_request_size = 0x100000 * apr_strtoi64(arg, ((void*)0), 0);
          break;

        case 139:
          params.max_response_size = 0x100000 * apr_strtoi64(arg, ((void*)0), 0);
          break;

        case 137:
          min_thread_count = (apr_size_t)apr_strtoi64(arg, ((void*)0), 0);
          break;

        case 138:
          max_thread_count = (apr_size_t)apr_strtoi64(arg, ((void*)0), 0);
          break;
        case 145:
          SVN_ERR(svn_utf_cstring_to_utf8(&config_filename, arg, pool));
          config_filename = svn_dirent_internal_style(config_filename, pool);
          SVN_ERR(svn_dirent_get_absolute(&config_filename, config_filename,
                                          pool));
          break;

        case 136:
          SVN_ERR(svn_utf_cstring_to_utf8(&pid_filename, arg, pool));
          pid_filename = svn_dirent_internal_style(pid_filename, pool);
          SVN_ERR(svn_dirent_get_absolute(&pid_filename, pid_filename, pool));
          break;

         case 131:
           params.vhost = TRUE;
           break;

         case 141:
          SVN_ERR(svn_utf_cstring_to_utf8(&log_filename, arg, pool));
          log_filename = svn_dirent_internal_style(log_filename, pool);
          SVN_ERR(svn_dirent_get_absolute(&log_filename, log_filename, pool));
          break;

        }
    }

  if (is_version)
    {
      SVN_ERR(version(quiet, pool));
      return SVN_NO_ERROR;
    }

  if (os->ind != argc)
    {
      usage(argv[0], pool);
      *exit_code = EXIT_FAILURE;
      return SVN_NO_ERROR;
    }

  if (mode_opt_count != 1)
    {
      svn_error_clear(svn_cmdline_fputs(




                      _("You must specify exactly one of -d, -i, -t or -X.\n"),

                       stderr, pool));
      usage(argv[0], pool);
      *exit_code = EXIT_FAILURE;
      return SVN_NO_ERROR;
    }

  if (handling_opt_count > 1)
    {
      svn_error_clear(svn_cmdline_fputs(
                      _("You may only specify one of -T or --single-thread\n"),
                      stderr, pool));
      usage(argv[0], pool);
      *exit_code = EXIT_FAILURE;
      return SVN_NO_ERROR;
    }


  is_multi_threaded = handling_mode == 128;
  params.fs_config = apr_hash_make(pool);
  svn_hash_sets(params.fs_config, SVN_FS_CONFIG_FSFS_CACHE_DELTAS,
                cache_txdeltas ? "1" :"0");
  svn_hash_sets(params.fs_config, SVN_FS_CONFIG_FSFS_CACHE_FULLTEXTS,
                cache_fulltexts ? "1" :"0");
  svn_hash_sets(params.fs_config, SVN_FS_CONFIG_FSFS_CACHE_NODEPROPS,
                cache_nodeprops ? "1" :"0");
  svn_hash_sets(params.fs_config, SVN_FS_CONFIG_FSFS_CACHE_REVPROPS,
                cache_revprops ? "2" :"0");
  svn_hash_sets(params.fs_config, SVN_FS_CONFIG_FSFS_BLOCK_READ,
                use_block_read ? "1" :"0");

  SVN_ERR(svn_repos__config_pool_create(&params.config_pool,
                                        is_multi_threaded,
                                        pool));



  if (config_filename)
    {
      params.base = svn_dirent_dirname(config_filename, pool);

      SVN_ERR(svn_repos__config_pool_get(&params.cfg,
                                         params.config_pool,
                                         config_filename,
                                         TRUE,
                                         ((void*)0),
                                         pool));
    }

  if (log_filename)
    SVN_ERR(logger__create(&params.logger, log_filename, pool));
  else if (run_mode == run_mode_listen_once)
    SVN_ERR(logger__create_for_stderr(&params.logger, pool));

  if (params.tunnel_user && run_mode != run_mode_tunnel)
    {
      return svn_error_create(SVN_ERR_CL_ARG_PARSING_ERROR, ((void*)0),
               _("Option --tunnel-user is only valid in tunnel mode"));
    }

  if (run_mode == run_mode_inetd || run_mode == run_mode_tunnel)
    {
      apr_pool_t *connection_pool;
      svn_ra_svn_conn_t *conn;
      svn_stream_t *stdin_stream;
      svn_stream_t *stdout_stream;

      params.tunnel = (run_mode == run_mode_tunnel);
      apr_pool_cleanup_register(pool, pool, apr_pool_cleanup_null,
                                redirect_stdout);



      SVN_ERR(svn_stream_for_stdin2(&stdin_stream, FALSE, pool));
      SVN_ERR(svn_stream_for_stdout(&stdout_stream, pool));




      connection_pool = svn_pool_create(pool);
      conn = svn_ra_svn_create_conn5(((void*)0), stdin_stream, stdout_stream,
                                     params.compression_level,
                                     params.zero_copy_limit,
                                     params.error_check_interval,
                                     params.max_request_size,
                                     params.max_response_size,
                                     connection_pool);
      err = serve(conn, &params, connection_pool);
      svn_pool_destroy(connection_pool);

      return err;
    }
  status = apr_sockaddr_info_get(&sa, host, family, port,
                                 sockaddr_info_flags, pool);
  if (status)
    {
      return svn_error_wrap_apr(status, _("Can't get address info"));
    }






  status = apr_socket_create(&sock, sa->family, SOCK_STREAM, APR_PROTO_TCP,
                             pool);

  if (status)
    {
      return svn_error_wrap_apr(status, _("Can't create server socket"));
    }



  status = apr_socket_opt_set(sock, APR_SO_REUSEADDR, 1);
  if (status)
    {
      return svn_error_wrap_apr(status, _("Can't set options on server socket"));
    }

  status = apr_socket_bind(sock, sa);
  if (status)
    {
      return svn_error_wrap_apr(status, _("Can't bind server socket"));
    }

  status = apr_socket_listen(sock, ACCEPT_BACKLOG);
  if (status)
    {
      return svn_error_wrap_apr(status, _("Can't listen on server socket"));
    }
  if (pid_filename)
    SVN_ERR(write_pid_file(pid_filename, pool));
  {
    svn_cache_config_t settings = *svn_cache_config_get();

    if (params.memory_cache_size != -1)
      settings.cache_size = params.memory_cache_size;

    settings.single_threaded = TRUE;
    if (handling_mode == 128)
      {
      }

    svn_cache_config_set(&settings);
  }
  while (1)
    {
      connection_t *connection = ((void*)0);
      SVN_ERR(accept_connection(&connection, sock, &params, handling_mode,
                                pool));
      if (run_mode == run_mode_listen_once)
        {
          err = serve_socket(connection, connection->pool);
          close_connection(connection);
          return err;
        }

      switch (handling_mode)
        {
        case 130:
          break;

        case 128:
          break;

        case 129:


          svn_error_clear(serve_socket(connection, connection->pool));
        }

      close_connection(connection);
    }


}
