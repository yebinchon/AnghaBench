
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int dummy; } ;
struct passwd {char* pw_dir; } ;
typedef int buf ;
struct TYPE_3__ {struct passwd* pw; } ;
typedef TYPE_1__ Session ;


 int lc ;
 scalar_t__ login_getcapbool (int ,char*,int ) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;

int
check_quietlogin(Session *s, const char *command)
{
 char buf[256];
 struct passwd *pw = s->pw;
 struct stat st;


 if (command != ((void*)0))
  return 1;
 snprintf(buf, sizeof(buf), "%.200s/.hushlogin", pw->pw_dir);




 if (stat(buf, &st) >= 0)
  return 1;

 return 0;
}
