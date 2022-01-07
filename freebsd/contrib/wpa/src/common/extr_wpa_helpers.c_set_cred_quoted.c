
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int snprintf (char*,int,char*,int,char const*,char const*) ;
 int wpa_command (char const*,char*) ;

int set_cred_quoted(const char *ifname, int id, const char *field,
      const char *value)
{
 char buf[200];
 snprintf(buf, sizeof(buf), "SET_CRED %d %s \"%s\"",
   id, field, value);
 return wpa_command(ifname, buf);
}
