
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int* LLADDR (struct sockaddr_dl*) ;

__attribute__((used)) static u_int
fv_set_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint16_t *sp = arg;
 uint8_t *ma;
 int i;

 ma = LLADDR(sdl);
 i = cnt * 6;
 sp[i] = sp[i+1] = (ma[1] << 8 | ma[0]);
 i += 2;
 sp[i] = sp[i+1] = (ma[3] << 8 | ma[2]);
 i += 2;
 sp[i] = sp[i+1] = (ma[5] << 8 | ma[4]);

 return (1);
}
