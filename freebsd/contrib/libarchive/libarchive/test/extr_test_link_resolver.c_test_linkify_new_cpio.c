
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry_linkresolver {int dummy; } ;
struct archive_entry {int dummy; } ;


 int ARCHIVE_FORMAT_CPIO_SVR4_NOCRC ;
 int archive_entry_free (struct archive_entry*) ;
 int archive_entry_linkify (struct archive_entry_linkresolver*,struct archive_entry**,struct archive_entry**) ;
 int archive_entry_linkresolver_free (struct archive_entry_linkresolver*) ;
 struct archive_entry_linkresolver* archive_entry_linkresolver_new () ;
 int archive_entry_linkresolver_set_strategy (struct archive_entry_linkresolver*,int ) ;
 struct archive_entry* archive_entry_new () ;
 int archive_entry_pathname (struct archive_entry*) ;
 int archive_entry_set_dev (struct archive_entry*,int) ;
 int archive_entry_set_ino (struct archive_entry*,int) ;
 int archive_entry_set_nlink (struct archive_entry*,int) ;
 int archive_entry_set_pathname (struct archive_entry*,char*) ;
 int archive_entry_set_size (struct archive_entry*,int) ;
 int archive_entry_size (struct archive_entry*) ;
 int assert (int) ;
 int assertEqualInt (int,int ) ;
 int assertEqualString (char*,int ) ;

__attribute__((used)) static void test_linkify_new_cpio(void)
{
 struct archive_entry *entry, *e2;
 struct archive_entry_linkresolver *resolver;


 assert(((void*)0) != (resolver = archive_entry_linkresolver_new()));
 archive_entry_linkresolver_set_strategy(resolver,
     ARCHIVE_FORMAT_CPIO_SVR4_NOCRC);


 assert(((void*)0) != (entry = archive_entry_new()));
 archive_entry_set_pathname(entry, "test1");
 archive_entry_set_ino(entry, 1);
 archive_entry_set_dev(entry, 2);
 archive_entry_set_nlink(entry, 1);
 archive_entry_set_size(entry, 10);
 archive_entry_linkify(resolver, &entry, &e2);


 assert(e2 == ((void*)0));
 assertEqualInt(10, archive_entry_size(entry));
 assertEqualString("test1", archive_entry_pathname(entry));


 archive_entry_set_pathname(entry, "test2");
 archive_entry_set_nlink(entry, 3);
 archive_entry_set_ino(entry, 2);
 archive_entry_linkify(resolver, &entry, &e2);


 assert(entry == ((void*)0));
 assert(e2 == ((void*)0));


 assert(((void*)0) != (entry = archive_entry_new()));
 archive_entry_set_pathname(entry, "test3");
 archive_entry_set_ino(entry, 2);
 archive_entry_set_dev(entry, 2);
 archive_entry_set_nlink(entry, 2);
 archive_entry_set_size(entry, 10);
 archive_entry_linkify(resolver, &entry, &e2);


 assertEqualString("test2", archive_entry_pathname(entry));
 assertEqualInt(0, archive_entry_size(entry));
 archive_entry_free(entry);
 assert(((void*)0) == e2);
 archive_entry_free(e2);


 assert(((void*)0) != (entry = archive_entry_new()));
 archive_entry_set_pathname(entry, "test4");
 archive_entry_set_ino(entry, 2);
 archive_entry_set_dev(entry, 2);
 archive_entry_set_nlink(entry, 3);
 archive_entry_set_size(entry, 10);
 archive_entry_linkify(resolver, &entry, &e2);


 assertEqualString("test3", archive_entry_pathname(entry));
 assertEqualInt(0, archive_entry_size(entry));


 assertEqualString("test4", archive_entry_pathname(e2));
 assertEqualInt(10, archive_entry_size(e2));

 archive_entry_free(entry);
 archive_entry_free(e2);
 archive_entry_linkresolver_free(resolver);
}
