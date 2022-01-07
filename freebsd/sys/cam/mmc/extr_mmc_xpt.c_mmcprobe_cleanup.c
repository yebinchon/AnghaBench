
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_periph {int softc; } ;


 int M_CAMXPT ;
 int free (int ,int ) ;

__attribute__((used)) static void mmcprobe_cleanup(struct cam_periph *periph)
{
 free(periph->softc, M_CAMXPT);
}
