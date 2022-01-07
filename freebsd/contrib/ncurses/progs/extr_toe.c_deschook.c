
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TERMTYPE ;


 int printf (char*,char const*,char*) ;
 char* term_description (int *) ;

__attribute__((used)) static void
deschook(int db_index, int db_limit, const char *term_name, TERMTYPE *tp)
{
    (void) db_index;
    (void) db_limit;
    (void) printf("%-10s\t%s\n", term_name, term_description(tp));
}
