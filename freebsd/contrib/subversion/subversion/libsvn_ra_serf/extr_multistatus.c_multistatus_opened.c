
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int svn_ra_serf__xml_estate_t ;
struct TYPE_3__ {char* name; int xmlns; } ;
typedef TYPE_1__ svn_ra_serf__dav_props_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;


 int MS_PROPSTAT ;

 int SVN_DAV_PROP_NS_SVN ;
 int * SVN_NO_ERROR ;
 int SVN_PROP_PREFIX ;
 int SVN_VA_NULL ;

 char* apr_pstrcat (int *,int ,char*,int ) ;
 int strcmp (int ,int ) ;
 int svn_ra_serf__xml_note (int *,int ,char*,char const*) ;

__attribute__((used)) static svn_error_t *
multistatus_opened(svn_ra_serf__xml_estate_t *xes,
                   void *baton,
                   int entered_state,
                   const svn_ra_serf__dav_props_t *tag,
                   apr_pool_t *scratch_pool)
{

  const char *propname;

  switch (entered_state)
    {
      case 129:
        if (strcmp(tag->xmlns, SVN_DAV_PROP_NS_SVN) == 0)
          propname = apr_pstrcat(scratch_pool, SVN_PROP_PREFIX, tag->name,
                                 SVN_VA_NULL);
        else
          propname = tag->name;
        svn_ra_serf__xml_note(xes, MS_PROPSTAT, "propname", propname);
        break;
      case 128:

        break;
    }

  return SVN_NO_ERROR;
}
