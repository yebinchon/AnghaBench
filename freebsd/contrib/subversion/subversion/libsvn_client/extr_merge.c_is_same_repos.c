
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int repos_uuid; int repos_root_url; } ;
typedef TYPE_1__ svn_client__pathrev_t ;
typedef int svn_boolean_t ;


 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static svn_boolean_t
is_same_repos(const svn_client__pathrev_t *location1,
              const svn_client__pathrev_t *location2,
              svn_boolean_t strict_urls)
{
  if (strict_urls)
    return (strcmp(location1->repos_root_url, location2->repos_root_url) == 0
            && strcmp(location1->repos_uuid, location2->repos_uuid) == 0);
  else
    return (strcmp(location1->repos_uuid, location2->repos_uuid) == 0);
}
