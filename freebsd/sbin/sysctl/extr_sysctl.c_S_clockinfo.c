
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clockinfo {int stathz; int profhz; int tick; int hz; } ;


 scalar_t__ hflag ;
 int printf (char*,int ,int ,int ,int ) ;
 int warnx (char*,size_t,int) ;

__attribute__((used)) static int
S_clockinfo(size_t l2, void *p)
{
 struct clockinfo *ci = (struct clockinfo*)p;

 if (l2 != sizeof(*ci)) {
  warnx("S_clockinfo %zu != %zu", l2, sizeof(*ci));
  return (1);
 }
 printf(hflag ? "{ hz = %'d, tick = %'d, profhz = %'d, stathz = %'d }" :
  "{ hz = %d, tick = %d, profhz = %d, stathz = %d }",
  ci->hz, ci->tick, ci->profhz, ci->stathz);
 return (0);
}
