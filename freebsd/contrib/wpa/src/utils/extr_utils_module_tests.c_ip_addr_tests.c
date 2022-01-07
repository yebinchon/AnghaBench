
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_ip_addr {scalar_t__ af; } ;
typedef int buf ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int MSG_ERROR ;
 int MSG_INFO ;
 char* hostapd_ip_txt (struct hostapd_ip_addr*,char*,int) ;
 scalar_t__ hostapd_parse_ip_addr (char*,struct hostapd_ip_addr*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int ip_addr_tests(void)
{
 int errors = 0;
 struct hostapd_ip_addr addr;
 char buf[100];

 wpa_printf(MSG_INFO, "ip_addr tests");

 if (hostapd_parse_ip_addr("1.2.3.4", &addr) != 0 ||
     addr.af != AF_INET ||
     hostapd_ip_txt(((void*)0), buf, sizeof(buf)) != ((void*)0) ||
     hostapd_ip_txt(&addr, buf, 1) != buf || buf[0] != '\0' ||
     hostapd_ip_txt(&addr, buf, 0) != ((void*)0) ||
     hostapd_ip_txt(&addr, buf, sizeof(buf)) != buf)
  errors++;

 if (hostapd_parse_ip_addr("::", &addr) != 0 ||
     addr.af != AF_INET6 ||
     hostapd_ip_txt(&addr, buf, 1) != buf || buf[0] != '\0' ||
     hostapd_ip_txt(&addr, buf, sizeof(buf)) != buf)
  errors++;

 if (errors) {
  wpa_printf(MSG_ERROR, "%d ip_addr test(s) failed", errors);
  return -1;
 }

 return 0;
}
