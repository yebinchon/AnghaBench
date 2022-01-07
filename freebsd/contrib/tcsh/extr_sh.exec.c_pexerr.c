
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_COMMAND ;
 int ERR_NAME ;
 int ERR_STRING ;
 scalar_t__ Vexpath ;
 scalar_t__ exerr ;
 scalar_t__ expath ;
 int setname (char*) ;
 char* short2str (scalar_t__) ;
 int stderror (int,...) ;
 int xfree (scalar_t__) ;

__attribute__((used)) static void
pexerr(void)
{

    if (expath) {
 setname(short2str(expath));



 xfree(expath);
 expath = 0;
    }
    else
 setname("");
    if (exerr)
 stderror(ERR_NAME | ERR_STRING, exerr);
    stderror(ERR_NAME | ERR_COMMAND);
}
