
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ui_out {int dummy; } ;
struct TYPE_2__ {int (* func ) (char*) ;scalar_t__ name; } ;


 int RETURN_ERROR ;
 int remote_fileio_ctrl_c_signal_handler ;
 int remote_fileio_sig_set (int ) ;
 TYPE_1__* remote_fio_func_map ;
 char* strchr (char*,char) ;
 int strcmp (scalar_t__,char*) ;
 int stub1 (char*) ;

__attribute__((used)) static int
do_remote_fileio_request (struct ui_out *uiout, void *buf_arg)
{
  char *buf = buf_arg;
  char *c;
  int idx;

  remote_fileio_sig_set (remote_fileio_ctrl_c_signal_handler);

  c = strchr (++buf, ',');
  if (c)
    *c++ = '\0';
  else
    c = strchr (buf, '\0');
  for (idx = 0; remote_fio_func_map[idx].name; ++idx)
    if (!strcmp (remote_fio_func_map[idx].name, buf))
      break;
  if (!remote_fio_func_map[idx].name)
    return RETURN_ERROR;
  remote_fio_func_map[idx].func (c);
  return 0;
}
