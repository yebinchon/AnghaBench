
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int time_t ;
struct peer {int flags; scalar_t__ throttle; int nextdate; struct peer* p_link; } ;
struct TYPE_3__ {int l_ui; } ;
typedef TYPE_1__ l_fp ;


 int DPRINTF (int,char*) ;
 int FALSE ;
 int FLAG_REFCLOCK ;
 scalar_t__ HUFFPUFF ;
 int LEAP_ADDSECOND ;
 int LEAP_DELSECOND ;
 scalar_t__ LEAP_NOTINSYNC ;
 int LEAP_NOWARNING ;
 int LOOPBACKADR ;
 scalar_t__ LSPROX_ANNOUNCE ;
 scalar_t__ LSPROX_NOWARN ;
 int RAND_bytes (int*,int) ;
 scalar_t__ SECSPERDAY ;
 scalar_t__ SECSPERHR ;
 scalar_t__ STRATUM_UNSPEC ;
 int TRUE ;
 int adj_host_clock () ;
 int adjust_timer ;
 int auth_agekeys () ;
 int check_leap_file (int ,int ,int *) ;
 int check_leapsec (int ,int *,int) ;
 scalar_t__ crypto_flags ;
 int crypto_update () ;
 int current_time ;
 int get_systime (TYPE_1__*) ;
 int htonl (int ) ;
 int huffpuff () ;
 int huffpuff_timer ;
 scalar_t__ interface_interval ;
 int interface_timer ;
 int interface_update (int *,int *) ;
 int keys_timer ;
 scalar_t__ leapdif ;
 int leapf_timer ;
 scalar_t__ leapsec ;
 int memcpy (int *,char*,int) ;
 int orphwait ;
 struct peer* peer_list ;
 int refclock_timer (struct peer*) ;
 int refclock_transmit (struct peer*) ;
 int revoke_timer ;
 int set_sys_leap (int ) ;
 int stats_timer ;
 unsigned long sys_automax ;
 scalar_t__ sys_leap ;
 scalar_t__ sys_offset ;
 scalar_t__ sys_orphan ;
 int * sys_peer ;
 int sys_private ;
 int sys_refid ;
 unsigned long sys_revoke ;
 scalar_t__ sys_rootdelay ;
 scalar_t__ sys_rootdisp ;
 int sys_stratum ;
 int time (int *) ;
 int timer_interfacetimeout (scalar_t__) ;
 int transmit (struct peer*) ;
 int worker_idle_timer ;
 int worker_idle_timer_fired () ;
 int write_stats () ;

void
timer(void)
{
 struct peer * p;
 struct peer * next_peer;
 l_fp now;
 time_t tnow;






 current_time++;
 if (adjust_timer <= current_time) {
  adjust_timer += 1;
  adj_host_clock();







 }






 for (p = peer_list; p != ((void*)0); p = next_peer) {
  next_peer = p->p_link;







  if (p->throttle > 0)
   p->throttle--;
  if (p->nextdate <= current_time) {





    transmit(p);
  }
 }







 if (sys_orphan < STRATUM_UNSPEC && sys_peer == ((void*)0) &&
     current_time > orphwait) {
  if (sys_leap == LEAP_NOTINSYNC) {
   set_sys_leap(LEAP_NOWARNING);




  }
  sys_stratum = (u_char)sys_orphan;
  if (sys_stratum > 1)
   sys_refid = htonl(LOOPBACKADR);
  else
   memcpy(&sys_refid, "LOOP", 4);
  sys_offset = 0;
  sys_rootdelay = 0;
  sys_rootdisp = 0;
 }

 get_systime(&now);
 time(&tnow);





 if (leapsec > LSPROX_NOWARN || 0 == (current_time & 7))
  check_leapsec(now.l_ui, &tnow,
                                (sys_leap == LEAP_NOTINSYNC));
        if (sys_leap != LEAP_NOTINSYNC) {
                if (leapsec >= LSPROX_ANNOUNCE && leapdif) {
          if (leapdif > 0)
           set_sys_leap(LEAP_ADDSECOND);
          else
           set_sys_leap(LEAP_DELSECOND);
                } else {
                        set_sys_leap(LEAP_NOWARNING);
                }
 }




 if (huffpuff_timer <= current_time) {
  huffpuff_timer += HUFFPUFF;
  huffpuff();
 }
 if (interface_interval && interface_timer <= current_time) {
  timer_interfacetimeout(current_time +
      interface_interval);
  DPRINTF(2, ("timer: interface update\n"));
  interface_update(((void*)0), ((void*)0));
 }

 if (worker_idle_timer && worker_idle_timer <= current_time)
  worker_idle_timer_fired();





 if (stats_timer <= current_time) {
  stats_timer += SECSPERHR;
  write_stats();
  if (leapf_timer <= current_time) {
   leapf_timer += SECSPERDAY;
   check_leap_file(TRUE, now.l_ui, &tnow);
  } else {
   check_leap_file(FALSE, now.l_ui, &tnow);
  }
 }
}
