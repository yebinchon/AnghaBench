
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int c_oflag; } ;


 int OCRNL ;
 int ONLCR ;
 int ONLRET ;
 char PC ;
 int SET_TTY (int ,TYPE_1__*) ;
 int STDERR_FILENO ;
 int TAB3 ;
 int TRUE ;
 int cat (char*) ;
 int fflush (int ) ;
 char* init_file ;
 scalar_t__ isreset ;
 int napms (int) ;
 TYPE_1__ oldmode ;
 int outc ;
 char* pad_char ;
 int putc (char,int ) ;
 char* reset_1string ;
 char* reset_2string ;
 char* reset_file ;
 int set_tabs () ;
 int stderr ;
 int tputs (char*,int ,int ) ;

__attribute__((used)) static void
set_init(void)
{
    char *p;
    bool settle;
    settle = set_tabs();

    if (isreset) {
 if ((p = reset_1string) != 0) {
     tputs(p, 0, outc);
     settle = TRUE;
 }
 if ((p = reset_2string) != 0) {
     tputs(p, 0, outc);
     settle = TRUE;
 }


 if ((p = reset_file) != 0
     || (p = init_file) != 0) {
     cat(p);
     settle = TRUE;
 }
    }

    if (settle) {
 (void) putc('\r', stderr);
 (void) fflush(stderr);
 (void) napms(1000);
    }
}
