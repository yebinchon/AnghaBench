
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; int fd; int request; int output; int input; } ;
typedef TYPE_1__ SocketEntry ;


 scalar_t__ AUTH_CONNECTION ;
 scalar_t__ AUTH_UNUSED ;
 int cleanup_exit (int ) ;
 int close (int) ;
 int debug (char*,scalar_t__,scalar_t__) ;
 int sshbuf_free (int ) ;
 scalar_t__ xcount ;

__attribute__((used)) static void
close_socket(SocketEntry *e)
{
 int last = 0;

 if (e->type == AUTH_CONNECTION) {
  debug("xcount %d -> %d", xcount, xcount - 1);
  if (--xcount == 0)
   last = 1;
 }
 close(e->fd);
 e->fd = -1;
 e->type = AUTH_UNUSED;
 sshbuf_free(e->input);
 sshbuf_free(e->output);
 sshbuf_free(e->request);
 if (last)
  cleanup_exit(0);
}
