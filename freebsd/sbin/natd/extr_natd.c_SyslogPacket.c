
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip {int dummy; } ;


 int FormatPacket (struct ip*) ;
 int syslog (int,char*,char const*,int ) ;

__attribute__((used)) static void SyslogPacket (struct ip* ip, int priority, const char *label)
{
 syslog (priority, "%s %s", label, FormatPacket (ip));
}
