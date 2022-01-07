
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tarfile {scalar_t__ tf_cachesz; struct tarfile* pkg_chain; struct tarfile* tf_cache; struct tarfile* tf_next; struct tarfile* pkg_first; int pkg_fd; int pkg_zs; } ;
struct package {scalar_t__ tf_cachesz; struct package* pkg_chain; struct package* tf_cache; struct package* tf_next; struct package* pkg_first; int pkg_fd; int pkg_zs; } ;


 int close (int ) ;
 int free (struct tarfile*) ;
 int inflateEnd (int *) ;
 struct tarfile* package ;

void
pkgfs_cleanup(void)
{
 struct package *chain;
 struct tarfile *tf, *tfn;

 while (package != ((void*)0)) {
  inflateEnd(&package->pkg_zs);
  close(package->pkg_fd);

  tf = package->pkg_first;
  while (tf != ((void*)0)) {
   tfn = tf->tf_next;
   if (tf->tf_cachesz > 0)
    free(tf->tf_cache);
   free(tf);
   tf = tfn;
  }

  chain = package->pkg_chain;
  free(package);
  package = chain;
 }
}
