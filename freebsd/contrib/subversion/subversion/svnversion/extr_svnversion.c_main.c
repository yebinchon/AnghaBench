
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_pool_t ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int FALSE ;
 int * apr_allocator_owner_get (int ) ;
 int stderr ;
 int stdout ;
 int * sub_main (int*,int,char const**,int *) ;
 int svn_cmdline_fflush (int ) ;
 int svn_cmdline_handle_exit_error (int *,int *,char*) ;
 int svn_cmdline_init (char*,int ) ;
 int * svn_error_compose_create (int *,int ) ;
 int svn_pool_create_allocator (int ) ;
 int svn_pool_destroy (int *) ;

int
main(int argc, const char *argv[])
{
  apr_pool_t *pool;
  int exit_code = EXIT_SUCCESS;
  svn_error_t *err;


  if (svn_cmdline_init("svnversion", stderr) != EXIT_SUCCESS)
    return EXIT_FAILURE;




  pool = apr_allocator_owner_get(svn_pool_create_allocator(FALSE));

  err = sub_main(&exit_code, argc, argv, pool);



  err = svn_error_compose_create(err, svn_cmdline_fflush(stdout));

  if (err)
    {
      exit_code = EXIT_FAILURE;
      svn_cmdline_handle_exit_error(err, ((void*)0), "svnversion: ");
    }

  svn_pool_destroy(pool);
  return exit_code;
}
