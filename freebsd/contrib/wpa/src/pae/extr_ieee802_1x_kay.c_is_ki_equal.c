
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_mka_ki {scalar_t__ kn; int mi; } ;


 int MI_LEN ;
 scalar_t__ os_memcmp (int ,int ,int ) ;

__attribute__((used)) static int is_ki_equal(struct ieee802_1x_mka_ki *ki1,
         struct ieee802_1x_mka_ki *ki2)
{
 return os_memcmp(ki1->mi, ki2->mi, MI_LEN) == 0 &&
  ki1->kn == ki2->kn;
}
