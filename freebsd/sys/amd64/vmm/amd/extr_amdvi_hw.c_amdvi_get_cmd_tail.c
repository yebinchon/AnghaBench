
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct amdvi_softc {int * cmd; struct amdvi_ctrl* ctrl; } ;
struct amdvi_ctrl {int cmd_tail; } ;
struct amdvi_cmd {int dummy; } ;


 int KASSERT (struct amdvi_softc*,char*) ;

__attribute__((used)) static struct amdvi_cmd *
amdvi_get_cmd_tail(struct amdvi_softc *softc)
{
 struct amdvi_ctrl *ctrl;
 struct amdvi_cmd *tail;

 KASSERT(softc, ("softc is NULL"));
 KASSERT(softc->cmd != ((void*)0), ("cmd is NULL"));

 ctrl = softc->ctrl;
 KASSERT(ctrl != ((void*)0), ("ctrl is NULL"));

 tail = (struct amdvi_cmd *)((uint8_t *)softc->cmd +
     ctrl->cmd_tail);

 return (tail);
}
