
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tac_handle {int dummy; } ;


 int LOG_CRIT ;
 int syslog (int ,char*,int ) ;
 int tac_close (struct tac_handle*) ;
 char* tac_get_msg (struct tac_handle*) ;
 int tac_strerror (struct tac_handle*) ;

__attribute__((used)) static char *
get_msg(struct tac_handle *tach)
{
 char *msg;

 msg = tac_get_msg(tach);
 if (msg == ((void*)0)) {
  syslog(LOG_CRIT, "tac_get_msg: %s", tac_strerror(tach));
  tac_close(tach);
  return ((void*)0);
 }
 return msg;
}
