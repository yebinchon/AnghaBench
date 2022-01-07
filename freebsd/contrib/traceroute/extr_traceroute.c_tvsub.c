
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;



void
tvsub(register struct timeval *out, register struct timeval *in)
{

 if ((out->tv_usec -= in->tv_usec) < 0) {
  --out->tv_sec;
  out->tv_usec += 1000000;
 }
 out->tv_sec -= in->tv_sec;
}
