
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (unsigned char) ;
 char* strchr (char*,int ) ;

char *
sldns_strip_ws(char *line)
{
        char *s = line, *e;

        for (s = line; *s && isspace((unsigned char)*s); s++)
                ;
        for (e = strchr(s, 0); e > s+2 && isspace((unsigned char)e[-1]) && e[-2] != '\\'; e--)
                ;
        *e = 0;
        return s;
}
