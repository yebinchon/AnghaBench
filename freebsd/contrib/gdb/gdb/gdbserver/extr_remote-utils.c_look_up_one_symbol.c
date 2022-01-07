
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CORE_ADDR ;


 int decode_address (int *,char*,int) ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int getpkt (char*) ;
 int hexify (char*,char const*,int ) ;
 scalar_t__ putpkt (char*) ;
 scalar_t__ remote_debug ;
 int stderr ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

int
look_up_one_symbol (const char *name, CORE_ADDR *addrp)
{
  char own_buf[266], *p, *q;
  int len;


  strcpy (own_buf, "qSymbol:");
  hexify (own_buf + strlen ("qSymbol:"), name, strlen (name));
  if (putpkt (own_buf) < 0)
    return -1;


  len = getpkt (own_buf);
  if (len < 0)
    return -1;

  if (strncmp (own_buf, "qSymbol:", strlen ("qSymbol:")) != 0)
    {

      if (remote_debug)
 {
   fprintf (stderr, "Malformed response to qSymbol, ignoring.\n");
   fflush (stderr);
 }

      return -1;
    }

  p = own_buf + strlen ("qSymbol:");
  q = p;
  while (*q && *q != ':')
    q++;


  if (p == q || *q == '\0')
    return 0;

  decode_address (addrp, p, q - p);
  return 1;
}
