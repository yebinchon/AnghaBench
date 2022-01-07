
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_2__ {int version; int arglen; int flags; int token; int cmd; int cmdstr; int typecookie; } ;
struct ng_mesg {int data; TYPE_1__ header; } ;
typedef int buf ;


 int ARGS_BUFSIZE ;
 int NGLOGX (char*,...) ;
 int NGM_BINARY2ASCII ;
 int NGM_GENERIC_COOKIE ;
 int NgCookie (int ) ;
 scalar_t__ NgMkSockNode (int *,int*,int *) ;
 scalar_t__ NgRecvMsg (int,struct ng_mesg* const,int,int *) ;
 scalar_t__ NgSendMsg (int,char const*,int ,int ,struct ng_mesg* const,int) ;
 scalar_t__ RECURSIVE_DEBUG_ADJUST ;
 int _NgDebugBytes (int *,int) ;
 int _gNgDebugLevel ;
 int close (int) ;
 int errno ;
 int memcpy (struct ng_mesg* const,struct ng_mesg const*,int) ;
 int * strchr (char const*,char) ;
 int strerror (int ) ;

void
_NgDebugMsg(const struct ng_mesg *msg, const char *path)
{
 u_char buf[2 * sizeof(struct ng_mesg) + ARGS_BUFSIZE];
 struct ng_mesg *const req = (struct ng_mesg *)buf;
 struct ng_mesg *const bin = (struct ng_mesg *)req->data;
 int arglen, csock = -1;


 NGLOGX("NG_MESG :");
 NGLOGX("  vers   %d", msg->header.version);
 NGLOGX("  arglen %u", msg->header.arglen);
 NGLOGX("  flags  %x", msg->header.flags);
 NGLOGX("  token  %u", msg->header.token);
 NGLOGX("  cookie %s (%u)",
     NgCookie(msg->header.typecookie), msg->header.typecookie);


 if (_gNgDebugLevel <= 2)
  goto fail2;



 if (strchr(path, ':') == ((void*)0))
  goto fail2;


 if (NgMkSockNode(((void*)0), &csock, ((void*)0)) < 0)
  goto fail;


 arglen = msg->header.arglen;
 if (arglen > ARGS_BUFSIZE)
  arglen = ARGS_BUFSIZE;
 memcpy(bin, msg, sizeof(*msg) + arglen);
 bin->header.arglen = arglen;


 _gNgDebugLevel -= RECURSIVE_DEBUG_ADJUST;


 if (NgSendMsg(csock, path, NGM_GENERIC_COOKIE,
     NGM_BINARY2ASCII, bin, sizeof(*bin) + bin->header.arglen) < 0) {
  _gNgDebugLevel += RECURSIVE_DEBUG_ADJUST;
  goto fail;
 }
 if (NgRecvMsg(csock, req, sizeof(buf), ((void*)0)) < 0) {
  _gNgDebugLevel += RECURSIVE_DEBUG_ADJUST;
  goto fail;
 }


 _gNgDebugLevel += RECURSIVE_DEBUG_ADJUST;


 NGLOGX("  cmd    %s (%d)", bin->header.cmdstr, bin->header.cmd);
 NGLOGX("  args   %s", bin->data);
 goto done;

fail:

 NGLOGX("  [error decoding message: %s]", strerror(errno));
fail2:
 NGLOGX("  cmd    %d", msg->header.cmd);
 NGLOGX("  args (%d bytes)", msg->header.arglen);
 _NgDebugBytes((u_char *)msg->data, msg->header.arglen);

done:
 if (csock != -1)
  (void)close(csock);
}
