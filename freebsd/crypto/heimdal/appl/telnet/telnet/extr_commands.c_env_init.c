
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct env_lst {char* value; scalar_t__ export; } ;
struct addrinfo {int * ai_canonname; struct addrinfo* ai_next; int ai_flags; } ;
typedef int hints ;


 int AI_CANONNAME ;
 int asprintf (char**,char*,char*,char*) ;
 struct env_lst* env_define (unsigned char*,unsigned char*) ;
 int env_export (unsigned char*) ;
 struct env_lst* env_find (unsigned char*) ;
 int env_unexport (unsigned char*) ;
 char** environ ;
 int free (char*) ;
 int freeaddrinfo (struct addrinfo*) ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int gethostname (char*,int) ;
 int memset (struct addrinfo*,int ,int) ;
 scalar_t__ strchr (char*,char) ;
 int strlcpy (char*,int *,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

void
env_init(void)
{
 char **epp, *cp;
 struct env_lst *ep;

 for (epp = environ; *epp; epp++) {
  if ((cp = strchr(*epp, '='))) {
   *cp = '\0';
   ep = env_define((unsigned char *)*epp,
     (unsigned char *)cp+1);
   ep->export = 0;
   *cp = '=';
  }
 }





 if ((ep = env_find((unsigned char*)"DISPLAY"))
     && (*ep->value == ':'
     || strncmp((char *)ep->value, "unix:", 5) == 0)) {
  char hbuf[256+1];
  char *cp2 = strchr((char *)ep->value, ':');
  int error;


  gethostname(hbuf, 256);
  hbuf[256] = '\0';


  if (strchr(hbuf, '.') == 0) {
   struct addrinfo hints, *ai, *a;

   memset (&hints, 0, sizeof(hints));
   hints.ai_flags = AI_CANONNAME;

   error = getaddrinfo (hbuf, ((void*)0), &hints, &ai);
   if (error == 0) {
    for (a = ai; a != ((void*)0); a = a->ai_next)
     if (a->ai_canonname != ((void*)0)) {
      strlcpy (hbuf,
        ai->ai_canonname,
        256);
      break;
     }
    freeaddrinfo (ai);
   }
  }

  error = asprintf (&cp, "%s%s", hbuf, cp2);
  if (error != -1) {
      free (ep->value);
      ep->value = (unsigned char *)cp;
  }
 }





 if ((env_find((unsigned char*)"USER") == ((void*)0)) &&
     (ep = env_find((unsigned char*)"LOGNAME"))) {
  env_define((unsigned char *)"USER", ep->value);
  env_unexport((unsigned char *)"USER");
 }
 env_export((unsigned char *)"DISPLAY");
 env_export((unsigned char *)"PRINTER");
 env_export((unsigned char *)"XAUTHORITY");
}
