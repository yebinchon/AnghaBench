
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xo_handle_t ;
struct TYPE_3__ {int xoc_col_fg; int xoc_col_bg; int xoc_effects; } ;
typedef TYPE_1__ xo_colors_t ;
typedef int ssize_t ;


 scalar_t__ XOF_ISSET (int *,int ) ;
 int XOF_WARN ;
 int const XO_EFF_BOLD ;
 int const XO_EFF_INVERSE ;


 int const XO_EFF_UNDERLINE ;
 scalar_t__ isspace (char) ;
 char* strchr (char*,char) ;
 int strlen (char*) ;
 int xo_color_find (char*) ;
 int xo_effect_find (char*) ;
 int xo_failure (int *,char*,char*) ;
 scalar_t__ xo_text_only () ;

__attribute__((used)) static void
xo_colors_parse (xo_handle_t *xop, xo_colors_t *xocp, char *str)
{
    if (xo_text_only())
 return;

    char *cp, *ep, *np, *xp;
    ssize_t len = strlen(str);
    int rc;




    for (cp = str, ep = cp + len - 1; cp && cp < ep; cp = np) {

 while (isspace((int) *cp))
     cp += 1;

 np = strchr(cp, ',');
 if (np)
     *np++ = '\0';


 xp = cp + strlen(cp) - 1;
 while (isspace(*xp) && xp > cp)
     *xp-- = '\0';

 if (cp[0] == 'f' && cp[1] == 'g' && cp[2] == '-') {
     rc = xo_color_find(cp + 3);
     if (rc < 0)
  goto unknown;

     xocp->xoc_col_fg = rc;

 } else if (cp[0] == 'b' && cp[1] == 'g' && cp[2] == '-') {
     rc = xo_color_find(cp + 3);
     if (rc < 0)
  goto unknown;
     xocp->xoc_col_bg = rc;

 } else if (cp[0] == 'n' && cp[1] == 'o' && cp[2] == '-') {
     rc = xo_effect_find(cp + 3);
     if (rc < 0)
  goto unknown;
     xocp->xoc_effects &= ~(1 << rc);

 } else {
     rc = xo_effect_find(cp);
     if (rc < 0)
  goto unknown;
     xocp->xoc_effects |= 1 << rc;

     switch (1 << rc) {
     case 128:
  xocp->xoc_col_fg = xocp->xoc_col_bg = 0;

  xocp->xoc_effects = 128;
  break;

     case 129:
  xocp->xoc_effects &= ~(XO_EFF_BOLD | XO_EFF_UNDERLINE
          | XO_EFF_INVERSE | 129);
  break;
     }
 }
 continue;

    unknown:
 if (XOF_ISSET(xop, XOF_WARN))
     xo_failure(xop, "unknown color/effect string detected: '%s'", cp);
    }
}
