
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_radio_work {int type; } ;


 scalar_t__ os_strcmp (int ,char*) ;

__attribute__((used)) static int radio_work_is_scan(struct wpa_radio_work *work)
{
 return os_strcmp(work->type, "scan") == 0 ||
  os_strcmp(work->type, "p2p-scan") == 0;
}
