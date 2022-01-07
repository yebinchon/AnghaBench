
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int STAILQ_INIT (int *) ;
 int ctlfe_driver ;
 int ctlfe_list_mtx ;
 int ctlfe_mtx_desc ;
 int ctlfe_softc_list ;
 int mtx_init (int *,int ,int *,int ) ;
 int periphdriver_register (int *) ;

__attribute__((used)) static int
ctlfeinitialize(void)
{

 STAILQ_INIT(&ctlfe_softc_list);
 mtx_init(&ctlfe_list_mtx, ctlfe_mtx_desc, ((void*)0), MTX_DEF);
 periphdriver_register(&ctlfe_driver);
 return (0);
}
