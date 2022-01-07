
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct login_info {TYPE_1__* user; int from; } ;
struct group {scalar_t__ gr_gid; scalar_t__* gr_mem; } ;
struct TYPE_2__ {char* pw_name; scalar_t__ pw_gid; } ;


 int NO ;
 int YES ;
 scalar_t__ from_match (char*,struct login_info*) ;
 struct group* getgrnam (char*) ;
 int myhostname () ;
 int netgroup_match (char*,char*,char*) ;
 scalar_t__ strcasecmp (char*,scalar_t__) ;
 char* strchr (char*,char) ;
 scalar_t__ string_match (char*,char*) ;

__attribute__((used)) static int user_match(char *tok, struct login_info *item)
{
    char *string = item->user->pw_name;
    struct login_info fake_item;
    struct group *group;
    int i;
    char *at;
    if ((at = strchr(tok + 1, '@')) != 0) {
 *at = 0;
 fake_item.from = myhostname();
 return (user_match(tok, item) && from_match(at + 1, &fake_item));
    } else if (tok[0] == '@') {
 return (netgroup_match(tok + 1, (char *) 0, string));
    } else if (string_match(tok, string)) {
 return (YES);
    } else if ((group = getgrnam(tok)) != 0) {
 if (item->user->pw_gid == group->gr_gid)
     return (YES);
 for (i = 0; group->gr_mem[i]; i++)
     if (strcasecmp(string, group->gr_mem[i]) == 0)
  return (YES);
    }
    return (NO);
}
