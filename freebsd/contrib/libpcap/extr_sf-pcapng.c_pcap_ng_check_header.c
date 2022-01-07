
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
typedef int total_length ;
struct section_header_block {void* minor_version; void* major_version; scalar_t__ byte_order_magic; } ;
struct pcap_ng_sf {int user_tsresol; scalar_t__ max_blocksize; TYPE_2__* ifaces; } ;
struct interface_description_block {scalar_t__ snaplen; void* linktype; } ;
struct block_trailer {int dummy; } ;
struct block_header {scalar_t__ total_length; scalar_t__ block_type; } ;
struct block_cursor {int block_type; } ;
struct TYPE_9__ {int tstamp_precision; } ;
struct TYPE_10__ {int swapped; int bufsize; scalar_t__ snapshot; struct TYPE_10__* buffer; int cleanup_op; int next_packet_op; void* linktype; scalar_t__ linktype_ext; scalar_t__ tzoff; TYPE_1__ opt; void* version_minor; void* version_major; struct pcap_ng_sf* priv; } ;
typedef TYPE_2__ pcap_t ;
typedef int magic ;
typedef int byte_order_magic ;
typedef scalar_t__ bpf_u_int32 ;
typedef int FILE ;





 scalar_t__ BT_SHB ;

 scalar_t__ BYTE_ORDER_MAGIC ;
 scalar_t__ MAXIMUM_SNAPLEN ;
 scalar_t__ MAX_BLOCKSIZE (scalar_t__) ;
 int PCAP_ERRBUF_SIZE ;
 void* PCAP_NG_VERSION_MAJOR ;
 void* PCAP_NG_VERSION_MINOR ;


 scalar_t__ SWAPLONG (scalar_t__) ;
 void* SWAPSHORT (void*) ;
 int add_interface (TYPE_2__*,struct block_cursor*,char*) ;
 int errno ;
 scalar_t__ ferror (int *) ;
 size_t fread (scalar_t__*,int,int,int *) ;
 int free (TYPE_2__*) ;
 struct interface_description_block* get_from_block_data (struct block_cursor*,int,char*) ;
 void* linktype_to_dlt (void*) ;
 TYPE_2__* malloc (scalar_t__) ;
 scalar_t__ max_snaplen_for_dlt (void*) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 int pcap_ng_cleanup ;
 int pcap_ng_next_packet ;
 TYPE_2__* pcap_open_offline_common (char*,int) ;
 int pcap_snprintf (char*,int ,char*,...) ;
 int read_block (int *,TYPE_2__*,struct block_cursor*,char*) ;
 int read_bytes (int *,int *,scalar_t__,int,char*) ;

