
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct node_host {scalar_t__ af; char* ifname; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int IFNAMSIZ ;
 int strcmp (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

int
ifa_skip_if(const char *filter, struct node_host *p)
{
 int n;

 if (p->af != AF_INET && p->af != AF_INET6)
  return (1);
 if (filter == ((void*)0) || !*filter)
  return (0);
 if (!strcmp(p->ifname, filter))
  return (0);
 n = strlen(filter);
 if (n < 1 || n >= IFNAMSIZ)
  return (1);
 if (filter[n-1] >= '0' && filter[n-1] <= '9')
  return (1);
 if (strncmp(p->ifname, filter, n))
  return (1);
 return (p->ifname[n] < '0' || p->ifname[n] > '9');
}
