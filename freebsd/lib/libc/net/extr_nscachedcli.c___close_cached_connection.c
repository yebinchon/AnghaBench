
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_connection_ {int write_queue; int read_queue; int sockfd; } ;


 int _close (int ) ;
 int assert (int ) ;
 int free (struct cached_connection_*) ;

void
__close_cached_connection(struct cached_connection_ *connection)
{
 assert(connection != ((void*)0));

 _close(connection->sockfd);
 _close(connection->read_queue);
 _close(connection->write_queue);
 free(connection);
}
