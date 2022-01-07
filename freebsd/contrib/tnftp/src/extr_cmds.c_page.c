
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* DEFAULTPAGER ;
 scalar_t__ EMPTYSTRING (char const*) ;
 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 int free (char*) ;
 char* ftp_malloc (size_t) ;
 char* getoptionvalue (char*) ;
 int hash ;
 int recvrequest (char*,char*,char*,char*,int,int ) ;
 int restart_point ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 int verbose ;

void
page(int argc, char *argv[])
{
 int ohash, orestart_point, overbose;
 size_t len;
 const char *p;
 char *pager;

 if (argc == 0 || argc > 2 ||
     (argc == 1 && !another(&argc, &argv, "remote-file"))) {
  UPRINTF("usage: %s remote-file\n", argv[0]);
  code = -1;
  return;
 }
 p = getoptionvalue("pager");
 if (EMPTYSTRING(p))
  p = DEFAULTPAGER;
 len = strlen(p) + 2;
 pager = ftp_malloc(len);
 pager[0] = '|';
 (void)strlcpy(pager + 1, p, len - 1);

 ohash = hash;
 orestart_point = restart_point;
 overbose = verbose;
 hash = restart_point = verbose = 0;
 recvrequest("RETR", pager, argv[1], "r+", 1, 0);
 hash = ohash;
 restart_point = orestart_point;
 verbose = overbose;
 (void)free(pager);
}
