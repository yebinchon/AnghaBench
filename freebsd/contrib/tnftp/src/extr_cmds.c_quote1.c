
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BUFSIZ ;
 scalar_t__ PRELIM ;
 scalar_t__ command (char*,char*) ;
 int dirchange ;
 scalar_t__ getreply (int ) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;

void
quote1(const char *initial, int argc, char *argv[])
{
 int i;
 char buf[BUFSIZ];

 (void)strlcpy(buf, initial, sizeof(buf));
 for (i = 1; i < argc; i++) {
  (void)strlcat(buf, argv[i], sizeof(buf));
  if (i < (argc - 1))
   (void)strlcat(buf, " ", sizeof(buf));
 }
 if (command("%s", buf) == PRELIM) {
  while (getreply(0) == PRELIM)
   continue;
 }
 dirchange = 1;
}
