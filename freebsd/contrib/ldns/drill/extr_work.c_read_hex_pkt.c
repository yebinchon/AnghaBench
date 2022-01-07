
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ ldns_status ;
typedef int ldns_pkt ;


 int LDNS_MAX_PACKETLEN ;
 scalar_t__ LDNS_STATUS_ERR ;
 scalar_t__ LDNS_STATUS_OK ;
 int fprintf (int ,char*,char*) ;
 char* ldns_get_errorstr_by_id (scalar_t__) ;
 scalar_t__ ldns_wire2pkt (int **,int *,size_t) ;
 size_t packetbuffromfile (char*,int *) ;
 int stderr ;
 int xfree (int *) ;
 int * xmalloc (int ) ;

ldns_pkt *
read_hex_pkt(char *filename)
{
 uint8_t *wire;
 size_t wiresize;

 ldns_pkt *pkt = ((void*)0);

 ldns_status status = LDNS_STATUS_ERR;

 wire = xmalloc(LDNS_MAX_PACKETLEN);

 wiresize = packetbuffromfile(filename, wire);

 if (wiresize > 0) {
  status = ldns_wire2pkt(&pkt, wire, wiresize);
 }

 xfree(wire);

 if (status == LDNS_STATUS_OK) {
  return pkt;
 } else {
  fprintf(stderr, "Error parsing hex file: %s\n",
      ldns_get_errorstr_by_id(status));
  return ((void*)0);
 }
}
