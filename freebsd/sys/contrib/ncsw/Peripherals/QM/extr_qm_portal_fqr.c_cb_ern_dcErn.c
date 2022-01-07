
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct qman_fq const* t_Handle ;
typedef struct qman_fq const qman_fq ;
typedef struct qman_fq qm_mr_entry ;


 int UNUSED (struct qman_fq const*) ;
 int XX_Print (char*,int) ;

__attribute__((used)) static void cb_ern_dcErn(t_Handle h_App,
                         t_Handle h_QmPortal,
                         struct qman_fq *p_Fq,
                         const struct qm_mr_entry *p_Msg)
{
    static int cnt = 0;
    UNUSED(p_Fq);
    UNUSED(p_Msg);
    UNUSED(h_App);
    UNUSED(h_QmPortal);

    XX_Print("cb_ern_dcErn_fqs() unimplemented %d\n", ++cnt);
}
