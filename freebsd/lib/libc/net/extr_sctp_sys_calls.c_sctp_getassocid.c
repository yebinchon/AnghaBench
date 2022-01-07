
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_len; } ;
struct sctp_paddrinfo {int spinfo_assoc_id; int spinfo_address; } ;
typedef int sp ;
typedef int socklen_t ;
typedef int sctp_assoc_t ;
typedef int caddr_t ;


 int IPPROTO_SCTP ;
 int SCTP_GET_PEER_ADDR_INFO ;
 scalar_t__ getsockopt (int,int ,int ,struct sctp_paddrinfo*,int*) ;
 int memcpy (int ,struct sockaddr*,int ) ;
 int memset (struct sctp_paddrinfo*,int ,int) ;

sctp_assoc_t
sctp_getassocid(int sd, struct sockaddr *sa)
{
 struct sctp_paddrinfo sp;
 socklen_t siz;


 siz = sizeof(sp);
 memset(&sp, 0, sizeof(sp));
 memcpy((caddr_t)&sp.spinfo_address, sa, sa->sa_len);
 if (getsockopt(sd, IPPROTO_SCTP,
     SCTP_GET_PEER_ADDR_INFO, &sp, &siz) != 0) {

  return ((sctp_assoc_t) 0);
 }
 return (sp.spinfo_assoc_id);
}
