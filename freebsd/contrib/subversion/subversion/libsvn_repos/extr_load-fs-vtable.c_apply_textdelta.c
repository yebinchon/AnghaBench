
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * svn_txdelta_window_handler_t ;
typedef int svn_error_t ;
struct revision_baton {int txn_root; scalar_t__ skipped; } ;
struct node_baton {int pool; int result_checksum; int base_checksum; int path; struct revision_baton* rb; } ;


 int * SVN_NO_ERROR ;
 int svn_checksum_to_cstring (int ,int ) ;
 int * svn_fs_apply_textdelta (int **,void**,int ,int ,int ,int ,int ) ;

__attribute__((used)) static svn_error_t *
apply_textdelta(svn_txdelta_window_handler_t *handler,
                void **handler_baton,
                void *node_baton)
{
  struct node_baton *nb = node_baton;
  struct revision_baton *rb = nb->rb;


  if (rb->skipped)
    {
      *handler = ((void*)0);
      return SVN_NO_ERROR;
    }

  return svn_fs_apply_textdelta(handler, handler_baton,
                                rb->txn_root, nb->path,
                                svn_checksum_to_cstring(nb->base_checksum,
                                                        nb->pool),
                                svn_checksum_to_cstring(nb->result_checksum,
                                                        nb->pool),
                                nb->pool);
}
