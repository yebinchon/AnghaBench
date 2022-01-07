
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;
typedef int fd_set ;
typedef int buf ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 scalar_t__ EWOULDBLOCK ;
 scalar_t__ FD_ISSET (int,int *) ;
 int cleanup_exit (int) ;
 scalar_t__ errno ;
 int packet_process_incoming (char*,int) ;
 int read (int,char*,int) ;
 int ssh_remote_ipaddr (struct ssh*) ;
 int ssh_remote_port (struct ssh*) ;
 int strerror (scalar_t__) ;
 int verbose (char*,int ,int ,...) ;

__attribute__((used)) static int
process_input(struct ssh *ssh, fd_set *readset, int connection_in)
{
 int len;
 char buf[16384];


 if (FD_ISSET(connection_in, readset)) {
  len = read(connection_in, buf, sizeof(buf));
  if (len == 0) {
   verbose("Connection closed by %.100s port %d",
       ssh_remote_ipaddr(ssh), ssh_remote_port(ssh));
   return -1;
  } else if (len < 0) {
   if (errno != EINTR && errno != EAGAIN &&
       errno != EWOULDBLOCK) {
    verbose("Read error from remote host "
        "%.100s port %d: %.100s",
        ssh_remote_ipaddr(ssh),
        ssh_remote_port(ssh), strerror(errno));
    cleanup_exit(255);
   }
  } else {

   packet_process_incoming(buf, len);
  }
 }
 return 0;
}
