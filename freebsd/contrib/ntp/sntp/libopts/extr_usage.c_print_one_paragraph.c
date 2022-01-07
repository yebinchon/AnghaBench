
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int AGFREE (char const*) ;
 int LINE_SPLICE ;
 char* PUTS_FMT ;
 char* dgettext (char*,char const*) ;
 int fprintf (int *,char*,char const*) ;
 int fputs (char const*,int *) ;
 char* gettext (char const*) ;
 char* optionQuoteString (char const*,int ) ;

__attribute__((used)) static void
print_one_paragraph(char const * text, bool plain, FILE * fp)
{
    if (plain) {
        fputs(text, fp);
    }

    else {
        char const * t = optionQuoteString(text, LINE_SPLICE);
        fprintf(fp, PUTS_FMT, t);
        AGFREE(t);
    }
}
