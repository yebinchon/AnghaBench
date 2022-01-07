
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RB_MUTE ;
 int RB_SERIAL ;
 int boot_env_to_howto () ;
 int boot_parse_cmdline (char*) ;
 int getenv (char*) ;
 int md_bootserial () ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int
md_getboothowto(char *kargs)
{
    int howto;


    howto = boot_parse_cmdline(kargs);
    howto |= boot_env_to_howto();




    if (!strcmp(getenv("console"), "comconsole"))
 howto |= RB_SERIAL;
    if (!strcmp(getenv("console"), "nullconsole"))
 howto |= RB_MUTE;

    return(howto);
}
