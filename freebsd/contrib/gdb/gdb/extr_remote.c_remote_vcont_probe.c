
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote_state {int remote_packet_size; } ;


 int getpkt (char*,int ,int ) ;
 int packet_ok (char*,int *) ;
 int putpkt (char*) ;
 int remote_protocol_vcont ;
 char* strchr (char*,char) ;
 int strcpy (char*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static void
remote_vcont_probe (struct remote_state *rs, char *buf)
{
  strcpy (buf, "vCont?");
  putpkt (buf);
  getpkt (buf, rs->remote_packet_size, 0);


  if (strncmp (buf, "vCont", 5) == 0)
    {
      char *p = &buf[5];
      int support_s, support_S, support_c, support_C;

      support_s = 0;
      support_S = 0;
      support_c = 0;
      support_C = 0;
      while (p && *p == ';')
 {
   p++;
   if (*p == 's' && (*(p + 1) == ';' || *(p + 1) == 0))
     support_s = 1;
   else if (*p == 'S' && (*(p + 1) == ';' || *(p + 1) == 0))
     support_S = 1;
   else if (*p == 'c' && (*(p + 1) == ';' || *(p + 1) == 0))
     support_c = 1;
   else if (*p == 'C' && (*(p + 1) == ';' || *(p + 1) == 0))
     support_C = 1;

   p = strchr (p, ';');
 }



      if (!support_s || !support_S || !support_c || !support_C)
 buf[0] = 0;
    }

  packet_ok (buf, &remote_protocol_vcont);
}
