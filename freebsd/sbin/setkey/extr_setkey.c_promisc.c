
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sadb_msg {scalar_t__ sadb_msg_type; int sadb_msg_satype; int sadb_msg_len; int sadb_msg_pid; scalar_t__ sadb_msg_seq; scalar_t__ sadb_msg_reserved; scalar_t__ sadb_msg_errno; int sadb_msg_version; } ;
typedef int ssize_t ;
typedef int msg ;


 int MSG_PEEK ;
 int PFKEY_UNIT64 (int) ;
 int PFKEY_UNUNIT64 (int ) ;
 int PF_KEY_V2 ;
 scalar_t__ SADB_X_PROMISC ;
 int err (int,char*) ;
 scalar_t__ f_hexdump ;
 int fflush (int ) ;
 int getpid () ;
 int kdebug_sadb (struct sadb_msg*) ;
 int printdate () ;
 int printf (char*,...) ;
 int recv (int ,int*,int,int ) ;
 int send (int ,struct sadb_msg*,int,int ) ;
 int so ;
 int stdout ;

void
promisc()
{
 struct sadb_msg msg;
 u_char rbuf[1024 * 32];
 ssize_t l;

 msg.sadb_msg_version = PF_KEY_V2;
 msg.sadb_msg_type = SADB_X_PROMISC;
 msg.sadb_msg_errno = 0;
 msg.sadb_msg_satype = 1;
 msg.sadb_msg_len = PFKEY_UNIT64(sizeof(msg));
 msg.sadb_msg_reserved = 0;
 msg.sadb_msg_seq = 0;
 msg.sadb_msg_pid = getpid();

 if ((l = send(so, &msg, sizeof(msg), 0)) < 0) {
  err(1, "send");

 }

 while (1) {
  struct sadb_msg *base;

  if ((l = recv(so, rbuf, sizeof(*base), MSG_PEEK)) < 0) {
   err(1, "recv");

  }

  if (l != sizeof(*base))
   continue;

  base = (struct sadb_msg *)rbuf;
  if ((l = recv(so, rbuf, PFKEY_UNUNIT64(base->sadb_msg_len),
    0)) < 0) {
   err(1, "recv");

  }
  printdate();
  if (f_hexdump) {
   int i;
   for (i = 0; i < l; i++) {
    if (i % 16 == 0)
     printf("%08x: ", i);
    printf("%02x ", rbuf[i] & 0xff);
    if (i % 16 == 15)
     printf("\n");
   }
   if (l % 16)
    printf("\n");
  }

  if (base->sadb_msg_type == SADB_X_PROMISC) {
   if ((ssize_t)sizeof(*base) < l)
    base++;
   else
    base = ((void*)0);
  }
  if (base) {
   kdebug_sadb(base);
   printf("\n");
   fflush(stdout);
  }
 }
}
