
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int extract_reference_file (int ) ;

void
extract_reference_files(const char **names)
{
 while (names && *names)
  extract_reference_file(*names++);
}
