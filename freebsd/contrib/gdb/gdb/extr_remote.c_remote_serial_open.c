
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial {int dummy; } ;


 struct serial* serial_open (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int warning (char*) ;

__attribute__((used)) static struct serial *
remote_serial_open (char *name)
{
  static int udp_warning = 0;





  if (!udp_warning && strncmp (name, "udp:", 4) == 0)
    {
      warning ("The remote protocol may be unreliable over UDP.");
      warning ("Some events may be lost, rendering further debugging "
        "impossible.");
      udp_warning = 1;
    }

  return serial_open (name);
}
