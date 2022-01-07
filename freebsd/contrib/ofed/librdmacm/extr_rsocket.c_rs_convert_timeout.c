
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;



__attribute__((used)) static int rs_convert_timeout(struct timeval *timeout)
{
 return !timeout ? -1 :
  timeout->tv_sec * 1000 + timeout->tv_usec / 1000;
}
