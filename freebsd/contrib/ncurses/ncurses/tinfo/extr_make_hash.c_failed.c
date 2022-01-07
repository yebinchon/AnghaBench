
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int perror (char const*) ;

__attribute__((used)) static void
failed(const char *s)
{
    perror(s);
    exit(EXIT_FAILURE);
}
