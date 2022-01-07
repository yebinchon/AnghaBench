
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_session {int username; } ;
struct eap_config {int dummy; } ;


 scalar_t__ os_strncmp (char const*,char*,int) ;
 char* os_strstr (int ,char*) ;
 int radius_server_testing_options_tls (struct radius_session*,char const*,struct eap_config*) ;
 int srv_log (struct radius_session*,char*,char const*) ;

__attribute__((used)) static void radius_server_testing_options(struct radius_session *sess,
       struct eap_config *eap_conf)
{
}
