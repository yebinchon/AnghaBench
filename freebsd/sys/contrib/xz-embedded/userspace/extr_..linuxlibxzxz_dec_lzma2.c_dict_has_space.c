
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dictionary {scalar_t__ pos; scalar_t__ limit; } ;



__attribute__((used)) static inline bool dict_has_space(const struct dictionary *dict)
{
 return dict->pos < dict->limit;
}
