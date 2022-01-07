
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh {int dummy; } ;


 scalar_t__ STDERR_FILENO ;
 int channel_close_all (struct ssh*) ;
 int close (int) ;
 int closefrom (scalar_t__) ;
 int endpwent () ;
 int packet_get_connection_in () ;
 int packet_get_connection_out () ;

__attribute__((used)) static void
child_close_fds(struct ssh *ssh)
{
 extern int auth_sock;

 if (auth_sock != -1) {
  close(auth_sock);
  auth_sock = -1;
 }

 if (packet_get_connection_in() == packet_get_connection_out())
  close(packet_get_connection_in());
 else {
  close(packet_get_connection_in());
  close(packet_get_connection_out());
 }





 channel_close_all(ssh);





 endpwent();







 closefrom(STDERR_FILENO + 1);
}
