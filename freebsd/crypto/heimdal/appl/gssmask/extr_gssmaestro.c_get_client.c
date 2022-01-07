
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int name; } ;


 struct client** clients ;
 int errx (int,char*,char const*) ;
 size_t num_clients ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static struct client *
get_client(const char *slave)
{
    size_t i;
    for (i = 0; i < num_clients; i++)
 if (strcmp(slave, clients[i]->name) == 0)
     return clients[i];
    errx(1, "failed to find client %s", slave);
}
