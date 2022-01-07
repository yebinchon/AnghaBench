
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct anqp_query_info {unsigned int request; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,char const*) ;

__attribute__((used)) static void set_anqp_req(unsigned int bit, const char *name, int local,
    struct anqp_query_info *qi)
{
 qi->request |= bit;
 if (local) {
  wpa_printf(MSG_DEBUG, "ANQP: %s (local)", name);
 } else {
  wpa_printf(MSG_DEBUG, "ANQP: %s not available", name);
 }
}
