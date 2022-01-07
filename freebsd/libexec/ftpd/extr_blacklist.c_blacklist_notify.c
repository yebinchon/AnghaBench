
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int blacklist_r (int *,int,int,char const*) ;
 int * blstate ;

void
blacklist_notify(int action, int fd, const char *msg)
{

 if (blstate == ((void*)0))
  return;
 (void)blacklist_r(blstate, action, fd, msg);
}
