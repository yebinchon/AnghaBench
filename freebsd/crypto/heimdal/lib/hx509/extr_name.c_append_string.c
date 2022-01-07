
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Q_RFC2253 ;
 int _hx509_abort (char*) ;
 int free (char*) ;
 int memcpy (char*,char*,size_t) ;
 char* quote_string (char const*,size_t,int ,size_t*) ;
 char* realloc (char*,size_t) ;
 char* rk_UNCONST (char const*) ;

__attribute__((used)) static int
append_string(char **str, size_t *total_len, const char *ss,
       size_t len, int quote)
{
    char *s, *qs;

    if (quote)
 qs = quote_string(ss, len, Q_RFC2253, &len);
    else
 qs = rk_UNCONST(ss);

    s = realloc(*str, len + *total_len + 1);
    if (s == ((void*)0))
 _hx509_abort("allocation failure");
    memcpy(s + *total_len, qs, len);
    if (qs != ss)
 free(qs);
    s[*total_len + len] = '\0';
    *str = s;
    *total_len += len;
    return 0;
}
