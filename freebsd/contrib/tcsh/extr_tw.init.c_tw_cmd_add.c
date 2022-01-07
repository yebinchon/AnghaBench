
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;


 int Strcpy (int ,int const*) ;
 int Strlen (int const*) ;
 int tw_cmd ;
 int tw_str_add (int *,size_t) ;

__attribute__((used)) static void
tw_cmd_add(const Char *name)
{
    size_t len;

    len = Strlen(name) + 2;
    (void) Strcpy(tw_str_add(&tw_cmd, len), name);
}
