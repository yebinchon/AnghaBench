
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_tncmd (int ,char*,char*) ;
 int send_wont ;

__attribute__((used)) static int
send_wontcmd(char *name)
{
    return(send_tncmd(send_wont, "wont", name));
}
