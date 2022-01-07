
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;



__attribute__((used)) static int
versatilefb_read_hw_cursor(video_adapter_t *adp, int *col, int *row)
{
 *col = *row = 0;

 return (0);
}
