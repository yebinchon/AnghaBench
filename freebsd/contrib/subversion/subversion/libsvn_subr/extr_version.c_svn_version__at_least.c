
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int major; int minor; int patch; scalar_t__* tag; } ;
typedef TYPE_1__ svn_version_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;

svn_boolean_t
svn_version__at_least(const svn_version_t *version,
                      int major,
                      int minor,
                      int patch)
{

  if (version->major < major)
    return FALSE;
  if (version->major > major)
    return TRUE;


  if (version->minor < minor)
    return FALSE;
  if (version->minor > minor)
    return TRUE;



  if (version->patch < patch)
    return FALSE;
  if (version->patch > patch)
    return TRUE;




  if (version->tag && version->tag[0])
    return FALSE;

  return TRUE;
}
