
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct fwdarg {char* listen_path; char* arg; scalar_t__ listen_port; char* listen_host; char* connect_host; char* connect_path; scalar_t__ connect_port; int ispath; } ;
struct Forward {char* listen_path; char* arg; scalar_t__ listen_port; char* listen_host; char* connect_host; char* connect_path; scalar_t__ connect_port; int ispath; } ;
typedef int fwdargs ;


 scalar_t__ NI_MAXHOST ;
 scalar_t__ PATH_MAX_SUN ;
 void* PORT_STREAMLOCAL ;
 void* a2port (char*) ;
 int free (char*) ;
 scalar_t__ isspace (int ) ;
 int memset (struct fwdarg*,int ,int) ;
 scalar_t__ parse_fwd_field (char**,struct fwdarg*) ;
 scalar_t__ strlen (char*) ;
 void* xstrdup (char const*) ;

int
parse_forward(struct Forward *fwd, const char *fwdspec, int dynamicfwd, int remotefwd)
{
 struct fwdarg fwdargs[4];
 char *p, *cp;
 int i;

 memset(fwd, 0, sizeof(*fwd));
 memset(fwdargs, 0, sizeof(fwdargs));

 cp = p = xstrdup(fwdspec);


 while (isspace((u_char)*cp))
  cp++;

 for (i = 0; i < 4; ++i) {
  if (parse_fwd_field(&cp, &fwdargs[i]) != 0)
   break;
 }


 if (cp != ((void*)0) && *cp != '\0') {
  i = 0;
 }

 switch (i) {
 case 1:
  if (fwdargs[0].ispath) {
   fwd->listen_path = xstrdup(fwdargs[0].arg);
   fwd->listen_port = PORT_STREAMLOCAL;
  } else {
   fwd->listen_host = ((void*)0);
   fwd->listen_port = a2port(fwdargs[0].arg);
  }
  fwd->connect_host = xstrdup("socks");
  break;

 case 2:
  if (fwdargs[0].ispath && fwdargs[1].ispath) {
   fwd->listen_path = xstrdup(fwdargs[0].arg);
   fwd->listen_port = PORT_STREAMLOCAL;
   fwd->connect_path = xstrdup(fwdargs[1].arg);
   fwd->connect_port = PORT_STREAMLOCAL;
  } else if (fwdargs[1].ispath) {
   fwd->listen_host = ((void*)0);
   fwd->listen_port = a2port(fwdargs[0].arg);
   fwd->connect_path = xstrdup(fwdargs[1].arg);
   fwd->connect_port = PORT_STREAMLOCAL;
  } else {
   fwd->listen_host = xstrdup(fwdargs[0].arg);
   fwd->listen_port = a2port(fwdargs[1].arg);
   fwd->connect_host = xstrdup("socks");
  }
  break;

 case 3:
  if (fwdargs[0].ispath) {
   fwd->listen_path = xstrdup(fwdargs[0].arg);
   fwd->listen_port = PORT_STREAMLOCAL;
   fwd->connect_host = xstrdup(fwdargs[1].arg);
   fwd->connect_port = a2port(fwdargs[2].arg);
  } else if (fwdargs[2].ispath) {
   fwd->listen_host = xstrdup(fwdargs[0].arg);
   fwd->listen_port = a2port(fwdargs[1].arg);
   fwd->connect_path = xstrdup(fwdargs[2].arg);
   fwd->connect_port = PORT_STREAMLOCAL;
  } else {
   fwd->listen_host = ((void*)0);
   fwd->listen_port = a2port(fwdargs[0].arg);
   fwd->connect_host = xstrdup(fwdargs[1].arg);
   fwd->connect_port = a2port(fwdargs[2].arg);
  }
  break;

 case 4:
  fwd->listen_host = xstrdup(fwdargs[0].arg);
  fwd->listen_port = a2port(fwdargs[1].arg);
  fwd->connect_host = xstrdup(fwdargs[2].arg);
  fwd->connect_port = a2port(fwdargs[3].arg);
  break;
 default:
  i = 0;
 }

 free(p);

 if (dynamicfwd) {
  if (!(i == 1 || i == 2))
   goto fail_free;
 } else {
  if (!(i == 3 || i == 4)) {
   if (fwd->connect_path == ((void*)0) &&
       fwd->listen_path == ((void*)0))
    goto fail_free;
  }
  if (fwd->connect_port <= 0 && fwd->connect_path == ((void*)0))
   goto fail_free;
 }

 if ((fwd->listen_port < 0 && fwd->listen_path == ((void*)0)) ||
     (!remotefwd && fwd->listen_port == 0))
  goto fail_free;
 if (fwd->connect_host != ((void*)0) &&
     strlen(fwd->connect_host) >= NI_MAXHOST)
  goto fail_free;

 if (fwd->connect_path != ((void*)0) &&
     strlen(fwd->connect_path) >= PATH_MAX_SUN)
  goto fail_free;
 if (fwd->listen_host != ((void*)0) &&
     strlen(fwd->listen_host) >= NI_MAXHOST)
  goto fail_free;
 if (fwd->listen_path != ((void*)0) &&
     strlen(fwd->listen_path) >= PATH_MAX_SUN)
  goto fail_free;

 return (i);

 fail_free:
 free(fwd->connect_host);
 fwd->connect_host = ((void*)0);
 free(fwd->connect_path);
 fwd->connect_path = ((void*)0);
 free(fwd->listen_host);
 fwd->listen_host = ((void*)0);
 free(fwd->listen_path);
 fwd->listen_path = ((void*)0);
 return (0);
}
