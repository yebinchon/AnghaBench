
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int xoc_effects; scalar_t__ xoc_col_fg; scalar_t__ xoc_col_bg; } ;
struct TYPE_5__ {int xo_data; TYPE_2__ xo_colors; } ;
typedef TYPE_1__ xo_handle_t ;
typedef TYPE_2__ xo_colors_t ;
typedef scalar_t__ xo_color_t ;
typedef int buf ;


 int BUFSIZ ;
 scalar_t__ XO_COL_DEFAULT ;
 unsigned int XO_EFF_RESET ;
 int snprintf (char*,int,char*,scalar_t__) ;
 int xo_buf_append (int *,char*,int) ;
 scalar_t__* xo_effect_names ;
 char** xo_effect_on_codes ;

__attribute__((used)) static void
xo_colors_handle_text (xo_handle_t *xop, xo_colors_t *newp)
{
    char buf[BUFSIZ];
    char *cp = buf, *ep = buf + sizeof(buf);
    unsigned i, bit;
    xo_colors_t *oldp = &xop->xo_colors;
    const char *code = ((void*)0);






    *cp++ = 0x1b;
    if (oldp->xoc_effects != (newp->xoc_effects & oldp->xoc_effects)) {
 newp->xoc_effects |= XO_EFF_RESET;
 oldp->xoc_effects = 0;
    }

    for (i = 0, bit = 1; xo_effect_names[i]; i++, bit <<= 1) {
 if ((newp->xoc_effects & bit) == (oldp->xoc_effects & bit))
     continue;

 code = xo_effect_on_codes[i];

 cp += snprintf(cp, ep - cp, ";%s", code);
 if (cp >= ep)
     return;

 if (bit == XO_EFF_RESET) {

     oldp->xoc_effects = 0;
     oldp->xoc_col_fg = oldp->xoc_col_bg = XO_COL_DEFAULT;
 }
    }

    xo_color_t fg = newp->xoc_col_fg;
    if (fg != oldp->xoc_col_fg) {
 cp += snprintf(cp, ep - cp, ";3%u",
         (fg != XO_COL_DEFAULT) ? fg - 1 : 9);
    }

    xo_color_t bg = newp->xoc_col_bg;
    if (bg != oldp->xoc_col_bg) {
 cp += snprintf(cp, ep - cp, ";4%u",
         (bg != XO_COL_DEFAULT) ? bg - 1 : 9);
    }

    if (cp - buf != 1 && cp < ep - 3) {
 buf[1] = '[';
 *cp++ = 'm';
 *cp = '\0';
 xo_buf_append(&xop->xo_data, buf, cp - buf);
    }
}
