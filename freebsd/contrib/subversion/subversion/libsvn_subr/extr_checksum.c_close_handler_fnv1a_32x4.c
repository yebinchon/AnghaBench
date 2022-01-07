
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct TYPE_2__ {scalar_t__ digest; } ;
typedef TYPE_1__ stream_baton_t ;
typedef int apr_uint32_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int close_handler (void*) ;
 int ntohl (int ) ;

__attribute__((used)) static svn_error_t *
close_handler_fnv1a_32x4(void *baton)
{
  stream_baton_t *b = baton;
  SVN_ERR(close_handler(baton));

  *(apr_uint32_t *)b->digest = ntohl(*(apr_uint32_t *)b->digest);
  return SVN_NO_ERROR;
}
