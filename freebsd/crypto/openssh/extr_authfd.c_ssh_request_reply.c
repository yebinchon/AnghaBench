
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int dummy; } ;
typedef int buf ;


 size_t MAX_AGENT_REPLY_LEN ;
 size_t PEEK_U32 (char*) ;
 int POKE_U32 (char*,size_t) ;
 int SSH_ERR_AGENT_COMMUNICATION ;
 int SSH_ERR_INVALID_FORMAT ;
 size_t atomicio (int ,int,char*,size_t) ;
 int read ;
 size_t sshbuf_len (struct sshbuf*) ;
 char* sshbuf_mutable_ptr (struct sshbuf*) ;
 int sshbuf_put (struct sshbuf*,char*,size_t) ;
 int sshbuf_reset (struct sshbuf*) ;
 int vwrite ;

__attribute__((used)) static int
ssh_request_reply(int sock, struct sshbuf *request, struct sshbuf *reply)
{
 int r;
 size_t l, len;
 char buf[1024];


 len = sshbuf_len(request);
 POKE_U32(buf, len);


 if (atomicio(vwrite, sock, buf, 4) != 4 ||
     atomicio(vwrite, sock, sshbuf_mutable_ptr(request),
     sshbuf_len(request)) != sshbuf_len(request))
  return SSH_ERR_AGENT_COMMUNICATION;




 if (atomicio(read, sock, buf, 4) != 4)
     return SSH_ERR_AGENT_COMMUNICATION;


 len = PEEK_U32(buf);
 if (len > MAX_AGENT_REPLY_LEN)
  return SSH_ERR_INVALID_FORMAT;


 sshbuf_reset(reply);
 while (len > 0) {
  l = len;
  if (l > sizeof(buf))
   l = sizeof(buf);
  if (atomicio(read, sock, buf, l) != l)
   return SSH_ERR_AGENT_COMMUNICATION;
  if ((r = sshbuf_put(reply, buf, l)) != 0)
   return r;
  len -= l;
 }
 return 0;
}
