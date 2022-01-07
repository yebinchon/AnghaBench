
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * fgets (char*,size_t,int ) ;
 int printf (char*,char const*) ;
 int stdin ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static char *
readstring(const char *prompt, char *buf, size_t len)
{
    printf("%s", prompt);
    if (fgets(buf, len, stdin) == ((void*)0))
 return ((void*)0);
    buf[strcspn(buf, "\r\n")] = '\0';
    return buf;
}
