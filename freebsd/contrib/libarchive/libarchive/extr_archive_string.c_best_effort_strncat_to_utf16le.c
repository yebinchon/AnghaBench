
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_string_conv {int dummy; } ;
struct archive_string {int dummy; } ;


 int best_effort_strncat_to_utf16 (struct archive_string*,void const*,size_t,struct archive_string_conv*,int ) ;

__attribute__((used)) static int
best_effort_strncat_to_utf16le(struct archive_string *as16, const void *_p,
    size_t length, struct archive_string_conv *sc)
{
 return (best_effort_strncat_to_utf16(as16, _p, length, sc, 0));
}
