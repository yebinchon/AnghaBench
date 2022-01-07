
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
typedef scalar_t__ u_int16_t ;
typedef int u_char ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
typedef TYPE_1__* res_state ;
struct TYPE_3__ {int * _rnd; } ;


 scalar_t__ getpid () ;
 int gettimeofday (struct timeval*,int *) ;
 int memcpy (int *,scalar_t__*,int) ;
 int * srnd ;

void
res_rndinit(res_state statp)
{
 struct timeval now;
 u_int32_t u32;
 u_int16_t u16;
 u_char *rnd = statp->_rnd == ((void*)0) ? srnd : statp->_rnd;

 gettimeofday(&now, ((void*)0));
 u32 = now.tv_sec;
 memcpy(rnd, &u32, 4);
 u32 = now.tv_usec;
 memcpy(rnd + 4, &u32, 4);
 u32 += now.tv_sec;
 memcpy(rnd + 8, &u32, 4);
 u16 = getpid();
 memcpy(rnd + 12, &u16, 2);
}
