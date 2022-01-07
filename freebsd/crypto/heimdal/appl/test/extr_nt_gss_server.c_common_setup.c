
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servent {int s_port; } ;
typedef int krb5_context ;


 int PORT ;
 struct getargs* args ;
 int errx (int,char*,char*) ;
 int exit (int ) ;
 scalar_t__ help_flag ;
 int htons (int) ;
 int krb5_getportbyname (int ,int ,char*,int) ;
 int krb5_program_setup (int *,int,char**,struct getargs*,int,void (*) (int,struct getargs*,int)) ;
 int num_args ;
 char* port_str ;
 int print_version (int *) ;
 struct servent* roken_getservbyname (char*,char*) ;
 int strtol (char*,char**,int) ;
 void stub1 (int,struct getargs*,int) ;
 scalar_t__ version_flag ;

__attribute__((used)) static int
common_setup(krb5_context *context, int *argc, char **argv,
      void (*usage)(int, struct getargs*, int))
{
    int port = 0;
    *argc = krb5_program_setup(context, *argc, argv, args, num_args, usage);

    if(help_flag)
 (*usage)(0, args, num_args);
    if(version_flag) {
 print_version(((void*)0));
 exit(0);
    }

    if(port_str){
 struct servent *s = roken_getservbyname(port_str, "tcp");
 if(s)
     port = s->s_port;
 else {
     char *ptr;

     port = strtol (port_str, &ptr, 10);
     if (port == 0 && ptr == port_str)
  errx (1, "Bad port `%s'", port_str);
     port = htons(port);
 }
    }

    if (port == 0)
 port = krb5_getportbyname (*context, PORT, "tcp", 4711);

    return port;
}
