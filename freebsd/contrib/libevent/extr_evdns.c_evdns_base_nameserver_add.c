
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long s_addr; } ;
struct sockaddr_in {int sin_family; int sin_port; TYPE_1__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct evdns_base {int dummy; } ;
typedef int sin ;


 int AF_INET ;
 int EVDNS_LOCK (struct evdns_base*) ;
 int EVDNS_UNLOCK (struct evdns_base*) ;
 int evdns_nameserver_add_impl_ (struct evdns_base*,struct sockaddr*,int) ;
 int htons (int) ;
 int memset (struct sockaddr_in*,int ,int) ;

int
evdns_base_nameserver_add(struct evdns_base *base, unsigned long int address)
{
 struct sockaddr_in sin;
 int res;
 memset(&sin, 0, sizeof(sin));
 sin.sin_addr.s_addr = address;
 sin.sin_port = htons(53);
 sin.sin_family = AF_INET;
 EVDNS_LOCK(base);
 res = evdns_nameserver_add_impl_(base, (struct sockaddr*)&sin, sizeof(sin));
 EVDNS_UNLOCK(base);
 return res;
}
