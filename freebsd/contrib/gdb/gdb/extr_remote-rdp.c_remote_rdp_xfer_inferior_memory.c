
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
struct mem_attrib {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int QUIT ;
 int RDP_MOUTHFULL ;
 int rdp_read (scalar_t__,char*,int) ;
 int rdp_write (scalar_t__,char*,int) ;

__attribute__((used)) static int
remote_rdp_xfer_inferior_memory (CORE_ADDR memaddr, char *myaddr, int len,
     int write, struct mem_attrib *attrib,
     struct target_ops *target)
{


  int done = 0;
  while (done < len)
    {
      int justdone;
      int thisbite = len - done;
      if (thisbite > RDP_MOUTHFULL)
 thisbite = RDP_MOUTHFULL;

      QUIT;

      if (write)
 {
   justdone = rdp_write (memaddr + done, myaddr + done, thisbite);
 }
      else
 {
   justdone = rdp_read (memaddr + done, myaddr + done, thisbite);
 }

      done += justdone;

      if (justdone != thisbite)
 break;
    }
  return done;
}
