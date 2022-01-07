
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int warned_lead_slash; } ;


 int lafe_warnc (int ,char*,char const) ;

__attribute__((used)) static void
warn_strip_leading_char(struct bsdtar *bsdtar, const char *c)
{
 if (!bsdtar->warned_lead_slash) {
  lafe_warnc(0,
      "Removing leading '%c' from member names",
      c[0]);
  bsdtar->warned_lead_slash = 1;
 }
}
