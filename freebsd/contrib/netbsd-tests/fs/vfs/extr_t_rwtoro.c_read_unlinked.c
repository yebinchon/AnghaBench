
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int atf_tc_t ;


 int EBUSY ;
 int basic_test (int const*,char const*,int ,int,int ,int ) ;
 int close_file ;
 int open_file_ro_unlink ;

__attribute__((used)) static void
read_unlinked(const atf_tc_t *tc, const char *mp)
{

 basic_test(tc, mp, EBUSY, 0, open_file_ro_unlink, close_file);
}
