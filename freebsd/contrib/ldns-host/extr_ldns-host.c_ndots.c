
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char const*,char) ;

__attribute__((used)) static int
ndots(const char *name) {
    int n;

    for (n = 0; (name = strchr(name, '.')); n++, name++);
    return n;
}
