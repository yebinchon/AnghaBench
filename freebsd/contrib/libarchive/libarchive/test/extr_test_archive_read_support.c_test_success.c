
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int (* enabler ) (struct archive*) ;
typedef int (* destructor ) (struct archive*) ;
typedef struct archive* (* constructor ) () ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int archive_errno (struct archive*) ;
 int * archive_error_string (struct archive*) ;
 int assert (int) ;
 int assertEqualIntA (struct archive*,int,int) ;

__attribute__((used)) static void
test_success(constructor new_, enabler enable_, destructor free_)
{
 struct archive *a = new_();
 int result = enable_(a);
 if (result == ARCHIVE_WARN) {
  assert(((void*)0) != archive_error_string(a));
  assertEqualIntA(a, -1, archive_errno(a));
 } else {
  assertEqualIntA(a, ARCHIVE_OK, result);
  assert(((void*)0) == archive_error_string(a));
  assertEqualIntA(a, 0, archive_errno(a));
 }
 free_(a);
}
