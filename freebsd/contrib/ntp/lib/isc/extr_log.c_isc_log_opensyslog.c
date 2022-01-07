
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int openlog (char const*,int,int) ;

void
isc_log_opensyslog(const char *tag, int options, int facility) {
 (void)openlog(tag, options, facility);
}
