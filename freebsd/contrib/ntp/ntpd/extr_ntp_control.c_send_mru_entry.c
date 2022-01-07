
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32 ;
typedef scalar_t__ u_int ;
typedef scalar_t__ u_char ;
typedef int tag ;
struct TYPE_3__ {int flags; int vn_mode; int count; int first; int last; int rmtadr; } ;
typedef TYPE_1__ mon_entry ;


 scalar_t__ COUNTOF (scalar_t__*) ;
 scalar_t__ TRUE ;
 int ZERO (scalar_t__*) ;
 char* addr_fmt ;
 int ctl_puthex (char*,int ) ;
 int ctl_putint (char*,int ) ;
 int ctl_putts (char*,int *) ;
 int ctl_putuint (char*,int ) ;
 int ctl_putunqstr (char*,char const*,int ) ;
 char* last_fmt ;
 int rand () ;
 int snprintf (char*,int,char const*,int) ;
 char* sptoa (int *) ;
 int strlen (char const*) ;

__attribute__((used)) static void
send_mru_entry(
 mon_entry * mon,
 int count
 )
{
 const char first_fmt[] = "first.%d";
 const char ct_fmt[] = "ct.%d";
 const char mv_fmt[] = "mv.%d";
 const char rs_fmt[] = "rs.%d";
 char tag[32];
 u_char sent[6];
 u_int32 noise;
 u_int which;
 u_int remaining;
 const char * pch;

 remaining = COUNTOF(sent);
 ZERO(sent);
 noise = (u_int32)(rand() ^ (rand() << 16));
 while (remaining > 0) {
  which = (noise & 7) % COUNTOF(sent);
  noise >>= 3;
  while (sent[which])
   which = (which + 1) % COUNTOF(sent);

  switch (which) {

  case 0:
   snprintf(tag, sizeof(tag), addr_fmt, count);
   pch = sptoa(&mon->rmtadr);
   ctl_putunqstr(tag, pch, strlen(pch));
   break;

  case 1:
   snprintf(tag, sizeof(tag), last_fmt, count);
   ctl_putts(tag, &mon->last);
   break;

  case 2:
   snprintf(tag, sizeof(tag), first_fmt, count);
   ctl_putts(tag, &mon->first);
   break;

  case 3:
   snprintf(tag, sizeof(tag), ct_fmt, count);
   ctl_putint(tag, mon->count);
   break;

  case 4:
   snprintf(tag, sizeof(tag), mv_fmt, count);
   ctl_putuint(tag, mon->vn_mode);
   break;

  case 5:
   snprintf(tag, sizeof(tag), rs_fmt, count);
   ctl_puthex(tag, mon->flags);
   break;
  }
  sent[which] = TRUE;
  remaining--;
 }
}
