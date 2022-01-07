
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* skipping_filename ;
 int skipping_line ;

void skipping_setup(const char *filename, int line)
{
 skipping_filename = filename;
 skipping_line = line;
}
