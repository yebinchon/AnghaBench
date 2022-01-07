
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef scalar_t__ u_char ;
struct sshbuf {int dummy; } ;
typedef int buf ;


 int atomicio (int ,int,scalar_t__*,int) ;
 int debug3 (char*,unsigned int) ;
 int error (char*) ;
 int put_u32 (scalar_t__*,int) ;
 int sshbuf_len (struct sshbuf*) ;
 scalar_t__* sshbuf_mutable_ptr (struct sshbuf*) ;
 int vwrite ;

int
ssh_msg_send(int fd, u_char type, struct sshbuf *m)
{
 u_char buf[5];
 u_int mlen = sshbuf_len(m);

 debug3("ssh_msg_send: type %u", (unsigned int)type & 0xff);

 put_u32(buf, mlen + 1);
 buf[4] = type;
 if (atomicio(vwrite, fd, buf, sizeof(buf)) != sizeof(buf)) {
  error("ssh_msg_send: write");
  return (-1);
 }
 if (atomicio(vwrite, fd, sshbuf_mutable_ptr(m), mlen) != mlen) {
  error("ssh_msg_send: write");
  return (-1);
 }
 return (0);
}
