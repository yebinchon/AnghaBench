
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int idrent_pool; } ;


 int free (int ) ;

__attribute__((used)) static void
idr_cleanup(struct idr *idr)
{
 free(idr->idrent_pool);
}
