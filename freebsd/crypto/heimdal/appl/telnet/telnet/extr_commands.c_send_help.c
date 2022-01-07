
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sendlist {char* name; char* help; } ;


 struct sendlist* Sendlist ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static int
send_help()
{
    struct sendlist *s;
    for (s = Sendlist; s->name; s++) {
 if (s->help)
     printf("%-15s %s\r\n", s->name, s->help);
    }
    return(0);
}
