
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sctp_udpencaps {scalar_t__ sue_assoc_id; } ;
struct sctp_timeouts {scalar_t__ stimo_assoc_id; } ;
struct sctp_status {scalar_t__ sstat_assoc_id; } ;
struct sctp_sndinfo {scalar_t__ snd_assoc_id; } ;
struct sctp_setprim {scalar_t__ ssp_assoc_id; } ;
struct sctp_sack_info {scalar_t__ sack_assoc_id; } ;
struct sctp_rtoinfo {scalar_t__ srto_assoc_id; } ;
struct sctp_prstatus {scalar_t__ sprstat_assoc_id; } ;
struct sctp_paddrthlds {scalar_t__ spt_assoc_id; } ;
struct sctp_paddrparams {scalar_t__ spp_assoc_id; } ;
struct sctp_paddrinfo {scalar_t__ spinfo_assoc_id; } ;
struct sctp_event {scalar_t__ se_assoc_id; } ;
struct sctp_default_prinfo {scalar_t__ pr_assoc_id; } ;
struct sctp_authkeyid {scalar_t__ scact_assoc_id; } ;
struct sctp_authkey {scalar_t__ sca_assoc_id; } ;
struct sctp_authchunks {scalar_t__ gauth_assoc_id; } ;
struct sctp_assocparams {scalar_t__ sasoc_assoc_id; } ;
struct sctp_assoc_value {scalar_t__ assoc_id; } ;
typedef int socklen_t ;
typedef scalar_t__ sctp_assoc_t ;


 int EINVAL ;
 int IPPROTO_SCTP ;
 scalar_t__ SCTP_ALL_ASSOC ;






 scalar_t__ SCTP_CURRENT_ASSOC ;
 int errno ;
 int getsockopt (int,int ,int,void*,int *) ;

int
sctp_opt_info(int sd, sctp_assoc_t id, int opt, void *arg, socklen_t * size)
{
 if (arg == ((void*)0)) {
  errno = EINVAL;
  return (-1);
 }
 if ((id == SCTP_CURRENT_ASSOC) ||
     (id == SCTP_ALL_ASSOC)) {
  errno = EINVAL;
  return (-1);
 }
 switch (opt) {
 case 130:
  ((struct sctp_rtoinfo *)arg)->srto_assoc_id = id;
  break;
 case 158:
  ((struct sctp_assocparams *)arg)->sasoc_assoc_id = id;
  break;
 case 152:
  ((struct sctp_assocparams *)arg)->sasoc_assoc_id = id;
  break;
 case 136:
  ((struct sctp_setprim *)arg)->ssp_assoc_id = id;
  break;
 case 140:
  ((struct sctp_paddrparams *)arg)->spp_assoc_id = id;
  break;
 case 144:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 156:
  ((struct sctp_authkey *)arg)->sca_assoc_id = id;
  break;
 case 157:
  ((struct sctp_authkeyid *)arg)->scact_assoc_id = id;
  break;
 case 150:
  ((struct sctp_sack_info *)arg)->sack_assoc_id = id;
  break;
 case 154:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 129:
  ((struct sctp_status *)arg)->sstat_assoc_id = id;
  break;
 case 146:
  ((struct sctp_paddrinfo *)arg)->spinfo_assoc_id = id;
  break;
 case 138:
  ((struct sctp_authchunks *)arg)->gauth_assoc_id = id;
  break;
 case 145:
  ((struct sctp_authchunks *)arg)->gauth_assoc_id = id;
  break;
 case 128:
  ((struct sctp_timeouts *)arg)->stimo_assoc_id = id;
  break;
 case 147:
  ((struct sctp_event *)arg)->se_assoc_id = id;
  break;
 case 151:
  ((struct sctp_sndinfo *)arg)->snd_assoc_id = id;
  break;
 case 153:
  ((struct sctp_default_prinfo *)arg)->pr_assoc_id = id;
  break;
 case 139:
  ((struct sctp_paddrthlds *)arg)->spt_assoc_id = id;
  break;
 case 131:
  ((struct sctp_udpencaps *)arg)->sue_assoc_id = id;
  break;
 case 149:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 133:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 155:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 159:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 132:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 141:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 137:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 143:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 148:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 case 134:
  ((struct sctp_prstatus *)arg)->sprstat_assoc_id = id;
  break;
 case 135:
  ((struct sctp_prstatus *)arg)->sprstat_assoc_id = id;
  break;
 case 142:
  ((struct sctp_assoc_value *)arg)->assoc_id = id;
  break;
 default:
  break;
 }
 return (getsockopt(sd, IPPROTO_SCTP, opt, arg, size));
}
