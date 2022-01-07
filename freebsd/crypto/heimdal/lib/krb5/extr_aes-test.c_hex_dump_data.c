
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int hex_encode (void const*,size_t,char**) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
hex_dump_data(const void *data, size_t length)
{
    char *p;

    hex_encode(data, length, &p);
    printf("%s\n", p);
    free(p);
}
