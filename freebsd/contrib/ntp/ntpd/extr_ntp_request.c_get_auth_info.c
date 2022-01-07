
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32 ;
struct req_pkt {int dummy; } ;
struct info_auth {void* timereset; void* expired; void* keyuncached; void* decryptions; void* encryptions; void* keynotfound; void* keylookups; void* numfreekeys; void* numkeys; } ;
typedef int sockaddr_u ;
typedef int endpt ;


 scalar_t__ auth_timereset ;
 scalar_t__ authdecryptions ;
 scalar_t__ authencryptions ;
 scalar_t__ authkeyexpired ;
 scalar_t__ authkeylookups ;
 scalar_t__ authkeynotfound ;
 scalar_t__ authkeyuncached ;
 scalar_t__ authnumfreekeys ;
 scalar_t__ authnumkeys ;
 scalar_t__ current_time ;
 int flush_pkt () ;
 void* htonl (int ) ;
 int more_pkt () ;
 scalar_t__ prepare_pkt (int *,int *,struct req_pkt*,int) ;

__attribute__((used)) static void
get_auth_info(
 sockaddr_u *srcadr,
 endpt *inter,
 struct req_pkt *inpkt
 )
{
 register struct info_auth *ia;

 ia = (struct info_auth *)prepare_pkt(srcadr, inter, inpkt,
          sizeof(struct info_auth));

 ia->numkeys = htonl((u_int32)authnumkeys);
 ia->numfreekeys = htonl((u_int32)authnumfreekeys);
 ia->keylookups = htonl((u_int32)authkeylookups);
 ia->keynotfound = htonl((u_int32)authkeynotfound);
 ia->encryptions = htonl((u_int32)authencryptions);
 ia->decryptions = htonl((u_int32)authdecryptions);
 ia->keyuncached = htonl((u_int32)authkeyuncached);
 ia->expired = htonl((u_int32)authkeyexpired);
 ia->timereset = htonl((u_int32)(current_time - auth_timereset));

 (void) more_pkt();
 flush_pkt();
}
