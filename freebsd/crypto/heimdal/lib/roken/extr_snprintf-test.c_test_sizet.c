
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sizet_values ;
typedef int buf ;


 int printf (char*,char*,char*) ;
 int rk_snprintf (char*,int,char*,size_t) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ try (char*,size_t) ;

__attribute__((used)) static int
test_sizet (void)
{
    int tot = 0;
    size_t sizet_values[] = { 0, 1, 2, 200, 4294967295u };
    char *result[] = { "0", "1", "2", "200", "4294967295" };
    int i;

    for (i = 0; i < sizeof(sizet_values) / sizeof(sizet_values[0]); ++i) {





 char buf[256];
 rk_snprintf(buf, sizeof(buf), "%zu", sizet_values[i]);
 if (strcmp(buf, result[i]) != 0) {
     printf("%s != %s", buf, result[i]);
     tot++;
 }

    }
    return tot;
}
