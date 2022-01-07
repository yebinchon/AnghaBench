
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_dbus_priv {int should_dispatch; } ;


 int SIGPOLL ;
 int raise (int ) ;

__attribute__((used)) static void wakeup_main(void *data)
{
 struct wpas_dbus_priv *priv = data;


 raise(SIGPOLL);
 priv->should_dispatch = 1;
}
