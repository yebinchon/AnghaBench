
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int video_adapter_t ;


 int am335x_syscons_blank_display (int *,int) ;

__attribute__((used)) static int
am335x_syscons_set_border(video_adapter_t *adp, int border)
{
 return (am335x_syscons_blank_display(adp, border));
}
