
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;
struct sftp_conn {int dummy; } ;


 int get_msg_extended (struct sftp_conn*,struct sshbuf*,int ) ;

__attribute__((used)) static void
get_msg(struct sftp_conn *conn, struct sshbuf *m)
{
 get_msg_extended(conn, m, 0);
}
