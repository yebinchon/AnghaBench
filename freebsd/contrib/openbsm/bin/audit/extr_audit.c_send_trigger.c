
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPERM ;
 int audit_send_trigger (int*) ;
 int perror (char*) ;

__attribute__((used)) static int
send_trigger(int trigger)
{
 int error;

 error = audit_send_trigger(&trigger);
 if (error != 0) {
  if (error == EPERM)
   perror("audit requires root privileges");
  else
   perror("Error sending trigger");
  return (-1);
 }

 return (0);
}
