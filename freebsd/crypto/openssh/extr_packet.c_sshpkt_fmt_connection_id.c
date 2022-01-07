
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {char* log_preamble; } ;


 int snprintf (char*,size_t,char*,char*,char*,int,int ) ;
 int ssh_remote_ipaddr (struct ssh*) ;
 int ssh_remote_port (struct ssh*) ;

void
sshpkt_fmt_connection_id(struct ssh *ssh, char *s, size_t l)
{
 snprintf(s, l, "%.200s%s%s port %d",
     ssh->log_preamble ? ssh->log_preamble : "",
     ssh->log_preamble ? " " : "",
     ssh_remote_ipaddr(ssh), ssh_remote_port(ssh));
}
