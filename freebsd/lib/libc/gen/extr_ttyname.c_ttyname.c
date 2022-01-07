
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* malloc (int) ;
 char* thr_getspecific (int ) ;
 scalar_t__ thr_main () ;
 scalar_t__ thr_once (int *,int ) ;
 scalar_t__ thr_setspecific (int ,char*) ;
 char* ttyname_buf ;
 int ttyname_init_once ;
 int ttyname_key ;
 int ttyname_keycreate ;
 int ttyname_keycreated ;
 scalar_t__ ttyname_r (int,char*,int) ;

char *
ttyname(int fd)
{
 char *buf;

 if (thr_main() != 0)
  buf = ttyname_buf;
 else {
  if (thr_once(&ttyname_init_once, ttyname_keycreate) != 0 ||
      !ttyname_keycreated)
   return (((void*)0));
  if ((buf = thr_getspecific(ttyname_key)) == ((void*)0)) {
   if ((buf = malloc(sizeof ttyname_buf)) == ((void*)0))
    return (((void*)0));
   if (thr_setspecific(ttyname_key, buf) != 0) {
    free(buf);
    return (((void*)0));
   }
  }
 }

 if (ttyname_r(fd, buf, sizeof ttyname_buf) != 0)
  return (((void*)0));
 return (buf);
}
