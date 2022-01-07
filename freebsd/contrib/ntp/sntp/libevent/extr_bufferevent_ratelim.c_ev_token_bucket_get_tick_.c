
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;
struct ev_token_bucket_cfg {int msec_per_tick; } ;
typedef int ev_uint64_t ;
typedef unsigned int ev_uint32_t ;



ev_uint32_t
ev_token_bucket_get_tick_(const struct timeval *tv,
    const struct ev_token_bucket_cfg *cfg)
{
 ev_uint64_t msec = (ev_uint64_t)tv->tv_sec * 1000 + tv->tv_usec / 1000;
 return (unsigned)(msec / cfg->msec_per_tick);
}
