
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssh {TYPE_1__* kex; } ;
struct TYPE_2__ {int done; } ;


 int ASSERT_INT_EQ (int,int) ;
 scalar_t__ do_debug ;
 int do_send_and_receive (struct ssh*,struct ssh*) ;
 int printf (char*,...) ;
 char* ssh_err (int) ;

__attribute__((used)) static void
run_kex(struct ssh *client, struct ssh *server)
{
 int r = 0;

 while (!server->kex->done || !client->kex->done) {
  if (do_debug)
   printf(" S:");
  if ((r = do_send_and_receive(server, client)))
   break;
  if (do_debug)
   printf(" C:");
  if ((r = do_send_and_receive(client, server)))
   break;
 }
 if (do_debug)
  printf("done: %s\n", ssh_err(r));
 ASSERT_INT_EQ(r, 0);
 ASSERT_INT_EQ(server->kex->done, 1);
 ASSERT_INT_EQ(client->kex->done, 1);
}
