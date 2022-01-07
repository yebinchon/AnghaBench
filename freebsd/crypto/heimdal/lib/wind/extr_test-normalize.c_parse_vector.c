
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;


 unsigned int MAX_LENGTH_CANON ;
 int errx (int,char*,...) ;
 int sscanf (char const*,char*,unsigned int*) ;
 char* strtok_r (char*,char*,char**) ;

__attribute__((used)) static size_t
parse_vector(char *buf, uint32_t *v)
{
    char *last;
    unsigned ret = 0;
    const char *n;
    unsigned u;

    for(n = strtok_r(buf, " ", &last);
 n != ((void*)0);
 n = strtok_r(((void*)0), " ", &last)) {
 if (ret >= MAX_LENGTH_CANON) {
     errx(1, "increase MAX_LENGTH_CANON");
 }
 if (sscanf(n, "%x", &u) != 1) {
     errx(1, "failed to parse hex: %s", n);
 }
 v[ret] = u;
 ++ret;
    }
    return ret;
}
