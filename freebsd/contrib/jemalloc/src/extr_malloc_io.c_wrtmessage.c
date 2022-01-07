
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int STDERR_FILENO ;
 int malloc_write_fd (int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static void
wrtmessage(void *cbopaque, const char *s) {
 malloc_write_fd(STDERR_FILENO, s, strlen(s));
}
