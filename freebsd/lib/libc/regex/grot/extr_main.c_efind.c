
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* re_endp; } ;
typedef TYPE_1__ regex_t ;
typedef int efbuf ;


 int REG_ATOI ;
 int assert (int) ;
 int atoi (char*) ;
 int regerror (int ,TYPE_1__*,char*,int) ;
 int sprintf (char*,char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int
efind(char *name)
{
 static char efbuf[100];
 size_t n;
 regex_t re;

 sprintf(efbuf, "REG_%s", name);
 assert(strlen(efbuf) < sizeof(efbuf));
 re.re_endp = efbuf;
 (void) regerror(REG_ATOI, &re, efbuf, sizeof(efbuf));
 return(atoi(efbuf));
}
