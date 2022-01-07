
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int client_opts (int,char**) ;
 int client_run () ;
 int server_opts (int,char**) ;
 int server_run () ;

int main(int argc, char **argv)
{
 int ret;

 if (argc == 1 || argv[1][0] == '-') {
  server_opts(argc, argv);
  ret = server_run();
 } else {
  client_opts(argc, argv);
  ret = client_run();
 }

 return ret;
}
