
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct permission {scalar_t__ listen_port; int * listen_host; } ;
struct Forward {scalar_t__ listen_port; int * listen_host; int * listen_path; } ;


 scalar_t__ FWD_PERMIT_ANY_PORT ;
 int free (char*) ;
 int lowercase (char*) ;
 int match_pattern (char*,int *) ;
 char* xstrdup (int *) ;

__attribute__((used)) static int
remote_open_match(struct permission *allowed_open, struct Forward *fwd)
{
 int ret;
 char *lhost;


 if (fwd->listen_path != ((void*)0))
  return 1;

 if (fwd->listen_host == ((void*)0) || allowed_open->listen_host == ((void*)0))
  return 0;

 if (allowed_open->listen_port != FWD_PERMIT_ANY_PORT &&
     allowed_open->listen_port != fwd->listen_port)
  return 0;


 lhost = xstrdup(fwd->listen_host);
 lowercase(lhost);
 ret = match_pattern(lhost, allowed_open->listen_host);
 free(lhost);

 return ret;
}
