
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ consume; } ;


 int Dump (char,scalar_t__,int) ;
 scalar_t__ ENOBUFS ;
 scalar_t__ EWOULDBLOCK ;
 int ExitString (char*,int) ;
 int MSG_OOB ;
 int NetClose (int ) ;
 scalar_t__ encrypt_output ;
 scalar_t__ errno ;
 int hostname ;
 int net ;
 scalar_t__ netdata ;
 TYPE_1__ netoring ;
 int perror (int ) ;
 int ring_at_mark (TYPE_1__*) ;
 int ring_clear_mark (TYPE_1__*) ;
 int ring_consumed (TYPE_1__*,int) ;
 int ring_encrypt (TYPE_1__*,scalar_t__) ;
 int ring_full_consecutive (TYPE_1__*) ;
 int send (int ,char*,int,int ) ;
 int setcommandmode () ;

int
netflush(void)
{
    int n, n1;





    if ((n1 = n = ring_full_consecutive(&netoring)) > 0) {
 if (!ring_at_mark(&netoring)) {
     n = send(net, (char *)netoring.consume, n, 0);
 } else {
     n = send(net, (char *)netoring.consume, 1, MSG_OOB);
 }
    }
    if (n < 0) {
 if (errno != ENOBUFS && errno != EWOULDBLOCK) {
     setcommandmode();
     perror(hostname);
     (void)NetClose(net);
     ring_clear_mark(&netoring);
     ExitString("Connection closed by foreign host.\n", 1);

 }
 n = 0;
    }
    if (netdata && n) {
 Dump('>', netoring.consume, n);
    }
    if (n) {
 ring_consumed(&netoring, n);




 if ((n1 == n) && ring_full_consecutive(&netoring)) {
     (void) netflush();
 }
 return 1;
    } else {
 return 0;
    }
}
