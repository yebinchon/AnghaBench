
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct peer {int dummy; } ;
typedef int sockaddr_u ;


 int AF (int *) ;
 struct peer* findexistingpeer_addr (int *,struct peer*,int,int ,int*) ;
 struct peer* findexistingpeer_name (char const*,int ,struct peer*,int) ;

struct peer *
findexistingpeer(
 sockaddr_u * addr,
 const char * hostname,
 struct peer * start_peer,
 int mode,
 u_char cast_flags,
 int * ip_count
 )
{
 if (hostname != ((void*)0))
  return findexistingpeer_name(hostname, AF(addr),
          start_peer, mode);
 else
  return findexistingpeer_addr(addr, start_peer, mode,
          cast_flags, ip_count);
}
