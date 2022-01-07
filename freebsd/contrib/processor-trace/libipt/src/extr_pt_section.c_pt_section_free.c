
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {struct pt_section* status; struct pt_section* filename; int lock; int alock; } ;


 int free (struct pt_section*) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void pt_section_free(struct pt_section *section)
{
 if (!section)
  return;
 free(section->filename);
 free(section->status);
 free(section);
}
