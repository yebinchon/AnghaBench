
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct pcap_etherent {int* addr; char* name; } ;
typedef int e ;
typedef int FILE ;


 int EOF ;
 int getc (int *) ;
 int isspace (int) ;
 scalar_t__ isxdigit (int) ;
 int memset (char*,int ,int) ;
 int skip_line (int *) ;
 int skip_space (int *) ;
 int xdtoi (int) ;

struct pcap_etherent *
pcap_next_etherent(FILE *fp)
{
 register int c, i;
 u_char d;
 char *bp;
 size_t namesize;
 static struct pcap_etherent e;

 memset((char *)&e, 0, sizeof(e));
 for (;;) {

  c = skip_space(fp);
  if (c == EOF)
   return (((void*)0));
  if (c == '\n')
   continue;



  if (!isxdigit(c)) {
   c = skip_line(fp);
   if (c == EOF)
    return (((void*)0));
   continue;
  }


  for (i = 0; i < 6; i += 1) {
   d = xdtoi((u_char)c);
   c = getc(fp);
   if (c == EOF)
    return (((void*)0));
   if (isxdigit(c)) {
    d <<= 4;
    d |= xdtoi((u_char)c);
    c = getc(fp);
    if (c == EOF)
     return (((void*)0));
   }
   e.addr[i] = d;
   if (c != ':')
    break;
   c = getc(fp);
   if (c == EOF)
    return (((void*)0));
  }


  if (!isspace(c)) {
   c = skip_line(fp);
   if (c == EOF)
    return (((void*)0));
   continue;
  }
  c = skip_space(fp);
  if (c == EOF)
   return (((void*)0));


  if (c == '\n')
   continue;

  if (c == '#') {
   c = skip_line(fp);
   if (c == EOF)
    return (((void*)0));
   continue;
  }


  bp = e.name;

  namesize = sizeof(e.name) - 1;
  do {
   *bp++ = (u_char)c;
   c = getc(fp);
   if (c == EOF)
    return (((void*)0));
  } while (!isspace(c) && --namesize != 0);
  *bp = '\0';


  if (c != '\n')
   (void)skip_line(fp);

  return &e;
 }
}
