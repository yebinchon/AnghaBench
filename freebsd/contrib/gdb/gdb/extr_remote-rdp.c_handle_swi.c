
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int n; char* s; } ;
typedef TYPE_1__ argsin ;





 int RDP_OSOpNothing ;
 int RDP_OSOpReply ;
 int RDP_OSOpWord ;
 char* alloca (int) ;
 int error (char*) ;
 scalar_t__ exec_swi (int,TYPE_1__*) ;
 void* get_byte () ;
 void* get_word () ;
 int remote_rdp_xfer_inferior_memory (void*,char*,int,int ,int ,int ) ;
 int send_rdp (char*,int ,int ,...) ;

__attribute__((used)) static void
handle_swi (void)
{
  argsin args[3];
  char *buf;
  int len;
  int count = 0;

  int swino = get_word ();
  int type = get_byte ();
  while (type != 0)
    {
      switch (type & 0x3)
 {
 case 130:
   args[count].n = get_byte ();
   break;

 case 128:
   args[count].n = get_word ();
   break;

 case 129:



   len = get_byte ();
   if (len > 32)
     {
       if (len == 255)
  {
    len = get_word ();
  }
       buf = alloca (len);
       remote_rdp_xfer_inferior_memory (get_word (),
            buf,
            len,
            0,
            0,
            0);
     }
   else
     {
       int i;
       buf = alloca (len + 1);
       for (i = 0; i < len; i++)
  buf[i] = get_byte ();
       buf[i] = 0;
     }
   args[count].n = len;
   args[count].s = buf;
   break;

 default:
   error ("Unimplemented SWI argument");
 }

      type = type >> 2;
      count++;
    }

  if (exec_swi (swino, args))
    {



      send_rdp ("bbw-", RDP_OSOpReply, RDP_OSOpWord, args[0].n);
    }
  else
    {
      send_rdp ("bb-", RDP_OSOpReply, RDP_OSOpNothing);
    }
}
