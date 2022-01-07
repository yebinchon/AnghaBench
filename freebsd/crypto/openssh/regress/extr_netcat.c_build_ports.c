
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORT_MAX ;
 int PORT_MAX_LEN ;
 int arc4random () ;
 char* calloc (int,int ) ;
 int errx (int,char*,...) ;
 char** portlist ;
 scalar_t__ rflag ;
 int snprintf (char*,int ,char*,int) ;
 char* strchr (char*,char) ;
 char* strdup (char*) ;
 int strtonum (char*,int,int ,char const**) ;

void
build_ports(char *p)
{
 const char *errstr;
 char *n;
 int hi, lo, cp;
 int x = 0;

 if ((n = strchr(p, '-')) != ((void*)0)) {
  *n = '\0';
  n++;


  hi = strtonum(n, 1, PORT_MAX, &errstr);
  if (errstr)
   errx(1, "port number %s: %s", errstr, n);
  lo = strtonum(p, 1, PORT_MAX, &errstr);
  if (errstr)
   errx(1, "port number %s: %s", errstr, p);

  if (lo > hi) {
   cp = hi;
   hi = lo;
   lo = cp;
  }


  for (cp = lo; cp <= hi; cp++) {
   portlist[x] = calloc(1, PORT_MAX_LEN);
   if (portlist[x] == ((void*)0))
    errx(1, "calloc");
   snprintf(portlist[x], PORT_MAX_LEN, "%d", cp);
   x++;
  }


  if (rflag) {
   int y;
   char *c;

   for (x = 0; x <= (hi - lo); x++) {
    y = (arc4random() & 0xFFFF) % (hi - lo);
    c = portlist[x];
    portlist[x] = portlist[y];
    portlist[y] = c;
   }
  }
 } else {
  hi = strtonum(p, 1, PORT_MAX, &errstr);
  if (errstr)
   errx(1, "port number %s: %s", errstr, p);
  portlist[0] = strdup(p);
  if (portlist[0] == ((void*)0))
   errx(1, "strdup");
 }
}
