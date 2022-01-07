
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APOSTROPHE ;
 char const* EMPTY_ARG ;
 char const NUL ;
 int fputc (int ,int ) ;
 int fputs (char const*,int ) ;
 int fwrite (char const*,size_t,size_t,int ) ;
 char* print_quoted_apostrophes (char const*) ;
 int stdout ;
 char* strchr (char const*,int ) ;

__attribute__((used)) static void
print_quot_str(char const * str)
{



    if ((str == ((void*)0)) || (*str == NUL)) {
        fputs(EMPTY_ARG, stdout);
        return;
    }





    str = print_quoted_apostrophes(str);
    if (*str == NUL)
        return;




    fputc(APOSTROPHE, stdout);
    for (;;) {
        char const * pz = strchr(str, APOSTROPHE);
        if (pz == ((void*)0))
            break;




        (void)fwrite(str, (size_t)(pz - str), (size_t)1, stdout);





        fputc(APOSTROPHE, stdout);
        str = print_quoted_apostrophes(pz);
        if (*str == NUL)
            return;

        fputc(APOSTROPHE, stdout);
    }





    fputs(str, stdout);
    fputc(APOSTROPHE, stdout);
}
