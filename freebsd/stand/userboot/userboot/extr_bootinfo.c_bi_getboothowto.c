
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_MULTIPLE ;
 int RB_MUTE ;
 int RB_SERIAL ;
 int boot_env_to_howto () ;
 int boot_parse_cmdline (char*) ;
 int free (char*) ;
 int getenv (char*) ;
 int strcmp (char*,char*) ;
 char* strdup (int ) ;
 char* strsep (char**,char*) ;

int
bi_getboothowto(char *kargs)
{
    char *curpos, *next, *string;
    int howto;
    int vidconsole;

    howto = boot_parse_cmdline(kargs);
    howto |= boot_env_to_howto();


    string = next = strdup(getenv("console"));
    vidconsole = 0;
    while (next != ((void*)0)) {
 curpos = strsep(&next, " ,");
 if (*curpos == '\0')
  continue;
 if (!strcmp(curpos, "vidconsole"))
     vidconsole = 1;
 else if (!strcmp(curpos, "comconsole"))
     howto |= RB_SERIAL;
 else if (!strcmp(curpos, "nullconsole"))
     howto |= RB_MUTE;
    }

    if (vidconsole && (howto & RB_SERIAL))
 howto |= RB_MULTIPLE;






    if (!strcmp(string, "vidconsole"))
 howto &= ~RB_SERIAL;

    free(string);

    return(howto);
}
