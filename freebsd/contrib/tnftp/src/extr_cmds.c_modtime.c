
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int UPRINTF (char*,char*) ;
 int another (int*,char***,char*) ;
 int code ;
 int fprintf (int ,char*,char*,char*) ;
 int localtime (int*) ;
 int remotemodtime (char*,int) ;
 char* rfc2822time (int ) ;
 int ttyout ;

void
modtime(int argc, char *argv[])
{
 time_t mtime;

 if (argc == 0 || argc > 2 ||
     (argc == 1 && !another(&argc, &argv, "remote-file"))) {
  UPRINTF("usage: %s remote-file\n", argv[0]);
  code = -1;
  return;
 }
 mtime = remotemodtime(argv[1], 1);
 if (mtime != -1)
  fprintf(ttyout, "%s\t%s", argv[1],
      rfc2822time(localtime(&mtime)));
 code = (mtime > 0);
}
