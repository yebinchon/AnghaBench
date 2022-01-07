
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int errbuf ;
typedef int apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int ERRFILE_KEY ;
 int apr_file_printf (int *,char*,char const*,int ) ;
 scalar_t__ apr_pool_userdata_get (void**,int ,int *) ;
 int apr_strerror (int ,char*,int) ;

__attribute__((used)) static void
handle_child_process_error(apr_pool_t *pool, apr_status_t status,
                           const char *desc)
{
  char errbuf[256];
  apr_file_t *errfile;
  void *p;


  if (apr_pool_userdata_get(&p, ERRFILE_KEY, pool))
    return;
  errfile = p;

  if (errfile)

    apr_file_printf(errfile, "%s: %s",
                    desc, apr_strerror(status, errbuf,
                                       sizeof(errbuf)));
}
