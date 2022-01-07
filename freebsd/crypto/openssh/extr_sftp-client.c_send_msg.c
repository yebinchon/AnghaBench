
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;
struct sftp_conn {scalar_t__ limit_kbps; int bwlimit_out; int fd_out; } ;
struct iovec {int iov_len; int * iov_base; } ;
typedef int mlen ;


 int SFTP_MAX_MSG_LENGTH ;
 int atomiciov6 (int ,int ,struct iovec*,int,int *,int *) ;
 int errno ;
 int fatal (char*,int) ;
 int put_u32 (int *,int) ;
 int * sftpio ;
 int sshbuf_len (struct sshbuf*) ;
 scalar_t__ sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_reset (struct sshbuf*) ;
 int strerror (int ) ;
 int writev ;

__attribute__((used)) static void
send_msg(struct sftp_conn *conn, struct sshbuf *m)
{
 u_char mlen[4];
 struct iovec iov[2];

 if (sshbuf_len(m) > SFTP_MAX_MSG_LENGTH)
  fatal("Outbound message too long %zu", sshbuf_len(m));


 put_u32(mlen, sshbuf_len(m));
 iov[0].iov_base = mlen;
 iov[0].iov_len = sizeof(mlen);
 iov[1].iov_base = (u_char *)sshbuf_ptr(m);
 iov[1].iov_len = sshbuf_len(m);

 if (atomiciov6(writev, conn->fd_out, iov, 2,
     conn->limit_kbps > 0 ? sftpio : ((void*)0), &conn->bwlimit_out) !=
     sshbuf_len(m) + sizeof(mlen))
  fatal("Couldn't send packet: %s", strerror(errno));

 sshbuf_reset(m);
}
