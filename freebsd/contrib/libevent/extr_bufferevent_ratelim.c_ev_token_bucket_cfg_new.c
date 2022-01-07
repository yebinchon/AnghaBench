
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct ev_token_bucket_cfg {size_t read_rate; size_t write_rate; size_t read_maximum; size_t write_maximum; int msec_per_tick; int tick_timeout; } ;


 int COMMON_TIMEOUT_MICROSECONDS_MASK ;
 size_t EV_RATE_LIMIT_MAX ;
 int memcpy (int *,struct timeval const*,int) ;
 struct ev_token_bucket_cfg* mm_calloc (int,int) ;

struct ev_token_bucket_cfg *
ev_token_bucket_cfg_new(size_t read_rate, size_t read_burst,
    size_t write_rate, size_t write_burst,
    const struct timeval *tick_len)
{
 struct ev_token_bucket_cfg *r;
 struct timeval g;
 if (! tick_len) {
  g.tv_sec = 1;
  g.tv_usec = 0;
  tick_len = &g;
 }
 if (read_rate > read_burst || write_rate > write_burst ||
     read_rate < 1 || write_rate < 1)
  return ((void*)0);
 if (read_rate > EV_RATE_LIMIT_MAX ||
     write_rate > EV_RATE_LIMIT_MAX ||
     read_burst > EV_RATE_LIMIT_MAX ||
     write_burst > EV_RATE_LIMIT_MAX)
  return ((void*)0);
 r = mm_calloc(1, sizeof(struct ev_token_bucket_cfg));
 if (!r)
  return ((void*)0);
 r->read_rate = read_rate;
 r->write_rate = write_rate;
 r->read_maximum = read_burst;
 r->write_maximum = write_burst;
 memcpy(&r->tick_timeout, tick_len, sizeof(struct timeval));
 r->msec_per_tick = (tick_len->tv_sec * 1000) +
     (tick_len->tv_usec & COMMON_TIMEOUT_MICROSECONDS_MASK)/1000;
 return r;
}
