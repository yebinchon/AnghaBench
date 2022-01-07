
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfsync_state {int ifname; } ;
struct pfioc_states {unsigned int ps_len; char* ps_buf; struct pfsync_state* ps_states; } ;
typedef int ps ;


 int DIOCGETSTATES ;
 int PF_OPT_SHOWALL ;
 int err (int,char*) ;
 int free (char*) ;
 scalar_t__ ioctl (int,int ,struct pfioc_states*) ;
 int memset (struct pfioc_states*,int ,int) ;
 int pfctl_print_title (char*) ;
 int print_state (struct pfsync_state*,int) ;
 char* realloc (char*,unsigned int) ;
 scalar_t__ strcmp (int ,char const*) ;
 int warn (char*) ;

int
pfctl_show_states(int dev, const char *iface, int opts)
{
 struct pfioc_states ps;
 struct pfsync_state *p;
 char *inbuf = ((void*)0), *newinbuf = ((void*)0);
 unsigned int len = 0;
 int i, dotitle = (opts & PF_OPT_SHOWALL);

 memset(&ps, 0, sizeof(ps));
 for (;;) {
  ps.ps_len = len;
  if (len) {
   newinbuf = realloc(inbuf, len);
   if (newinbuf == ((void*)0))
    err(1, "realloc");
   ps.ps_buf = inbuf = newinbuf;
  }
  if (ioctl(dev, DIOCGETSTATES, &ps) < 0) {
   warn("DIOCGETSTATES");
   free(inbuf);
   return (-1);
  }
  if (ps.ps_len + sizeof(struct pfioc_states) < len)
   break;
  if (len == 0 && ps.ps_len == 0)
   goto done;
  if (len == 0 && ps.ps_len != 0)
   len = ps.ps_len;
  if (ps.ps_len == 0)
   goto done;
  len *= 2;
 }
 p = ps.ps_states;
 for (i = 0; i < ps.ps_len; i += sizeof(*p), p++) {
  if (iface != ((void*)0) && strcmp(p->ifname, iface))
   continue;
  if (dotitle) {
   pfctl_print_title("STATES:");
   dotitle = 0;
  }
  print_state(p, opts);
 }
done:
 free(inbuf);
 return (0);
}
