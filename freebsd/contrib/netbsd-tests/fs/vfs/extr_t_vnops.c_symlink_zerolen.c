
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int symlink_len (int const*,char const*,int ) ;

__attribute__((used)) static void
symlink_zerolen(const atf_tc_t *tc, const char *mp)
{
 symlink_len(tc, mp, 0);
}
