
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
struct revision_baton_t {int rev_orig; } ;
struct node_baton_t {int props; int has_props; int node_path; int has_prop_delta; scalar_t__ do_skip; struct revision_baton_t* rb; } ;


 int SVN_ERR_STREAM_MALFORMED_DATA ;
 int * SVN_NO_ERROR ;
 int TRUE ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,int ,int ) ;
 int write_propdel_to_stringbuf (int *,char const*) ;

__attribute__((used)) static svn_error_t *
delete_node_property(void *node_baton, const char *name)
{
  struct node_baton_t *nb = node_baton;
  struct revision_baton_t *rb = nb->rb;

  if (nb->do_skip)
    return SVN_NO_ERROR;

  if (!nb->has_prop_delta)
    return svn_error_createf(SVN_ERR_STREAM_MALFORMED_DATA, ((void*)0),
                             _("Delta property block detected, but deltas "
                               "are not enabled for node '%s' in original "
                               "revision %ld"),
                             nb->node_path, rb->rev_orig);

  nb->has_props = TRUE;
  write_propdel_to_stringbuf(&(nb->props), name);

  return SVN_NO_ERROR;
}
