
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_sec_file_mapping {int lock; int file; } ;


 int fclose (int ) ;
 int mtx_destroy (int *) ;

__attribute__((used)) static void fmap_fini(struct pt_sec_file_mapping *mapping)
{
 if (!mapping)
  return;

 fclose(mapping->file);






}
