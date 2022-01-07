
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
typedef int uint16_t ;
struct sockaddr {int dummy; } ;
struct sctp_sndrcvinfo {void* sinfo_context; void* sinfo_timetolive; int sinfo_stream; void* sinfo_flags; void* sinfo_ppid; } ;
typedef int ssize_t ;


 int memset (void*,int ,int) ;
 int sctp_sendx (int,void const*,size_t,struct sockaddr*,int,struct sctp_sndrcvinfo*,int ) ;

ssize_t
sctp_sendmsgx(int sd,
    const void *msg,
    size_t len,
    struct sockaddr *addrs,
    int addrcnt,
    uint32_t ppid,
    uint32_t flags,
    uint16_t stream_no,
    uint32_t timetolive,
    uint32_t context)
{
 struct sctp_sndrcvinfo sinfo;

 memset((void *)&sinfo, 0, sizeof(struct sctp_sndrcvinfo));
 sinfo.sinfo_ppid = ppid;
 sinfo.sinfo_flags = flags;
 sinfo.sinfo_stream = stream_no;
 sinfo.sinfo_timetolive = timetolive;
 sinfo.sinfo_context = context;
 return (sctp_sendx(sd, msg, len, addrs, addrcnt, &sinfo, 0));
}
