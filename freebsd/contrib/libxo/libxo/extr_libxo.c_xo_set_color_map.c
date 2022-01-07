
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* xo_color_map_fg; int* xo_color_map_bg; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int ssize_t ;


 int XOF_CLEAR (TYPE_1__*,int ) ;
 int XOF_COLOR_MAP ;
 int XOF_SET (TYPE_1__*,int ) ;
 int XO_NUM_COLORS ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int xo_color_find (char*) ;
 scalar_t__ xo_text_only () ;

__attribute__((used)) static void
xo_set_color_map (xo_handle_t *xop, char *value)
{
    if (xo_text_only())
 return;

    char *cp, *ep, *vp, *np;
    ssize_t len = value ? strlen(value) + 1 : 0;
    int num = 1, fg, bg;

    for (cp = value, ep = cp + len - 1; cp && *cp && cp < ep; cp = np) {
 np = strchr(cp, '+');
 if (np)
     *np++ = '\0';

 vp = strchr(cp, '/');
 if (vp)
     *vp++ = '\0';

 fg = *cp ? xo_color_find(cp) : -1;
 bg = (vp && *vp) ? xo_color_find(vp) : -1;


 xop->xo_color_map_fg[num] = (fg < 0) ? num : fg;
 xop->xo_color_map_bg[num] = (bg < 0) ? num : bg;


 if (++num > XO_NUM_COLORS)
     break;
    }


    if (num > 1)
 XOF_SET(xop, XOF_COLOR_MAP);
    else
 XOF_CLEAR(xop, XOF_COLOR_MAP);



    for ( ; num < XO_NUM_COLORS; num++)
 xop->xo_color_map_fg[num] = xop->xo_color_map_bg[num] = num;

}
