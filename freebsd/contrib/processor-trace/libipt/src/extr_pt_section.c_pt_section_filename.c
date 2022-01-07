
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {char const* filename; } ;



const char *pt_section_filename(const struct pt_section *section)
{
 if (!section)
  return ((void*)0);

 return section->filename;
}
