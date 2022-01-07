
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int vtxn_root_stub; int vtxn_stub; int txn_root_stub; int txn_stub; } ;
typedef TYPE_1__ svn_ra_serf__session_t ;
struct TYPE_5__ {TYPE_3__* commit_ctx; } ;
typedef TYPE_2__ post_response_ctx_t ;
struct TYPE_6__ {int pool; void* txn_root_url; void* txn_url; TYPE_1__* session; } ;
typedef TYPE_3__ commit_context_t ;


 int SVN_DAV_TXN_NAME_HEADER ;
 int SVN_DAV_VTXN_NAME_HEADER ;
 scalar_t__ svn_cstring_casecmp (char const*,int ) ;
 void* svn_path_url_add_component2 (int ,char const*,int ) ;

__attribute__((used)) static int
post_headers_iterator_callback(void *baton,
                               const char *key,
                               const char *val)
{
  post_response_ctx_t *prc = baton;
  commit_context_t *prc_cc = prc->commit_ctx;
  svn_ra_serf__session_t *sess = prc_cc->session;






  if (svn_cstring_casecmp(key, SVN_DAV_TXN_NAME_HEADER) == 0)
    {


      prc_cc->txn_url =
        svn_path_url_add_component2(sess->txn_stub, val, prc_cc->pool);
      prc_cc->txn_root_url =
        svn_path_url_add_component2(sess->txn_root_stub, val, prc_cc->pool);
    }

  if (svn_cstring_casecmp(key, SVN_DAV_VTXN_NAME_HEADER) == 0)
    {


      prc_cc->txn_url =
        svn_path_url_add_component2(sess->vtxn_stub, val, prc_cc->pool);
      prc_cc->txn_root_url =
        svn_path_url_add_component2(sess->vtxn_root_stub, val, prc_cc->pool);
    }

  return 0;
}
