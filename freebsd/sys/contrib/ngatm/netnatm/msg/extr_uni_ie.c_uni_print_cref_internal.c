
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int dummy; } ;
struct uni_cref {scalar_t__ cref; int flag; } ;


 scalar_t__ CREF_DUMMY ;
 scalar_t__ CREF_GLOBAL ;
 int uni_print_entry (struct unicx*,char*,char*,int ) ;
 int uni_printf (struct unicx*,char*,...) ;

__attribute__((used)) static void
uni_print_cref_internal(const struct uni_cref *cref, struct unicx *cx)
{
 uni_print_entry(cx, "cref", "%d.", cref->flag);
 if (cref->cref == CREF_GLOBAL)
  uni_printf(cx, "GLOBAL");
 else if (cref->cref == CREF_DUMMY)
  uni_printf(cx, "DUMMY");
 else
  uni_printf(cx, "%d", cref->cref);
}
