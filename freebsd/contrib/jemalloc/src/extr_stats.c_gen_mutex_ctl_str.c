
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int malloc_snprintf (char*,size_t,char*,char const*,char const*,char const*) ;

__attribute__((used)) static void
gen_mutex_ctl_str(char *str, size_t buf_len, const char *prefix,
    const char *mutex, const char *counter) {
 malloc_snprintf(str, buf_len, "stats.%s.%s.%s", prefix, mutex, counter);
}
