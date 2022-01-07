
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
typedef int buf ;



__attribute__((used)) static char *
indent_string (u_int indent)
{
    static char buf[20];
    u_int idx;

    idx = 0;
    buf[idx] = '\0';




    if (sizeof(buf) < ((indent/8) + (indent %8) + 2)) {
 return buf;
    }




    buf[idx] = '\n';
    idx++;

    while (indent >= 8) {
 buf[idx] = '\t';
 idx++;
 indent -= 8;
    }

    while (indent > 0) {
 buf[idx] = ' ';
 idx++;
 indent--;
    }




    buf[idx] = '\0';

    return buf;
}
