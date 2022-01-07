
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;
typedef int krb5_context ;


 int add_port (int ,int,int,char const*) ;
 int htons (int ) ;
 struct servent* roken_getservbyname (char const*,char const*) ;
 int strtol (char const*,char**,int ) ;

__attribute__((used)) static void
add_port_string (krb5_context context,
   int family, const char *str, const char *protocol)
{
    struct servent *sp;
    int port;

    sp = roken_getservbyname (str, protocol);
    if (sp != ((void*)0)) {
 port = sp->s_port;
    } else {
 char *end;

 port = htons(strtol(str, &end, 0));
 if (end == str)
     return;
    }
    add_port (context, family, port, protocol);
}
