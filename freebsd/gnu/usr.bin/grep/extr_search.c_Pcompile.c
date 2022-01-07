
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCRE_CASELESS ;
 int PCRE_MULTILINE ;
 char* _ (char*) ;
 int cre ;
 char eolbyte ;
 int error (int,int ,char const*) ;
 int extra ;
 int free (char*) ;
 scalar_t__ match_icase ;
 scalar_t__ match_lines ;
 scalar_t__ match_words ;
 char* memchr (char const*,char,int) ;
 int memcpy (char*,char const*,int) ;
 int pcre_compile (char*,int,char const**,int*,int ) ;
 int pcre_maketables () ;
 int pcre_study (int ,int ,char const**) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 char* xmalloc (int) ;

__attribute__((used)) static void
Pcompile (char const *pattern, size_t size)
{

  error (2, 0, _("The -P option is not supported"));
}
