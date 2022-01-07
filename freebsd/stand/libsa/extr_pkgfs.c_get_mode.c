
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ut_mode; } ;
struct tarfile {TYPE_1__ tf_hdr; } ;


 int pkg_atol (int ,int) ;

__attribute__((used)) static int
get_mode(struct tarfile *tf)
{
 return (pkg_atol(tf->tf_hdr.ut_mode, sizeof(tf->tf_hdr.ut_mode)));
}
