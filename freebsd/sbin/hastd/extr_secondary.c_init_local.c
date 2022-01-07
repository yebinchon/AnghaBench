
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hast_resource {int dummy; } ;


 int EX_NOINPUT ;
 int exit (int ) ;
 int metadata_read (struct hast_resource*,int) ;

__attribute__((used)) static void
init_local(struct hast_resource *res)
{

 if (metadata_read(res, 1) == -1)
  exit(EX_NOINPUT);
}
