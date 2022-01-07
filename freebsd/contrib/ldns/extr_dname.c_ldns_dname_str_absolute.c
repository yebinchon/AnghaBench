
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

bool
ldns_dname_str_absolute(const char *dname_str)
{
        const char* s;
 if(dname_str && strcmp(dname_str, ".") == 0)
  return 1;
        if(!dname_str || strlen(dname_str) < 2)
                return 0;
        if(dname_str[strlen(dname_str) - 1] != '.')
                return 0;
        if(dname_str[strlen(dname_str) - 2] != '\\')
                return 1;

        for(s=dname_str; *s; s++) {
                if(*s == '\\') {
                        if(s[1] && s[2] && s[3]
                                && isdigit((unsigned char)s[1])
    && isdigit((unsigned char)s[2])
    && isdigit((unsigned char)s[3]))
                                s += 3;
                        else if(!s[1] || isdigit((unsigned char)s[1]))
                                return 0;
                        else s++;
                }
                else if(!*(s+1) && *s == '.')
                        return 1;
        }
        return 0;
}
