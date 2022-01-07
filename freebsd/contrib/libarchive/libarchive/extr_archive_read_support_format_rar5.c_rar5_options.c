
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;


 int ARCHIVE_WARN ;

__attribute__((used)) static int rar5_options(struct archive_read *a, const char *key,
    const char *val) {
 (void) a;
 (void) key;
 (void) val;





 return ARCHIVE_WARN;
}
