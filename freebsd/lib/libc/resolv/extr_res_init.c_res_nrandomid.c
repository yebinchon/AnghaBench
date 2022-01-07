
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int16_t ;
typedef int u_int ;
typedef scalar_t__ u_char ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef TYPE_1__* res_state ;
struct TYPE_3__ {scalar_t__* _rnd; } ;
typedef int MD5_CTX ;


 int MD5Final (scalar_t__*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,scalar_t__*,int) ;
 int MD5_Final (scalar_t__*,int *) ;
 int MD5_Init (int *) ;
 int MD5_Update (int *,scalar_t__*,int) ;
 int gettimeofday (struct timeval*,int *) ;
 int memcpy (scalar_t__*,scalar_t__*,int) ;
 scalar_t__* srnd ;

u_int
res_nrandomid(res_state statp) {
 struct timeval now;
 u_int16_t u16;
 MD5_CTX ctx;
 u_char *rnd = statp->_rnd == ((void*)0) ? srnd : statp->_rnd;

 gettimeofday(&now, ((void*)0));
 u16 = (u_int16_t) (now.tv_sec ^ now.tv_usec);
 memcpy(rnd + 14, &u16, 2);

 MD5_Init(&ctx);
 MD5_Update(&ctx, rnd, 16);
 MD5_Final(rnd, &ctx);





 memcpy(&u16, rnd + 14, 2);
 return ((u_int) u16);
}
