
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send_dont ;
 int send_tncmd (int ,char*,char*) ;

__attribute__((used)) static int
send_dontcmd(char *name)
{
    return(send_tncmd(send_dont, "dont", name));
}
