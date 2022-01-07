
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int handle_v_cont (char*,char*,unsigned char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

void
handle_v_requests (char *own_buf, char *status, unsigned char *signal)
{
  if (strncmp (own_buf, "vCont;", 6) == 0)
    {
      handle_v_cont (own_buf, status, signal);
      return;
    }

  if (strncmp (own_buf, "vCont?", 6) == 0)
    {
      strcpy (own_buf, "vCont;c;C;s;S");
      return;
    }



  own_buf[0] = 0;
  return;
}
