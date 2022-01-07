
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* xb_curp; } ;
typedef TYPE_1__ xo_buffer_t ;
typedef int ssize_t ;


 int memmove (char*,char*,int) ;

__attribute__((used)) static ssize_t
xo_trim_ws (xo_buffer_t *xbp, ssize_t len)
{
    char *cp, *sp, *ep;
    ssize_t delta;


    for (cp = sp = xbp->xb_curp, ep = cp + len; cp < ep; cp++) {
 if (*cp != ' ')
     break;
    }

    delta = cp - sp;
    if (delta) {
 len -= delta;
 memmove(sp, cp, len);
    }


    for (cp = xbp->xb_curp, sp = ep = cp + len; cp < ep; ep--) {
 if (ep[-1] != ' ')
     break;
    }

    delta = sp - ep;
    if (delta) {
 len -= delta;
 cp[len] = '\0';
    }

    return len;
}
