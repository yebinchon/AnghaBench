
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {void* kind; } ;
struct TYPE_6__ {void* kind; } ;
struct TYPE_8__ {TYPE_2__ file_external_rev; TYPE_1__ file_external_peg_rev; int depth; int working_size; int kind; void* cmt_rev; void* copyfrom_rev; void* revision; } ;
typedef TYPE_3__ svn_wc_entry_t ;
typedef int apr_pool_t ;


 void* SVN_INVALID_REVNUM ;
 int SVN_WC_ENTRY_WORKING_SIZE_UNKNOWN ;
 TYPE_3__* apr_pcalloc (int *,int) ;
 int svn_depth_infinity ;
 int svn_node_none ;
 void* svn_opt_revision_unspecified ;

__attribute__((used)) static svn_wc_entry_t *
alloc_entry(apr_pool_t *pool)
{
  svn_wc_entry_t *entry = apr_pcalloc(pool, sizeof(*entry));
  entry->revision = SVN_INVALID_REVNUM;
  entry->copyfrom_rev = SVN_INVALID_REVNUM;
  entry->cmt_rev = SVN_INVALID_REVNUM;
  entry->kind = svn_node_none;
  entry->working_size = SVN_WC_ENTRY_WORKING_SIZE_UNKNOWN;
  entry->depth = svn_depth_infinity;
  entry->file_external_peg_rev.kind = svn_opt_revision_unspecified;
  entry->file_external_rev.kind = svn_opt_revision_unspecified;
  return entry;
}
