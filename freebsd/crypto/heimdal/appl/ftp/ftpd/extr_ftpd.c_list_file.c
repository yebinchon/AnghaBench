
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ builtin_ls (int *,char*) ;
 int data ;
 int * dataconn (char*,int,char*) ;
 int fclose (int *) ;
 int fileno (int *) ;
 int pdata ;
 int reply (int,char*) ;
 int retrieve (char const*,char*) ;
 int set_buffer_size (int ,int ) ;
 scalar_t__ use_builtin_ls ;

void
list_file(char *file)
{
    if(use_builtin_ls) {
 FILE *dout;
 dout = dataconn(file, -1, "w");
 if (dout == ((void*)0))
     return;
 set_buffer_size(fileno(dout), 0);
 if(builtin_ls(dout, file) == 0)
     reply(226, "Transfer complete.");
 else
     reply(451, "Requested action aborted. Local error in processing.");
 fclose(dout);
 data = -1;
 pdata = -1;
    } else {



 const char *cmd = "/bin/ls -la %s";

 retrieve(cmd, file);
    }
}
