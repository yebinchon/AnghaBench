
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int dummy; } ;


 int LOG_CRIT ;
 int syslog (int ,char*,int ) ;
 int tac_close (struct tac_handle*) ;
 int tac_set_msg (struct tac_handle*,char const*) ;
 int tac_strerror (struct tac_handle*) ;

__attribute__((used)) static int
set_msg(struct tac_handle *tach, const char *msg)
{
 if (tac_set_msg(tach, msg) == -1) {
  syslog(LOG_CRIT, "tac_set_msg: %s", tac_strerror(tach));
  tac_close(tach);
  return -1;
 }
 return 0;
}
