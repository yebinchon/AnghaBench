
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int os_free (char*) ;
 char* os_strdup (char const*) ;
 int wpa_printf (int ,char*,int,char*) ;

__attribute__((used)) static void tls_log_func(int level, const char *msg)
{
 char *s, *pos;
 if (level == 6 || level == 7) {

  return;
 }

 s = os_strdup(msg);
 if (s == ((void*)0))
  return;

 pos = s;
 while (*pos != '\0') {
  if (*pos == '\n') {
   *pos = '\0';
   break;
  }
  pos++;
 }
 wpa_printf(level > 3 ? MSG_MSGDUMP : MSG_DEBUG,
     "gnutls<%d> %s", level, s);
 os_free(s);
}
