
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {unsigned int ext_listen_period; unsigned int ext_listen_interval; unsigned int ext_listen_interval_sec; unsigned int ext_listen_interval_usec; } ;


 int eloop_cancel_timeout (int ,struct p2p_data*,int *) ;
 int eloop_register_timeout (unsigned int,unsigned int,int ,struct p2p_data*,int *) ;
 int p2p_dbg (struct p2p_data*,char*,...) ;
 int p2p_ext_listen_timeout ;

int p2p_ext_listen(struct p2p_data *p2p, unsigned int period,
     unsigned int interval)
{
 if (period > 65535 || interval > 65535 || period > interval ||
     (period == 0 && interval > 0) || (period > 0 && interval == 0)) {
  p2p_dbg(p2p, "Invalid Extended Listen Timing request: period=%u interval=%u",
   period, interval);
  return -1;
 }

 eloop_cancel_timeout(p2p_ext_listen_timeout, p2p, ((void*)0));

 if (interval == 0) {
  p2p_dbg(p2p, "Disabling Extended Listen Timing");
  p2p->ext_listen_period = 0;
  p2p->ext_listen_interval = 0;
  return 0;
 }

 p2p_dbg(p2p, "Enabling Extended Listen Timing: period %u msec, interval %u msec",
  period, interval);
 p2p->ext_listen_period = period;
 p2p->ext_listen_interval = interval;
 p2p->ext_listen_interval_sec = interval / 1000;
 p2p->ext_listen_interval_usec = (interval % 1000) * 1000;

 eloop_register_timeout(p2p->ext_listen_interval_sec,
          p2p->ext_listen_interval_usec,
          p2p_ext_listen_timeout, p2p, ((void*)0));

 return 0;
}
