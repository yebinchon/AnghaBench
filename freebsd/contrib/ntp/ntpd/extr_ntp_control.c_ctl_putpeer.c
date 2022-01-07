
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_4__ {int tstamp; struct autokey* ptr; } ;
struct peer {int flags; int keyid; char const* hostname; int r21; int r34; int throttle; int leap; int hmode; int stratum; int ppoll; int hpoll; int rootdelay; int rootdisp; int xleave; int bias; int reach; int flash; int ttl; int unreach; int nextdate; int delay; int offset; int jitter; int disp; int pmode; int received; int sent; int timereceived; int timereachable; int badauth; int bogusorg; int oldpkt; int seldisptoolarge; int selbroken; int status; int crypto; char const* subject; char const* ident; TYPE_2__ recval; int filter_nextpt; int filter_disp; int filter_offset; int filter_delay; int dst; int aorg; int reftime; int refid; int precision; TYPE_1__* dstadr; int srcadr; } ;
struct ctl_var {char const* text; int flags; } ;
struct autokey {int key; int seq; } ;
typedef int buf ;
struct TYPE_3__ {int sin; } ;
typedef int EVP_MD ;


 int COUNTOF (int *) ;
 size_t CP_INITKEY ;

 size_t CP_INITTSP ;
 int CTL_MAX_DATA_LEN ;
 int EOV ;
 int EVP_MD_pkey_type (int const*) ;
 int * EVP_get_digestbynid (int) ;
 int FLAG_AUTHENTIC ;
 int FLAG_PREEMPT ;
 int FLAG_REFCLOCK ;
 int NTP_MAXKEY ;
 char* OBJ_nid2ln (int ) ;
 int PADDING ;
 int REFID_ISTEXT (int) ;
 int SRCPORT (int *) ;
 int ctl_putadr (char const*,int ,int *) ;
 int ctl_putarray (char const*,int ,int ) ;
 int ctl_putdata (char*,int ,int ) ;
 int ctl_putdbl (char const*,int) ;
 int ctl_putfs (char const*,int ) ;
 int ctl_puthex (char const*,int) ;
 int ctl_putint (char const*,int ) ;
 int ctl_putrefid (char const*,int ) ;
 int ctl_putstr (char const*,char const*,int) ;
 int ctl_putts (char const*,int *) ;
 int ctl_putuint (char const*,int) ;
 int current_time ;
 int memcpy (char*,char const*,int) ;
 int ntohl (int ) ;
 struct ctl_var* peer_var ;
 int snprintf (char*,int,char*,char const*) ;
 int strlen (char const*) ;
 int * sys_ttl ;

