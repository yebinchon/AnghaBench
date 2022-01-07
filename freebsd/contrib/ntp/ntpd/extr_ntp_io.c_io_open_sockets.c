
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLOCKIO () ;
 int DPRINTF (int,char*) ;
 scalar_t__ HAVE_OPT (int ) ;
 int NTP_PORT ;
 int SAVECONFIGQUIT ;
 int UNBLOCKIO () ;
 int create_sockets (int ) ;
 int init_async_notifications () ;
 int maxactivefd ;

void
io_open_sockets(void)
{
 static int already_opened;

 if (already_opened || HAVE_OPT( SAVECONFIGQUIT ))
  return;

 already_opened = 1;




 BLOCKIO();
 create_sockets(NTP_PORT);
 UNBLOCKIO();

 init_async_notifications();

 DPRINTF(3, ("io_open_sockets: maxactivefd %d\n", maxactivefd));
}
