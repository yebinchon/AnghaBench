
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULTPAGER ;
 scalar_t__ EMPTYSTRING (char const*) ;
 size_t FEAT_MLST ;
 int UPRINTF (char*,char*) ;
 int code ;
 int confirm (char*,char*) ;
 int * features ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 char* ftp_malloc (size_t) ;
 char* getoptionvalue (char*) ;
 char* globulize (char const*) ;
 int recvrequest (char const*,char const*,char*,char*,int ,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 int ttyout ;

void
ls(int argc, char *argv[])
{
 const char *cmd;
 char *remdir, *locbuf;
 const char *locfile;
 int pagecmd, mlsdcmd;

 remdir = ((void*)0);
 locbuf = ((void*)0);
 locfile = "-";
 pagecmd = mlsdcmd = 0;




 if (argv[0][0] == 'p')
  pagecmd = 1;
 if (strcmp(argv[0] + pagecmd , "mlsd") == 0) {
  if (! features[FEAT_MLST]) {
   fprintf(ttyout,
      "MLSD is not supported by the remote server.\n");
   return;
  }
  mlsdcmd = 1;
 }
 if (argc == 0)
  goto usage;

 if (mlsdcmd)
  cmd = "MLSD";
 else if (strcmp(argv[0] + pagecmd, "nlist") == 0)
  cmd = "NLST";
 else
  cmd = "LIST";

 if (argc > 1)
  remdir = argv[1];
 if (argc > 2)
  locfile = argv[2];
 if (argc > 3 || ((pagecmd | mlsdcmd) && argc > 2)) {
 usage:
  if (pagecmd || mlsdcmd)
   UPRINTF("usage: %s [remote-path]\n", argv[0]);
  else
   UPRINTF("usage: %s [remote-path [local-file]]\n",
       argv[0]);
  code = -1;
  goto freels;
 }

 if (pagecmd) {
  const char *p;
  size_t len;

  p = getoptionvalue("pager");
  if (EMPTYSTRING(p))
   p = DEFAULTPAGER;
  len = strlen(p) + 2;
  locbuf = ftp_malloc(len);
  locbuf[0] = '|';
  (void)strlcpy(locbuf + 1, p, len - 1);
  locfile = locbuf;
 } else if ((strcmp(locfile, "-") != 0) && *locfile != '|') {
  if ((locbuf = globulize(locfile)) == ((void*)0) ||
      !confirm("output to local-file:", locbuf)) {
   code = -1;
   goto freels;
  }
  locfile = locbuf;
 }
 recvrequest(cmd, locfile, remdir, "w", 0, 0);
 freels:
 if (locbuf)
  (void)free(locbuf);
}
