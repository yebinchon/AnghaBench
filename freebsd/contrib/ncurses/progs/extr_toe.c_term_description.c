
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ term_names; } ;
typedef TYPE_1__ TERMTYPE ;


 char* strrchr (scalar_t__,char) ;

__attribute__((used)) static const char *
term_description(TERMTYPE *tp)
{
    const char *desc;

    if (tp->term_names == 0
 || (desc = strrchr(tp->term_names, '|')) == 0
 || (*++desc == '\0')) {
 desc = "(No description)";
    }

    return desc;
}
