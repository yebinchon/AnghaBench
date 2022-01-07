
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 int get_wpa_cli_event2 (struct wpa_ctrl*,char const*,int *,char*,size_t) ;

int get_wpa_cli_event(struct wpa_ctrl *mon,
        const char *event, char *buf, size_t buf_size)
{
 return get_wpa_cli_event2(mon, event, ((void*)0), buf, buf_size);
}
