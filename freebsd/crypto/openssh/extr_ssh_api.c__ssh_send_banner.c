
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 int SSH_ERR_ALLOC_FAIL ;
 char* SSH_VERSION ;
 int chop (char*) ;
 int debug (char*,char*) ;
 int snprintf (char*,int,char*,char*) ;
 int ssh_packet_get_output (struct ssh*) ;
 int sshbuf_put (int ,char*,int ) ;
 char* strdup (char*) ;
 int strlen (char*) ;

int
_ssh_send_banner(struct ssh *ssh, char **bannerp)
{
 char buf[256];
 int r;

 snprintf(buf, sizeof buf, "SSH-2.0-%.100s\r\n", SSH_VERSION);
 if ((r = sshbuf_put(ssh_packet_get_output(ssh), buf, strlen(buf))) != 0)
  return r;
 chop(buf);
 debug("Local version string %.100s", buf);
 if ((*bannerp = strdup(buf)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 return 0;
}
