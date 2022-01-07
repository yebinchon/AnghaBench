
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct interface {char* int_name; int int_if_flags; int int_metric; int int_adj_inmetric; int int_adj_outmetric; int int_state; int int_d_metric; int int_mask; int int_net; int int_dstaddr; int int_addr; } ;


 int IFF_POINTOPOINT ;
 int IS_RIP_OUT_OFF (int) ;
 int TRACEACTIONS ;
 char* addrname (int ,int ,int) ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 int * ftrace ;
 int htonl (int ) ;
 int if_bits ;
 int is_bits ;
 int lastlog () ;
 char* naddr_ntoa (int ) ;
 int trace_bits (int ,int,int ) ;

void
trace_if(const char *act,
  struct interface *ifp)
{
 if (!TRACEACTIONS || ftrace == ((void*)0))
  return;

 lastlog();
 (void)fprintf(ftrace, "%-3s interface %-4s ", act, ifp->int_name);
 (void)fprintf(ftrace, "%-15s-->%-15s ",
        naddr_ntoa(ifp->int_addr),
        addrname(((ifp->int_if_flags & IFF_POINTOPOINT)
    ? ifp->int_dstaddr
    : htonl(ifp->int_net)),
          ifp->int_mask, 1));
 if (ifp->int_metric != 0)
  (void)fprintf(ftrace, "metric=%d ", ifp->int_metric);
 if (ifp->int_adj_inmetric != 0)
  (void)fprintf(ftrace, "adj_inmetric=%u ",
         ifp->int_adj_inmetric);
 if (ifp->int_adj_outmetric != 0)
  (void)fprintf(ftrace, "adj_outmetric=%u ",
         ifp->int_adj_outmetric);
 if (!IS_RIP_OUT_OFF(ifp->int_state)
     && ifp->int_d_metric != 0)
  (void)fprintf(ftrace, "fake_default=%u ", ifp->int_d_metric);
 trace_bits(if_bits, ifp->int_if_flags, 0);
 trace_bits(is_bits, ifp->int_state, 0);
 (void)fputc('\n',ftrace);
}
