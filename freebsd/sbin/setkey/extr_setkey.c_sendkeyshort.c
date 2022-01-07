
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
struct sadb_msg {int sadb_msg_pid; scalar_t__ sadb_msg_seq; scalar_t__ sadb_msg_reserved; int sadb_msg_len; int sadb_msg_satype; scalar_t__ sadb_msg_errno; int sadb_msg_type; int sadb_msg_version; } ;
typedef int msg ;


 int PFKEY_UNIT64 (int) ;
 int PF_KEY_V2 ;
 int getpid () ;
 int sendkeymsg (char*,int) ;

void
sendkeyshort(u_int type, uint8_t satype)
{
 struct sadb_msg msg;

 msg.sadb_msg_version = PF_KEY_V2;
 msg.sadb_msg_type = type;
 msg.sadb_msg_errno = 0;
 msg.sadb_msg_satype = satype;
 msg.sadb_msg_len = PFKEY_UNIT64(sizeof(msg));
 msg.sadb_msg_reserved = 0;
 msg.sadb_msg_seq = 0;
 msg.sadb_msg_pid = getpid();

 sendkeymsg((char *)&msg, sizeof(msg));

 return;
}
