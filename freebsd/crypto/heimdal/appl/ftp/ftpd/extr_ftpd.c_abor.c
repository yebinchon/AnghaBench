
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int reply (int,char*) ;
 scalar_t__ transflag ;

void abor(void)
{
    if (!transflag)
 return;
    reply(426, "Transfer aborted. Data connection closed.");
    reply(226, "Abort successful");
    transflag = 0;
}
