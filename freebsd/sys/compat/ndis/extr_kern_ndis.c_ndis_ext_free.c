
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ext_arg1; } ;
struct mbuf {TYPE_1__ m_ext; } ;


 void ndis_return_packet (int ) ;

__attribute__((used)) static void
ndis_ext_free(struct mbuf *m)
{

 return (ndis_return_packet(m->m_ext.ext_arg1));
}
