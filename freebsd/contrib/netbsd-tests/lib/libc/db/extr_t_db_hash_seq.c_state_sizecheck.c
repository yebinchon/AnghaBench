
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct conf {int dummy; } ;
struct TYPE_3__ {int size; } ;
typedef TYPE_1__ DBT ;


 int DO_WARNX (char*,int,int) ;

__attribute__((used)) static int
state_sizecheck(const DBT *t)
{
 if (sizeof(struct conf) == t->size)
  return 0;
 DO_WARNX("Key size mismatch %zu != %zu", sizeof(struct conf), t->size);
 return 0;
}
