
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int name_interpret (int *,int const*,int const*,char*) ;
 int * name_ptr (int *,int const*,int,int const*) ;

__attribute__((used)) static int
name_extract(netdissect_options *ndo,
             const u_char *buf, int ofs, const u_char *maxbuf, char *name)
{
    const u_char *p = name_ptr(ndo, buf, ofs, maxbuf);
    if (p == ((void*)0))
 return(-1);
    name[0] = '\0';
    return(name_interpret(ndo, p, maxbuf, name));
}
