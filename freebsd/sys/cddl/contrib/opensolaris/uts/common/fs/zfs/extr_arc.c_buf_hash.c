
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int * dva_word; } ;
typedef TYPE_1__ dva_t ;


 int cityhash4 (int ,int ,int ,int ) ;

__attribute__((used)) static uint64_t
buf_hash(uint64_t spa, const dva_t *dva, uint64_t birth)
{
 return (cityhash4(spa, dva->dva_word[0], dva->dva_word[1], birth));
}
