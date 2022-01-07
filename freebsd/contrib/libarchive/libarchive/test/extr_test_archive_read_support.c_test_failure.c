
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int (* enabler ) (struct archive*) ;
typedef int (* destructor ) (struct archive*) ;
typedef struct archive* (* constructor ) () ;


 int ARCHIVE_FATAL ;
 int archive_errno (struct archive*) ;
 int * archive_error_string (struct archive*) ;
 int assert (int) ;
 int assertEqualIntA (struct archive*,int,int ) ;

__attribute__((used)) static void
test_failure(constructor new_, enabler enable_, destructor free_)
{
 struct archive *a = new_();
 assertEqualIntA(a, ARCHIVE_FATAL, enable_(a));
 assert(((void*)0) != archive_error_string(a));
 assertEqualIntA(a, -1, archive_errno(a));
 free_(a);
}
