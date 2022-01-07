
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int queue; int release_rx_buf; int peek_rx_buf; int get_rx_buf; int * copy_rx_buf; } ;


 int RECEIVE_BUF_SIZE ;
 int RECEIVE_QUEUE_SIZE ;
 int SIG_DFL ;
 int exc_handler ;
 int get_rxbuf ;
 int init_32bit () ;
 int * k_calloc (int ,int ) ;
 int k_free (int *) ;
 struct device* open_driver (char const*,char*,int) ;
 int peek_rxbuf ;
 int pktq_init (int *,int ,int ,int *) ;
 int release_rxbuf ;
 int * rx_pool ;
 int setup_signals (int ) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int first_init (const char *name, char *ebuf, int promisc)
{
  struct device *dev;
  dev = open_driver (name, ebuf, promisc);
  if (!dev)
  {
    return (0);
  }
  return (1);
}
