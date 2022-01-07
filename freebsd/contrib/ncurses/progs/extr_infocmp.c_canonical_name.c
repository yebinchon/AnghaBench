
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NAMESIZE ;
 int _nc_STRCPY (char*,char*,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static char *
canonical_name(char *ptr, char *buf)

{
    char *bp;

    _nc_STRCPY(buf, ptr, NAMESIZE);
    if ((bp = strchr(buf, '|')) != 0)
 *bp = '\0';

    return (buf);
}
