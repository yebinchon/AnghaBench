
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BUFSIZ ;
 scalar_t__ PRELIM ;
 scalar_t__ command (char*,char*) ;
 scalar_t__ getreply (int ) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char*,int) ;

void
quote1(char *initial, int argc, char **argv)
{
    int i;
    char buf[BUFSIZ];

    strlcpy(buf, initial, sizeof(buf));
    for(i = 1; i < argc; i++) {
 if(i > 1)
     strlcat(buf, " ", sizeof(buf));
 strlcat(buf, argv[i], sizeof(buf));
    }
    if (command("%s", buf) == PRELIM) {
 while (getreply(0) == PRELIM)
     continue;
    }
}
