
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int xoc_effects; scalar_t__ xoc_col_fg; scalar_t__ xoc_col_bg; } ;
struct TYPE_5__ {int xo_color_buf; TYPE_2__ xo_colors; } ;
typedef TYPE_1__ xo_handle_t ;
typedef TYPE_2__ xo_colors_t ;
typedef int xo_buffer_t ;


 scalar_t__ XO_COL_DEFAULT ;
 int XO_EFF_INVERSE ;
 int xo_buf_append_str (int *,char const*) ;
 int xo_buf_reset (int *) ;
 char** xo_color_names ;
 char const** xo_effect_names ;

__attribute__((used)) static void
xo_colors_handle_html (xo_handle_t *xop, xo_colors_t *newp)
{
    xo_colors_t *oldp = &xop->xo_colors;







    if (oldp->xoc_effects == newp->xoc_effects
 && oldp->xoc_col_fg == newp->xoc_col_fg
 && oldp->xoc_col_bg == newp->xoc_col_bg)
 return;

    unsigned i, bit;
    xo_buffer_t *xbp = &xop->xo_color_buf;

    xo_buf_reset(xbp);

    for (i = 0, bit = 1; xo_effect_names[i]; i++, bit <<= 1) {
 if (!(newp->xoc_effects & bit))
     continue;

 xo_buf_append_str(xbp, " effect-");
 xo_buf_append_str(xbp, xo_effect_names[i]);
    }

    const char *fg = ((void*)0);
    const char *bg = ((void*)0);

    if (newp->xoc_col_fg != XO_COL_DEFAULT)
 fg = xo_color_names[newp->xoc_col_fg];
    if (newp->xoc_col_bg != XO_COL_DEFAULT)
 bg = xo_color_names[newp->xoc_col_bg];

    if (newp->xoc_effects & XO_EFF_INVERSE) {
 const char *tmp = fg;
 fg = bg;
 bg = tmp;
 if (fg == ((void*)0))
     fg = "inverse";
 if (bg == ((void*)0))
     bg = "inverse";

    }

    if (fg) {
 xo_buf_append_str(xbp, " color-fg-");
 xo_buf_append_str(xbp, fg);
    }

    if (bg) {
 xo_buf_append_str(xbp, " color-bg-");
 xo_buf_append_str(xbp, bg);
    }
}
