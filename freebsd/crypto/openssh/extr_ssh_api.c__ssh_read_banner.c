
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshbuf {int dummy; } ;
struct ssh {int compat; TYPE_1__* kex; } ;
typedef int buf ;
struct TYPE_2__ {scalar_t__ server; } ;


 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INVALID_FORMAT ;
 int SSH_ERR_NO_PROTOCOL_VERSION ;
 int SSH_ERR_PROTOCOL_MISMATCH ;
 int chop (char*) ;
 int compat_datafellows (char*) ;
 int debug (char*,...) ;
 int sscanf (char*,char*,int*,int*,char*) ;
 struct sshbuf* ssh_packet_get_input (struct ssh*) ;
 int ssh_packet_get_output (struct ssh*) ;
 int sshbuf_consume (struct sshbuf*,size_t) ;
 size_t sshbuf_len (struct sshbuf*) ;
 scalar_t__ sshbuf_ptr (struct sshbuf*) ;
 int sshbuf_put (int ,char const*,int ) ;
 char* strdup (char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int
_ssh_read_banner(struct ssh *ssh, char **bannerp)
{
 struct sshbuf *input;
 const char *s;
 char buf[256], remote_version[256];
 const char *mismatch = "Protocol mismatch.\r\n";
 int r, remote_major, remote_minor;
 size_t i, n, j, len;

 *bannerp = ((void*)0);
 input = ssh_packet_get_input(ssh);
 len = sshbuf_len(input);
 s = (const char *)sshbuf_ptr(input);
 for (j = n = 0;;) {
  for (i = 0; i < sizeof(buf) - 1; i++) {
   if (j >= len)
    return (0);
   buf[i] = s[j++];
   if (buf[i] == '\r') {
    buf[i] = '\n';
    buf[i + 1] = 0;
    continue;
   }
   if (buf[i] == '\n') {
    buf[i + 1] = 0;
    break;
   }
  }
  buf[sizeof(buf) - 1] = 0;
  if (strncmp(buf, "SSH-", 4) == 0)
   break;
  debug("ssh_exchange_identification: %s", buf);
  if (ssh->kex->server || ++n > 65536) {
   if ((r = sshbuf_put(ssh_packet_get_output(ssh),
      mismatch, strlen(mismatch))) != 0)
    return r;
   return SSH_ERR_NO_PROTOCOL_VERSION;
  }
 }
 if ((r = sshbuf_consume(input, j)) != 0)
  return r;





 if (sscanf(buf, "SSH-%d.%d-%[^\n]\n",
     &remote_major, &remote_minor, remote_version) != 3)
  return SSH_ERR_INVALID_FORMAT;
 debug("Remote protocol version %d.%d, remote software version %.100s",
     remote_major, remote_minor, remote_version);

 ssh->compat = compat_datafellows(remote_version);
 if (remote_major == 1 && remote_minor == 99) {
  remote_major = 2;
  remote_minor = 0;
 }
 if (remote_major != 2)
  return SSH_ERR_PROTOCOL_MISMATCH;
 chop(buf);
 debug("Remote version string %.100s", buf);
 if ((*bannerp = strdup(buf)) == ((void*)0))
  return SSH_ERR_ALLOC_FAIL;
 return 0;
}
