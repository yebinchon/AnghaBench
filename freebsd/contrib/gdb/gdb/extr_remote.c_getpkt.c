
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getpkt_sane (char*,long,int) ;

void
getpkt (char *buf,
 long sizeof_buf,
 int forever)
{
  int timed_out;

  timed_out = getpkt_sane (buf, sizeof_buf, forever);
}
