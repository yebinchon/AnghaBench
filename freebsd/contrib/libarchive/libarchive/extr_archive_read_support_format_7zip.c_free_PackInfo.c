
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _7z_pack_info {int digest; int positions; int sizes; } ;


 int free (int ) ;
 int free_Digest (int *) ;

__attribute__((used)) static void
free_PackInfo(struct _7z_pack_info *pi)
{
 free(pi->sizes);
 free(pi->positions);
 free_Digest(&(pi->digest));
}
