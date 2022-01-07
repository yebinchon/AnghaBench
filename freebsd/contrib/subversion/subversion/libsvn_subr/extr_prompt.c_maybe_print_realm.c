
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int terminal_handle_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int FALSE ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int apr_psprintf (int *,int ,char const*) ;
 int terminal_close (int *) ;
 int terminal_open (int **,int ,int *) ;
 int terminal_puts (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
maybe_print_realm(const char *realm, apr_pool_t *pool)
{
  if (realm)
    {
      terminal_handle_t *terminal;
      SVN_ERR(terminal_open(&terminal, FALSE, pool));
      SVN_ERR(terminal_puts(
                  apr_psprintf(pool,
                               _("Authentication realm: %s\n"), realm),
                  terminal, pool));
      SVN_ERR(terminal_close(terminal));
    }

  return SVN_NO_ERROR;
}
