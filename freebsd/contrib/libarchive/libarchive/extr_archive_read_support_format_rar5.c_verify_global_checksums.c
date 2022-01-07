
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 int verify_checksums (struct archive_read*) ;

__attribute__((used)) static int verify_global_checksums(struct archive_read* a) {
 return verify_checksums(a);
}
