
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long INT_MAX ;
 int LOG_ERR ;
 int failure_retry_rate ;
 int foreground ;
 char* pidfile ;
 int set_retry_cnt ;
 unsigned long strtoul (char*,int *,int ) ;
 int syslog (int ,char*,unsigned long) ;

__attribute__((used)) static int process_opts(void *context, int ch, char *optarg)
{
 unsigned long tmp;
 switch (ch) {
 case 0:
  pidfile = optarg;
  break;
 case 'f':
  foreground = 1;
  break;
 case 't':
  tmp = strtoul(optarg, ((void*)0), 0);
  if (tmp >= INT_MAX) {
   syslog(LOG_ERR,
    "Invalid retry rate specified: %lu s\n",
    tmp);
  } else {
   failure_retry_rate = (int)tmp;
  }
  break;
 case 'r':
  tmp = strtoul(optarg, ((void*)0), 0);
  if (tmp >= INT_MAX) {
   syslog(LOG_ERR,
    "Invalid retry count specified: %lu\n",
    tmp);
  } else {
   set_retry_cnt = (int)tmp;
  }
  break;
 default:
  return -1;
 }
 return 0;
}
