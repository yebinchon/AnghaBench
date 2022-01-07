
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ crlf ;
 int printf (char*) ;

__attribute__((used)) static int
togcrlf(void)
{
    if (crlf) {
 printf("Will send carriage returns as telnet <CR><LF>.\n");
    } else {
 printf("Will send carriage returns as telnet <CR><NUL>.\n");
    }
    return 1;
}
