
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int LOG_CONS ;
 int LOG_NDELAY ;
 int LOG_PID ;
 int openlog (char*,int,int) ;

__attribute__((used)) static void xopenlog(BIO *bp, char *name, int level)
{



    openlog(name, LOG_PID | LOG_CONS, level);

}
