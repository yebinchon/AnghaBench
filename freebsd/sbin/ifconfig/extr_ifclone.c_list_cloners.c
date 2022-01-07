
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_clonereq {int ifcr_total; int ifcr_count; char* ifcr_buffer; } ;
typedef int ifcr ;


 int AF_LOCAL ;
 int IFNAMSIZ ;
 int SIOCIFGCLONERS ;
 int SOCK_DGRAM ;
 int close (int) ;
 int err (int,char*) ;
 int free (char*) ;
 scalar_t__ ioctl (int,int ,struct if_clonereq*) ;
 char* malloc (int) ;
 int memset (struct if_clonereq*,int ,int) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
list_cloners(void)
{
 struct if_clonereq ifcr;
 char *cp, *buf;
 int idx;
 int s;

 s = socket(AF_LOCAL, SOCK_DGRAM, 0);
 if (s == -1)
  err(1, "socket(AF_LOCAL,SOCK_DGRAM)");

 memset(&ifcr, 0, sizeof(ifcr));

 if (ioctl(s, SIOCIFGCLONERS, &ifcr) < 0)
  err(1, "SIOCIFGCLONERS for count");

 buf = malloc(ifcr.ifcr_total * IFNAMSIZ);
 if (buf == ((void*)0))
  err(1, "unable to allocate cloner name buffer");

 ifcr.ifcr_count = ifcr.ifcr_total;
 ifcr.ifcr_buffer = buf;

 if (ioctl(s, SIOCIFGCLONERS, &ifcr) < 0)
  err(1, "SIOCIFGCLONERS for names");




 if (ifcr.ifcr_count > ifcr.ifcr_total)
  ifcr.ifcr_count = ifcr.ifcr_total;

 for (cp = buf, idx = 0; idx < ifcr.ifcr_count; idx++, cp += IFNAMSIZ) {
  if (idx > 0)
   putchar(' ');
  printf("%s", cp);
 }

 putchar('\n');
 free(buf);
 close(s);
}
