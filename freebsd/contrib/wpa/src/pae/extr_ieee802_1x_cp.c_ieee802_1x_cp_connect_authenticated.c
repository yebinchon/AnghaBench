
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_cp_sm {int connect; } ;


 int AUTHENTICATED ;

void ieee802_1x_cp_connect_authenticated(void *cp_ctx)
{
 struct ieee802_1x_cp_sm *sm = cp_ctx;

 sm->connect = AUTHENTICATED;
}
