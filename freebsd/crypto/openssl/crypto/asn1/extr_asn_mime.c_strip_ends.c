
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strip_end (int ) ;
 int strip_start (char*) ;

__attribute__((used)) static char *strip_ends(char *name)
{
    return strip_end(strip_start(name));
}
