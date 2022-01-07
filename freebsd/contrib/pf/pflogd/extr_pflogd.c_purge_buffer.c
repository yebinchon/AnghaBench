
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int buffer ;
 int bufleft ;
 int buflen ;
 scalar_t__ bufpkt ;
 int bufpos ;
 int packets_dropped ;
 int set_suspended (int ) ;

void
purge_buffer(void)
{
 packets_dropped += bufpkt;

 set_suspended(0);
 bufpos = buffer;
 bufleft = buflen;
 bufpkt = 0;
}
