
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TELOPT_LINEMODE ;
 int lm_mode (unsigned char*,int,int) ;
 scalar_t__ my_want_state_is_wont (int ) ;
 int printf (char*) ;

__attribute__((used)) static int
dolmmode(int bit, int on)
{
    unsigned char c;
    extern int linemode;

    if (my_want_state_is_wont(TELOPT_LINEMODE)) {
 printf("?Need to have LINEMODE option enabled first.\n");
 printf("'mode ?' for help.\n");
 return 0;
    }

    if (on)
 c = (linemode | bit);
    else
 c = (linemode & ~bit);
    lm_mode(&c, 1, 1);
    return 1;
}
