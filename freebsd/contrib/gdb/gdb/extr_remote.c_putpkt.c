
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putpkt_binary (char*,int ) ;
 int strlen (char*) ;

int
putpkt (char *buf)
{
  return putpkt_binary (buf, strlen (buf));
}
