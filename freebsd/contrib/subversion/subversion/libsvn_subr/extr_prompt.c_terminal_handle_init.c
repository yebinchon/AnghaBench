
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pool; void* close_handles; void* noecho; int * outfd; int * infd; } ;
typedef TYPE_1__ terminal_handle_t ;
typedef void* svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_file_t ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
terminal_handle_init(terminal_handle_t *terminal,
                     apr_file_t *infd, apr_file_t *outfd,
                     svn_boolean_t noecho, svn_boolean_t close_handles,
                     apr_pool_t *pool)
{
  memset(terminal, 0, sizeof(*terminal));
  terminal->infd = infd;
  terminal->outfd = outfd;
  terminal->noecho = noecho;
  terminal->close_handles = close_handles;
  terminal->pool = pool;
}
