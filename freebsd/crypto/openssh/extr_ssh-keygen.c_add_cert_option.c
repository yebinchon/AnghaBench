
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* key; char* val; int crit; } ;


 int CERTOPT_AGENT_FWD ;
 int CERTOPT_PORT_FWD ;
 int CERTOPT_PTY ;
 int CERTOPT_USER_RC ;
 int CERTOPT_X_FWD ;
 scalar_t__ addr_match_cidr_list (int *,char*) ;
 TYPE_1__* cert_userext ;
 char* certflags_command ;
 int certflags_flags ;
 char* certflags_src_addr ;
 int fatal (char*,...) ;
 int ncert_userext ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strncasecmp (char*,char*,int) ;
 TYPE_1__* xreallocarray (TYPE_1__*,int,int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
add_cert_option(char *opt)
{
 char *val, *cp;
 int iscrit = 0;

 if (strcasecmp(opt, "clear") == 0)
  certflags_flags = 0;
 else if (strcasecmp(opt, "no-x11-forwarding") == 0)
  certflags_flags &= ~CERTOPT_X_FWD;
 else if (strcasecmp(opt, "permit-x11-forwarding") == 0)
  certflags_flags |= CERTOPT_X_FWD;
 else if (strcasecmp(opt, "no-agent-forwarding") == 0)
  certflags_flags &= ~CERTOPT_AGENT_FWD;
 else if (strcasecmp(opt, "permit-agent-forwarding") == 0)
  certflags_flags |= CERTOPT_AGENT_FWD;
 else if (strcasecmp(opt, "no-port-forwarding") == 0)
  certflags_flags &= ~CERTOPT_PORT_FWD;
 else if (strcasecmp(opt, "permit-port-forwarding") == 0)
  certflags_flags |= CERTOPT_PORT_FWD;
 else if (strcasecmp(opt, "no-pty") == 0)
  certflags_flags &= ~CERTOPT_PTY;
 else if (strcasecmp(opt, "permit-pty") == 0)
  certflags_flags |= CERTOPT_PTY;
 else if (strcasecmp(opt, "no-user-rc") == 0)
  certflags_flags &= ~CERTOPT_USER_RC;
 else if (strcasecmp(opt, "permit-user-rc") == 0)
  certflags_flags |= CERTOPT_USER_RC;
 else if (strncasecmp(opt, "force-command=", 14) == 0) {
  val = opt + 14;
  if (*val == '\0')
   fatal("Empty force-command option");
  if (certflags_command != ((void*)0))
   fatal("force-command already specified");
  certflags_command = xstrdup(val);
 } else if (strncasecmp(opt, "source-address=", 15) == 0) {
  val = opt + 15;
  if (*val == '\0')
   fatal("Empty source-address option");
  if (certflags_src_addr != ((void*)0))
   fatal("source-address already specified");
  if (addr_match_cidr_list(((void*)0), val) != 0)
   fatal("Invalid source-address list");
  certflags_src_addr = xstrdup(val);
 } else if (strncasecmp(opt, "extension:", 10) == 0 ||
     (iscrit = (strncasecmp(opt, "critical:", 9) == 0))) {
  val = xstrdup(strchr(opt, ':') + 1);
  if ((cp = strchr(val, '=')) != ((void*)0))
   *cp++ = '\0';
  cert_userext = xreallocarray(cert_userext, ncert_userext + 1,
      sizeof(*cert_userext));
  cert_userext[ncert_userext].key = val;
  cert_userext[ncert_userext].val = cp == ((void*)0) ?
      ((void*)0) : xstrdup(cp);
  cert_userext[ncert_userext].crit = iscrit;
  ncert_userext++;
 } else
  fatal("Unsupported certificate option \"%s\"", opt);
}
