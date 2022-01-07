
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostinfo {char* name; scalar_t__ addrs; } ;


 int free (char*) ;

void
freehostinfo(register struct hostinfo *hi)
{
 if (hi->name != ((void*)0)) {
  free(hi->name);
  hi->name = ((void*)0);
 }
 free((char *)hi->addrs);
 free((char *)hi);
}
