
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_ctrl {int dummy; } ;


 int _wpa_ctrl_command (struct wpa_ctrl*,char const*,int) ;

__attribute__((used)) static inline int wpa_ctrl_command(struct wpa_ctrl *ctrl, const char *cmd)
{
 return _wpa_ctrl_command(ctrl, cmd, 1);
}
