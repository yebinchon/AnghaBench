
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;


 int client_setup (int *,int*,char**) ;
 int context ;
 int doit (char*,int,int ,char*,int) ;
 int errx (int,char*) ;
 int * get_default_username () ;
 int * remote_name ;
 int service ;
 int warnx (char*,char*,...) ;

int
main(int argc, char **argv)
{
    int argcc,port,i;
    int ret=0;

    argcc = argc;
    port = client_setup(&context, &argcc, argv);

    if (remote_name == ((void*)0)) {
 remote_name = get_default_username ();
 if (remote_name == ((void*)0))
     errx (1, "who are you?");
    }

    for (i = argcc;i < argc; i++) {
 char message[128];
 ret = doit (argv[i], port, service, message, sizeof(message));
 if(ret == 0)
     warnx ("%s: ok", argv[i]);
 else
     warnx ("%s: failed: %s", argv[i], message);
    }
    return(ret);
}
