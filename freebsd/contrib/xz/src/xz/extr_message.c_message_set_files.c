
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int files_total ;

extern void
message_set_files(unsigned int files)
{
 files_total = files;
 return;
}
