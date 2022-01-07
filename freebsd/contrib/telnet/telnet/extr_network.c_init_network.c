
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NetTrace ;
 int exit (int) ;
 int netibuf ;
 int netiring ;
 int netobuf ;
 int netoring ;
 int ring_init (int *,int ,int) ;
 int stdout ;

void
init_network(void)
{
    if (ring_init(&netoring, netobuf, sizeof netobuf) != 1) {
 exit(1);
    }
    if (ring_init(&netiring, netibuf, sizeof netibuf) != 1) {
 exit(1);
    }
    NetTrace = stdout;
}
