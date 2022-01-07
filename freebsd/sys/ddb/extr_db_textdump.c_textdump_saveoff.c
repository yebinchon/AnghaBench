
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int textdump_offset ;

void
textdump_saveoff(off_t *offsetp)
{

 *offsetp = textdump_offset;
}
