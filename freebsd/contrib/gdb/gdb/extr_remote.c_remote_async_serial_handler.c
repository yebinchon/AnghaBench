
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;


 int INF_REG_EVENT ;
 int async_client_callback (int ,int ) ;
 int async_client_context ;

__attribute__((used)) static void
remote_async_serial_handler (struct serial *scb, void *context)
{


  async_client_callback (INF_REG_EVENT, async_client_context);
}
