
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_ra_serf__xml_estate_t ;
struct TYPE_4__ {int name; int xmlns; } ;
typedef TYPE_1__ svn_ra_serf__dav_props_t ;
typedef int svn_error_t ;
struct TYPE_5__ {int ps_props; } ;
typedef TYPE_2__ propfind_context_t ;
typedef int apr_pool_t ;


 int PROPSTAT ;
 int PROPVAL ;
 int * SVN_NO_ERROR ;
 int apr_hash_make (int ) ;
 int svn_ra_serf__xml_note (int *,int,char*,int ) ;
 int svn_ra_serf__xml_state_pool (int *) ;

__attribute__((used)) static svn_error_t *
propfind_opened(svn_ra_serf__xml_estate_t *xes,
                void *baton,
                int entered_state,
                const svn_ra_serf__dav_props_t *tag,
                apr_pool_t *scratch_pool)
{
  propfind_context_t *ctx = baton;

  if (entered_state == PROPVAL)
    {
        svn_ra_serf__xml_note(xes, PROPVAL, "ns", tag->xmlns);
      svn_ra_serf__xml_note(xes, PROPVAL, "name", tag->name);
    }
  else if (entered_state == PROPSTAT)
    {
      ctx->ps_props = apr_hash_make(svn_ra_serf__xml_state_pool(xes));
    }

  return SVN_NO_ERROR;
}
