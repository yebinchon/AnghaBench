
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_LOCAL0 ;
 int LOG_NDELAY ;
 int LOG_PID ;
 scalar_t__ PJDLOG_INITIALIZED ;
 int PJDLOG_MODE_SOCK ;
 int PJDLOG_MODE_STD ;
 int PJDLOG_MODE_SYSLOG ;
 scalar_t__ PJDLOG_NEVER_INITIALIZED ;
 scalar_t__ PJDLOG_NOT_INITIALIZED ;
 int __use_xprintf ;
 int assert (int) ;
 int errno ;
 int openlog (int *,int,int ) ;
 scalar_t__ pjdlog_debug_level ;
 scalar_t__ pjdlog_initialized ;
 int pjdlog_mode ;
 char** pjdlog_prefix ;
 scalar_t__ pjdlog_prefix_current ;
 int pjdlog_printf_arginfo_humanized_number ;
 int pjdlog_printf_arginfo_sockaddr ;
 int pjdlog_printf_render_humanized_number ;
 int pjdlog_printf_render_sockaddr ;
 int pjdlog_printf_render_sockaddr_ip ;
 int pjdlog_sock ;
 int register_printf_render (char,int ,int ) ;
 int register_printf_render_std (char*) ;

void
pjdlog_init(int mode)
{
 int saved_errno;

 assert(pjdlog_initialized == PJDLOG_NEVER_INITIALIZED ||
     pjdlog_initialized == PJDLOG_NOT_INITIALIZED);




 assert(mode == PJDLOG_MODE_STD || mode == PJDLOG_MODE_SYSLOG);


 saved_errno = errno;

 if (pjdlog_initialized == PJDLOG_NEVER_INITIALIZED) {
  __use_xprintf = 1;
  register_printf_render_std("T");
  register_printf_render('N',
      pjdlog_printf_render_humanized_number,
      pjdlog_printf_arginfo_humanized_number);
  register_printf_render('I',
      pjdlog_printf_render_sockaddr_ip,
      pjdlog_printf_arginfo_sockaddr);
  register_printf_render('S',
      pjdlog_printf_render_sockaddr,
      pjdlog_printf_arginfo_sockaddr);
 }

 if (mode == PJDLOG_MODE_SYSLOG)
  openlog(((void*)0), LOG_PID | LOG_NDELAY, LOG_LOCAL0);
 pjdlog_mode = mode;
 pjdlog_debug_level = 0;
 pjdlog_prefix_current = 0;
 pjdlog_prefix[0][0] = '\0';

 pjdlog_initialized = PJDLOG_INITIALIZED;
 pjdlog_sock = -1;

 errno = saved_errno;
}
