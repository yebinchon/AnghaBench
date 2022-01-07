
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ DPV_APROMPT_MAX ;
 int DPV_DISPLAY_LIMIT ;
 scalar_t__ DPV_PPROMPT_MAX ;
 int dheight ;
 int dlg_reallocate_gauge (int ,char*,char*,int ,int ,int) ;
 int dlg_update_gauge (int ,int) ;
 int dprompt_sprint (char*,char const*,char const*) ;
 int dwidth ;
 int gauge ;
 int gauge_percent ;
 char* title ;

void
dprompt_libprint(const char *prefix, const char *append, int overall)
{
 int percent = gauge_percent;
 char buf[DPV_PPROMPT_MAX + DPV_APROMPT_MAX + DPV_DISPLAY_LIMIT * 1024];

 dprompt_sprint(buf, prefix, append);

 if (overall >= 0 && overall <= 100)
  gauge_percent = percent = overall;
 gauge = dlg_reallocate_gauge(gauge, title == ((void*)0) ? "" : title,
     buf, dheight, dwidth, percent);
 dlg_update_gauge(gauge, percent);
}