pcap_t *
pcap_ng_check_header(bpf_u_int32 magic, FILE *fp, u_int precision, char *errbuf,
    int *err)
{
 size_t amt_read;
 bpf_u_int32 total_length;
 bpf_u_int32 byte_order_magic;
 struct block_header *bhdrp;
 struct section_header_block *shbp;
 pcap_t *p;
 int swapped = 0;
 struct pcap_ng_sf *ps;
 int status;
 struct block_cursor cursor;
 struct interface_description_block *idbp;




 *err = 0;





 if (magic != BT_SHB) {
  return (((void*)0));
 }
 amt_read = fread(&total_length, 1, sizeof(total_length), fp);
 if (amt_read < sizeof(total_length)) {
  if (ferror(fp)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "error reading dump file");
   *err = 1;
   return (((void*)0));
  }





  return (((void*)0));
 }
 amt_read = fread(&byte_order_magic, 1, sizeof(byte_order_magic), fp);
 if (amt_read < sizeof(byte_order_magic)) {
  if (ferror(fp)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "error reading dump file");
   *err = 1;
   return (((void*)0));
  }





  return (((void*)0));
 }
 if (byte_order_magic != BYTE_ORDER_MAGIC) {
  byte_order_magic = SWAPLONG(byte_order_magic);
  if (byte_order_magic != BYTE_ORDER_MAGIC) {



   return (((void*)0));
  }
  swapped = 1;
  total_length = SWAPLONG(total_length);
 }




 if (total_length < sizeof(*bhdrp) + sizeof(*shbp) + sizeof(struct block_trailer)) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "Section Header Block in pcapng dump file has a length of %u < %lu",
      total_length,
      (unsigned long)(sizeof(*bhdrp) + sizeof(*shbp) + sizeof(struct block_trailer)));
  *err = 1;
  return (((void*)0));
 }





 p = pcap_open_offline_common(errbuf, sizeof (struct pcap_ng_sf));
 if (p == ((void*)0)) {

  *err = 1;
  return (((void*)0));
 }
 p->swapped = swapped;
 ps = p->priv;




 switch (precision) {

 case 129:
  ps->user_tsresol = 1000000;
  break;

 case 128:
  ps->user_tsresol = 1000000000;
  break;

 default:
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "unknown time stamp resolution %u", precision);
  free(p);
  *err = 1;
  return (((void*)0));
 }

 p->opt.tstamp_precision = precision;
 p->bufsize = 2048;
 if (p->bufsize < total_length)
  p->bufsize = total_length;
 p->buffer = malloc(p->bufsize);
 if (p->buffer == ((void*)0)) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "out of memory");
  free(p);
  *err = 1;
  return (((void*)0));
 }
 ps->max_blocksize = MAX_BLOCKSIZE(MAXIMUM_SNAPLEN);





 bhdrp = (struct block_header *)p->buffer;
 shbp = (struct section_header_block *)((u_char *)p->buffer + sizeof(struct block_header));
 bhdrp->block_type = magic;
 bhdrp->total_length = total_length;
 shbp->byte_order_magic = byte_order_magic;
 if (read_bytes(fp,
     (u_char *)p->buffer + (sizeof(magic) + sizeof(total_length) + sizeof(byte_order_magic)),
     total_length - (sizeof(magic) + sizeof(total_length) + sizeof(byte_order_magic)),
     1, errbuf) == -1)
  goto fail;

 if (p->swapped) {



  shbp->major_version = SWAPSHORT(shbp->major_version);
  shbp->minor_version = SWAPSHORT(shbp->minor_version);




 }

 if (! (shbp->major_version == PCAP_NG_VERSION_MAJOR &&
        shbp->minor_version == PCAP_NG_VERSION_MINOR)) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "unsupported pcapng savefile version %u.%u",
      shbp->major_version, shbp->minor_version);
  goto fail;
 }
 p->version_major = shbp->major_version;
 p->version_minor = shbp->minor_version;




 p->opt.tstamp_precision = precision;




 for (;;) {



  status = read_block(fp, p, &cursor, errbuf);
  if (status == 0) {

   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
       "the capture file has no Interface Description Blocks");
   goto fail;
  }
  if (status == -1)
   goto fail;
  switch (cursor.block_type) {

  case 132:




   idbp = get_from_block_data(&cursor, sizeof(*idbp),
       errbuf);
   if (idbp == ((void*)0))
    goto fail;




   if (p->swapped) {
    idbp->linktype = SWAPSHORT(idbp->linktype);
    idbp->snaplen = SWAPLONG(idbp->snaplen);
   }




   if (!add_interface(p, &cursor, errbuf))
    goto fail;

   goto done;

  case 133:
  case 130:
  case 131:





   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
       "the capture file has a packet block before any Interface Description Blocks");
   goto fail;

  default:



   break;
  }
 }

done:
 p->tzoff = 0;
 p->snapshot = idbp->snaplen;
 if (p->snapshot <= 0) {
  p->snapshot = max_snaplen_for_dlt(idbp->linktype);
 }
 p->linktype = linktype_to_dlt(idbp->linktype);
 p->linktype_ext = 0;






 if (MAX_BLOCKSIZE(max_snaplen_for_dlt(p->linktype)) > ps->max_blocksize)
  ps->max_blocksize = MAX_BLOCKSIZE(max_snaplen_for_dlt(p->linktype));

 p->next_packet_op = pcap_ng_next_packet;
 p->cleanup_op = pcap_ng_cleanup;

 return (p);

fail:
 free(ps->ifaces);
 free(p->buffer);
 free(p);
 *err = 1;
 return (((void*)0));
}
