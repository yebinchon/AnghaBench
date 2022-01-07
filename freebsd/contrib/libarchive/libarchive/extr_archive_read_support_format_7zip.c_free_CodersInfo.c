
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _7z_coders_info {unsigned int numFolders; int * folders; } ;


 int free (int *) ;
 int free_Folder (int *) ;

__attribute__((used)) static void
free_CodersInfo(struct _7z_coders_info *ci)
{
 unsigned i;

 if (ci->folders) {
  for (i = 0; i < ci->numFolders; i++)
   free_Folder(&(ci->folders[i]));
  free(ci->folders);
 }
}
