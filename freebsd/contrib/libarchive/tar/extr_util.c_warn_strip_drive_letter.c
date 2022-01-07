
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdtar {int warned_lead_slash; } ;


 int lafe_warnc (int ,char*) ;

__attribute__((used)) static void
warn_strip_drive_letter(struct bsdtar *bsdtar)
{
 if (!bsdtar->warned_lead_slash) {
  lafe_warnc(0,
      "Removing leading drive letter from "
      "member names");
  bsdtar->warned_lead_slash = 1;
 }
}
