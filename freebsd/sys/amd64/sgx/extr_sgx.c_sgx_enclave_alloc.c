
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgx_softc {int dummy; } ;
struct sgx_enclave {int size; int base; } ;
struct secs {int size; int base; } ;


 int M_SGX ;
 int M_WAITOK ;
 int M_ZERO ;
 struct sgx_enclave* malloc (int,int ,int) ;

__attribute__((used)) static int
sgx_enclave_alloc(struct sgx_softc *sc, struct secs *secs,
    struct sgx_enclave **enclave0)
{
 struct sgx_enclave *enclave;

 enclave = malloc(sizeof(struct sgx_enclave),
     M_SGX, M_WAITOK | M_ZERO);

 enclave->base = secs->base;
 enclave->size = secs->size;

 *enclave0 = enclave;

 return (0);
}
