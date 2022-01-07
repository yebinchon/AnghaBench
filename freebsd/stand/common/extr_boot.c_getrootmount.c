
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lbuf ;


 int O_RDONLY ;
 int close (int) ;
 scalar_t__ fgetstr (char*,int,int) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ isspace (char) ;
 int open (char*,int ) ;
 int setenv (char*,char*,int ) ;
 int sprintf (char*,char*,char*,...) ;
 char* strdup (char const*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

int
getrootmount(char *rootdev)
{
 char lbuf[128], *cp, *ep, *dev, *fstyp, *options;
 int fd, error;

 if (getenv("vfs.root.mountfrom") != ((void*)0))
  return(0);

 error = 1;
 sprintf(lbuf, "%s/etc/fstab", rootdev);
 if ((fd = open(lbuf, O_RDONLY)) < 0)
  goto notfound;


 fstyp = ((void*)0);
 dev = ((void*)0);
 while (fgetstr(lbuf, sizeof(lbuf), fd) >= 0) {
  if ((lbuf[0] == 0) || (lbuf[0] == '#'))
   continue;


  for (cp = lbuf; (*cp != 0) && !isspace(*cp); cp++)
   ;
  if (*cp == 0)
   continue;

  *cp++ = 0;
  free(dev);
  dev = strdup(lbuf);


  while ((*cp != 0) && isspace(*cp))
   cp++;

  if ((*cp == 0) || (*cp != '/') || !isspace(*(cp + 1)))
   continue;

  cp += 2;
  while ((*cp != 0) && isspace(*cp))
   cp++;
  if (*cp == 0)
   continue;

  ep = cp;
  while ((*cp != 0) && !isspace(*cp))
   cp++;
  *cp = 0;
  free(fstyp);
  fstyp = strdup(ep);


  cp += 1;
  while ((*cp != 0) && isspace(*cp))
   cp++;
  if (*cp == 0)
   continue;

  ep = cp;
  while ((*cp != 0) && !isspace(*cp))
   cp++;
  *cp = 0;
  options = strdup(ep);

  sprintf(lbuf, "%s:%s", fstyp, dev);
  setenv("vfs.root.mountfrom", lbuf, 0);


  if (getenv("vfs.root.mountfrom.options") == ((void*)0)) {

   setenv("vfs.root.mountfrom.options", options, 0);
  }
  free(options);
  error = 0;
  break;
 }
 close(fd);
 free(dev);
 free(fstyp);

notfound:
 if (error) {
  const char *currdev;

  currdev = getenv("currdev");
  if (currdev != ((void*)0) && strncmp("zfs:", currdev, 4) == 0) {
   cp = strdup(currdev);
   cp[strlen(cp) - 1] = '\0';
   setenv("vfs.root.mountfrom", cp, 0);
   error = 0;
   free(cp);
  }
 }

 return(error);
}
