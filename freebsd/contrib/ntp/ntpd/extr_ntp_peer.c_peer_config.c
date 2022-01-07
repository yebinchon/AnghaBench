
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
typedef int u_int ;
typedef int u_char ;
struct peer {int dummy; } ;
typedef int sockaddr_u ;
typedef int keyid_t ;
typedef int endpt ;


 int FLAG_CONFIG ;
 int FLAG_IBURST ;
 int FLAG_PREEMPT ;
 int IS_MCAST (int *) ;
 int MDF_ACAST ;
 int MDF_BCAST ;
 int MDF_MCAST ;
 int MDF_POOL ;
 int MDF_UCAST ;


 int SOCK_UNSPEC (int *) ;
 scalar_t__ mode_ntpdate ;
 struct peer* newpeer (int *,char const*,int *,int,int,int,int,int,int ,int,int ,int ,char const*) ;

struct peer *
peer_config(
 sockaddr_u * srcadr,
 const char * hostname,
 endpt * dstadr,
 int ippeerlimit,
 u_char hmode,
 u_char version,
 u_char minpoll,
 u_char maxpoll,
 u_int flags,
 u_int32 ttl,
 keyid_t key,
 const char * ident
 )
{
 u_char cast_flags;






 switch (hmode) {
 case 129:
  if (IS_MCAST(srcadr))
   cast_flags = MDF_MCAST;
  else
   cast_flags = MDF_BCAST;
  break;

 case 128:
  if (hostname != ((void*)0) && SOCK_UNSPEC(srcadr))
   cast_flags = MDF_POOL;
  else if (IS_MCAST(srcadr))
   cast_flags = MDF_ACAST;
  else
   cast_flags = MDF_UCAST;
  break;

 default:
  cast_flags = MDF_UCAST;
 }
 flags |= FLAG_CONFIG;
 if (mode_ntpdate)
  flags |= FLAG_IBURST;
 if ((MDF_ACAST | MDF_POOL) & cast_flags)
  flags &= ~FLAG_PREEMPT;
 return newpeer(srcadr, hostname, dstadr, ippeerlimit, hmode, version,
     minpoll, maxpoll, flags, cast_flags, ttl, key, ident);
}
