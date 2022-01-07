
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
struct udev {int dummy; } ;


 int LOG_ERR ;
 int MSG_MAX ;
 int snprintf (char*,int,char*,char const*,int,char const*) ;
 int syslog (int ,char*) ;
 int vsnprintf (char*,int,char const*,int ) ;

__attribute__((used)) static void udev_log_fn(struct udev *ud, int priority, const char *file, int line,
  const char *fn, const char *format, va_list args)
{
 int off = 0;
 char msg[MSG_MAX];
 off = snprintf(msg, MSG_MAX, "libudev: %s:%d %s",
   file, line, fn);
 if (off < MSG_MAX-1)
  vsnprintf(msg+off, MSG_MAX-off, format, args);
 syslog(LOG_ERR, msg);
}
