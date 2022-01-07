
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_errno (struct archive*) ;
 int archive_error_string (struct archive*) ;
 int archive_set_error (struct archive*,int,char*,char const*) ;
 int assertEqualInt (int,int ) ;
 int assertEqualString (char const*,int ) ;

__attribute__((used)) static void
test(struct archive *a, int code, const char *msg)
{
 archive_set_error(a, code, "%s", msg);

 assertEqualInt(code, archive_errno(a));
 assertEqualString(msg, archive_error_string(a));
}
