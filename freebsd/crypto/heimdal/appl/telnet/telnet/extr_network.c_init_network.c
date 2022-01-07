
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NetTrace ;
 int exit (int) ;
 void* malloc (int ) ;
 int netibufsize ;
 int netiring ;
 int netobufsize ;
 int netoring ;
 int ring_init (int *,void*,int ) ;
 int stdout ;

void
init_network(void)
{
    void *obuf, *ibuf;

    if ((obuf = malloc(netobufsize)) == ((void*)0))
 exit(1);
    if ((ibuf = malloc(netibufsize)) == ((void*)0))
 exit(1);

    if (ring_init(&netoring, obuf, netobufsize) != 1) {
 exit(1);
    }
    if (ring_init(&netiring, ibuf, netibufsize) != 1) {
 exit(1);
    }
    NetTrace = stdout;
}
