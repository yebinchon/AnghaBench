
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;



__attribute__((used)) static inline void set_arg(int arg, off_t *offset)
{
 *offset |= arg;
}
