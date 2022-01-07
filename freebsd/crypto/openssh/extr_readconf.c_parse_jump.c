
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* jump_host; int jump_port; char* jump_user; char* jump_extra; int * proxy_command; } ;
typedef TYPE_1__ Options ;


 int free (char*) ;
 int parse_ssh_uri (char*,char**,char**,int*) ;
 scalar_t__ parse_user_host_port (char*,char**,char**,int*) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 char* strrchr (char const*,char) ;
 void* xstrdup (char const*) ;

int
parse_jump(const char *s, Options *o, int active)
{
 char *orig, *sdup, *cp;
 char *host = ((void*)0), *user = ((void*)0);
 int ret = -1, port = -1, first;

 active &= o->proxy_command == ((void*)0) && o->jump_host == ((void*)0);

 orig = sdup = xstrdup(s);
 first = active;
 do {
  if (strcasecmp(s, "none") == 0)
   break;
  if ((cp = strrchr(sdup, ',')) == ((void*)0))
   cp = sdup;
  else
   *cp++ = '\0';

  if (first) {

   if (parse_ssh_uri(cp, &user, &host, &port) == -1 ||
       parse_user_host_port(cp, &user, &host, &port) != 0)
    goto out;
  } else {

   if (parse_ssh_uri(cp, ((void*)0), ((void*)0), ((void*)0)) == -1 ||
       parse_user_host_port(cp, ((void*)0), ((void*)0), ((void*)0)) != 0)
    goto out;
  }
  first = 0;
 } while (cp != sdup);

 if (active) {
  if (strcasecmp(s, "none") == 0) {
   o->jump_host = xstrdup("none");
   o->jump_port = 0;
  } else {
   o->jump_user = user;
   o->jump_host = host;
   o->jump_port = port;
   o->proxy_command = xstrdup("none");
   user = host = ((void*)0);
   if ((cp = strrchr(s, ',')) != ((void*)0) && cp != s) {
    o->jump_extra = xstrdup(s);
    o->jump_extra[cp - s] = '\0';
   }
  }
 }
 ret = 0;
 out:
 free(orig);
 free(user);
 free(host);
 return ret;
}
