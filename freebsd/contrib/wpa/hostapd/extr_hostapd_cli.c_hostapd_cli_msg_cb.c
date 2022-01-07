
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cli_event (char*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void hostapd_cli_msg_cb(char *msg, size_t len)
{
 cli_event(msg);
 printf("%s\n", msg);
}
