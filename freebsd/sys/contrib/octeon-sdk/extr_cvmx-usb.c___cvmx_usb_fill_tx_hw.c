
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_7__ {int head; int tail; TYPE_1__* entry; } ;
typedef TYPE_2__ cvmx_usb_tx_fifo_t ;
struct TYPE_8__ {int index; } ;
typedef TYPE_3__ cvmx_usb_internal_state_t ;
struct TYPE_6__ {int address; int size; int channel; } ;


 int CVMX_USBNX_DMA0_INB_CHN0 (int ) ;
 int CVMX_USB_LOG_CALLED () ;
 int CVMX_USB_LOG_PARAM (char*,...) ;
 int CVMX_USB_RETURN (int) ;
 int MAX_CHANNELS ;
 int USB_FIFO_ADDRESS (int ,int ) ;
 int * cvmx_phys_to_ptr (int) ;
 int cvmx_read64_uint64 (int ) ;
 int cvmx_write64_uint32 (int,int ) ;

__attribute__((used)) static int __cvmx_usb_fill_tx_hw(cvmx_usb_internal_state_t *usb, cvmx_usb_tx_fifo_t *fifo, int available)
{
    CVMX_USB_LOG_CALLED();
    CVMX_USB_LOG_PARAM("%p", usb);
    CVMX_USB_LOG_PARAM("%p", fifo);
    CVMX_USB_LOG_PARAM("%d", available);



    while (available && (fifo->head != fifo->tail))
    {
        int i = fifo->tail;
        const uint32_t *ptr = cvmx_phys_to_ptr(fifo->entry[i].address);
        uint64_t csr_address = USB_FIFO_ADDRESS(fifo->entry[i].channel, usb->index) ^ 4;
        int words = available;


        if (fifo->entry[i].size <= available)
        {
            words = fifo->entry[i].size;
            fifo->tail++;
            if (fifo->tail > MAX_CHANNELS)
                fifo->tail = 0;
        }


        available -= words;
        fifo->entry[i].address += words * 4;
        fifo->entry[i].size -= words;



        while (words > 3)
        {
            cvmx_write64_uint32(csr_address, *ptr++);
            cvmx_write64_uint32(csr_address, *ptr++);
            cvmx_write64_uint32(csr_address, *ptr++);
            cvmx_read64_uint64(CVMX_USBNX_DMA0_INB_CHN0(usb->index));
            words -= 3;
        }
        cvmx_write64_uint32(csr_address, *ptr++);
        if (--words)
        {
            cvmx_write64_uint32(csr_address, *ptr++);
            if (--words)
                cvmx_write64_uint32(csr_address, *ptr++);
        }
        cvmx_read64_uint64(CVMX_USBNX_DMA0_INB_CHN0(usb->index));
    }
    CVMX_USB_RETURN(fifo->head != fifo->tail);
}