__attribute__((used)) static void
ctl_putpeer(
 int id,
 struct peer *p
 )
{
 char buf[CTL_MAX_DATA_LEN];
 char *s;
 char *t;
 char *be;
 int i;
 const struct ctl_var *k;






 switch (id) {

 case 177:
  ctl_putuint(peer_var[id].text,
       !(FLAG_PREEMPT & p->flags));
  break;

 case 183:
  ctl_putuint(peer_var[id].text, !(p->keyid));
  break;

 case 182:
  ctl_putuint(peer_var[id].text,
       !!(FLAG_AUTHENTIC & p->flags));
  break;

 case 139:
  ctl_putadr(peer_var[id].text, 0, &p->srcadr);
  break;

 case 137:
  ctl_putuint(peer_var[id].text, SRCPORT(&p->srcadr));
  break;

 case 138:
  if (p->hostname != ((void*)0))
   ctl_putstr(peer_var[id].text, p->hostname,
       strlen(p->hostname));
  break;

 case 174:
  ctl_putadr(peer_var[id].text, 0,
      (p->dstadr != ((void*)0))
    ? &p->dstadr->sin
    : ((void*)0));
  break;

 case 173:
  ctl_putuint(peer_var[id].text,
       (p->dstadr != ((void*)0))
    ? SRCPORT(&p->dstadr->sin)
    : 0);
  break;

 case 163:
  if (p->r21 > 0.)
   ctl_putdbl(peer_var[id].text, p->r21 / 1e3);
  break;

 case 155:
  if (p->r34 > 0.)
   ctl_putdbl(peer_var[id].text, p->r34 / 1e3);
  break;

 case 151:
  ctl_putuint(peer_var[id].text, p->throttle);
  break;

 case 159:
  ctl_putuint(peer_var[id].text, p->leap);
  break;

 case 167:
  ctl_putuint(peer_var[id].text, p->hmode);
  break;

 case 136:
  ctl_putuint(peer_var[id].text, p->stratum);
  break;

 case 153:
  ctl_putuint(peer_var[id].text, p->ppoll);
  break;

 case 165:
  ctl_putuint(peer_var[id].text, p->hpoll);
  break;

 case 152:
  ctl_putint(peer_var[id].text, p->precision);
  break;

 case 145:
  ctl_putdbl(peer_var[id].text, p->rootdelay * 1e3);
  break;

 case 144:
  ctl_putdbl(peer_var[id].text, p->rootdisp * 1e3);
  break;

 case 147:






  if (REFID_ISTEXT(p->stratum))
   ctl_putrefid(peer_var[id].text, p->refid);
  else
   ctl_putadr(peer_var[id].text, p->refid, ((void*)0));
  break;

 case 146:
  ctl_putts(peer_var[id].text, &p->reftime);
  break;

 case 156:
  ctl_putts(peer_var[id].text, &p->aorg);
  break;

 case 149:
  ctl_putts(peer_var[id].text, &p->dst);
  break;

 case 128:
  if (p->xleave)
   ctl_putdbl(peer_var[id].text, p->xleave * 1e3);
  break;

 case 180:
  if (p->bias != 0.)
   ctl_putdbl(peer_var[id].text, p->bias * 1e3);
  break;

 case 150:
  ctl_puthex(peer_var[id].text, p->reach);
  break;

 case 168:
  ctl_puthex(peer_var[id].text, p->flash);
  break;

 case 132:






  if (p->ttl > 0 && p->ttl < COUNTOF(sys_ttl))
   ctl_putint(peer_var[id].text,
       sys_ttl[p->ttl]);
  break;

 case 131:
  ctl_putuint(peer_var[id].text, p->unreach);
  break;

 case 135:
  ctl_putuint(peer_var[id].text,
       p->nextdate - current_time);
  break;

 case 176:
  ctl_putdbl(peer_var[id].text, p->delay * 1e3);
  break;

 case 158:
  ctl_putdbl(peer_var[id].text, p->offset * 1e3);
  break;

 case 161:
  ctl_putdbl(peer_var[id].text, p->jitter * 1e3);
  break;

 case 175:
  ctl_putdbl(peer_var[id].text, p->disp * 1e3);
  break;

 case 160:
  if (p->keyid > NTP_MAXKEY)
   ctl_puthex(peer_var[id].text, p->keyid);
  else
   ctl_putuint(peer_var[id].text, p->keyid);
  break;

 case 172:
  ctl_putarray(peer_var[id].text, p->filter_delay,
        p->filter_nextpt);
  break;

 case 170:
  ctl_putarray(peer_var[id].text, p->filter_offset,
        p->filter_nextpt);
  break;

 case 171:
  ctl_putarray(peer_var[id].text, p->filter_disp,
        p->filter_nextpt);
  break;

 case 154:
  ctl_putuint(peer_var[id].text, p->pmode);
  break;

 case 148:
  ctl_putuint(peer_var[id].text, p->received);
  break;

 case 141:
  ctl_putuint(peer_var[id].text, p->sent);
  break;

 case 129:
  s = buf;
  be = buf + sizeof(buf);
  if (strlen(peer_var[id].text) + 4 > sizeof(buf))
   break;

  snprintf(s, sizeof(buf), "%s=\"", peer_var[id].text);
  s += strlen(s);
  t = s;
  for (k = peer_var; !(EOV & k->flags); k++) {
   if (PADDING & k->flags)
    continue;
   i = strlen(k->text);
   if (s + i + 1 >= be)
    break;
   if (s != t)
    *s++ = ',';
   memcpy(s, k->text, i);
   s += i;
  }
  if (s + 2 < be) {
   *s++ = '"';
   *s = '\0';
   ctl_putdata(buf, (u_int)(s - buf), 0);
  }
  break;

 case 133:
  ctl_putuint(peer_var[id].text,
       current_time - p->timereceived);
  break;

 case 134:
  ctl_putuint(peer_var[id].text,
       current_time - p->timereachable);
  break;

 case 181:
  ctl_putuint(peer_var[id].text, p->badauth);
  break;

 case 179:
  ctl_putuint(peer_var[id].text, p->bogusorg);
  break;

 case 157:
  ctl_putuint(peer_var[id].text, p->oldpkt);
  break;

 case 142:
  ctl_putuint(peer_var[id].text, p->seldisptoolarge);
  break;

 case 143:
  ctl_putuint(peer_var[id].text, p->selbroken);
  break;

 case 178:
  ctl_putuint(peer_var[id].text, p->status);
  break;
 }
}
