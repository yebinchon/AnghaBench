
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TerminalAutoFlush () ;
 int autoflush ;
 int exit (int) ;
 int ring_init (int *,int ,int) ;
 int ttyibuf ;
 int ttyiring ;
 int ttyobuf ;
 int ttyoring ;

void
init_terminal(void)
{
    if (ring_init(&ttyoring, ttyobuf, sizeof ttyobuf) != 1) {
 exit(1);
    }
    if (ring_init(&ttyiring, ttyibuf, sizeof ttyibuf) != 1) {
 exit(1);
    }
    autoflush = TerminalAutoFlush();
}
