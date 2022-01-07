
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct element {int dummy; } ;



__attribute__((used)) static inline int for_each_element_completed(const struct element *element,
          const void *data, size_t datalen)
{
 return (const u8 *) element == (const u8 *) data + datalen;
}
