
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isoent {int file; } ;


 struct isoent* isoent_new (int ) ;

__attribute__((used)) static inline struct isoent *
isoent_clone(struct isoent *src)
{
 return (isoent_new(src->file));
}
