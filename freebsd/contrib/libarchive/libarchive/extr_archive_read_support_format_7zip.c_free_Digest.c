
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _7z_digests {int digests; int defineds; } ;


 int free (int ) ;

__attribute__((used)) static void
free_Digest(struct _7z_digests *d)
{
 free(d->defineds);
 free(d->digests);
}
