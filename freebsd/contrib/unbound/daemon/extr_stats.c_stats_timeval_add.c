
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void
stats_timeval_add(long long* d_sec, long long* d_usec, long long add_sec, long long add_usec)
{

 (*d_sec) += add_sec;
 (*d_usec) += add_usec;
 if((*d_usec) > 1000000) {
  (*d_usec) -= 1000000;
  (*d_sec)++;
 }

}
