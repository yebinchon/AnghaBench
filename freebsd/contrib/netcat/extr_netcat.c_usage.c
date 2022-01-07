
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(int ret)
{
 fprintf(stderr,



     "usage: nc [-46DdFhklNnrStUuvz] [-I length] [-i interval] [-O length]\n"

     "\t  [-P proxy_username] [-p source_port] [-s source] [-T ToS]\n"
     "\t  [-V rtable] [-w timeout] [-X proxy_protocol]\n"
     "\t  [-x proxy_address[:port]] [destination] [port]\n");
 if (ret)
  exit(1);
}
