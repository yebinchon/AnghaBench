
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct peer {int hmode; int cast_flags; struct peer* adr_link; int srcadr; } ;
typedef int sockaddr_u ;


 scalar_t__ ADDR_PORT_EQ (int *,int *) ;
 int DPRINTF (int,char*) ;
 int MDF_BCLNT ;
 size_t NTP_HASH_ADDR (int *) ;
 scalar_t__ SOCK_EQ (int *,int *) ;
 struct peer** peer_hash ;
 char* sptoa (int *) ;

__attribute__((used)) static
struct peer *
findexistingpeer_addr(
 sockaddr_u * addr,
 struct peer * start_peer,
 int mode,
 u_char cast_flags,
 int * ip_count
 )
{
 struct peer *peer;

 DPRINTF(2, ("findexistingpeer_addr(%s, %s, %d, 0x%x, %p)\n",
  sptoa(addr),
  (start_peer)
      ? sptoa(&start_peer->srcadr)
      : "NULL",
  mode, (u_int)cast_flags, ip_count));
 if (((void*)0) == start_peer)
  peer = peer_hash[NTP_HASH_ADDR(addr)];
 else
  peer = start_peer->adr_link;

 while (peer != ((void*)0)) {
  DPRINTF(3, ("%s %s %d %d 0x%x 0x%x ", sptoa(addr),
   sptoa(&peer->srcadr), mode, peer->hmode,
   (u_int)cast_flags, (u_int)peer->cast_flags));
  if (ip_count) {
   if (SOCK_EQ(addr, &peer->srcadr)) {
    (*ip_count)++;
   }
  }
   if ((-1 == mode || peer->hmode == mode ||
       ((MDF_BCLNT & peer->cast_flags) &&
        (MDF_BCLNT & cast_flags))) &&
      ADDR_PORT_EQ(addr, &peer->srcadr)) {
   DPRINTF(3, ("found.\n"));
   break;
  }
  DPRINTF(3, ("\n"));
  peer = peer->adr_link;
 }

 return peer;
}
