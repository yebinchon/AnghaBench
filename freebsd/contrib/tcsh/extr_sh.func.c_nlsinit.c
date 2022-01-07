
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CODESET ;
 int MCLoadBySet ;
 int NL_CAT_LOCALE ;
 int STRLC_MESSAGES ;
 int STRcatalog ;
 int * adrof (int ) ;
 int catd ;
 int catgets_iconv ;
 int catopen (char*,int ) ;
 int dateinit () ;
 int editinit () ;
 int errinit () ;
 int iconv_open (int ,int ) ;
 int mesginit () ;
 int nl_langinfo (int ) ;
 int nls_dll_init () ;
 int short2str (int ) ;
 int terminit () ;
 scalar_t__ tgetenv (int ) ;
 int varval (int ) ;
 char* xasprintf (char*,int ) ;
 int xcatgets (int ,int,int,char*) ;
 int xfree (char*) ;

void
nlsinit(void)
{
    errinit();
    mesginit();
    dateinit();
    editinit();
    terminit();
}
