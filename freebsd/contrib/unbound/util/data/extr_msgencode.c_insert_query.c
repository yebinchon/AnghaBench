
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct regional {int dummy; } ;
struct query_info {size_t qname_len; int qclass; int qtype; TYPE_3__* local_alias; int * qname; } ;
struct compress_tree_node {int dummy; } ;
typedef int ssize_t ;
typedef int sldns_buffer ;
struct TYPE_6__ {TYPE_2__* rrset; } ;
struct TYPE_4__ {size_t dname_len; int * dname; } ;
struct TYPE_5__ {TYPE_1__ rk; } ;


 int RETVAL_OK ;
 int RETVAL_OUTMEM ;
 int RETVAL_TRUNC ;
 int compress_tree_store (int *,int ,int ,struct regional*,int *,struct compress_tree_node**) ;
 int dname_count_labels (int *) ;
 int * sldns_buffer_current (int *) ;
 int sldns_buffer_position (int *) ;
 int sldns_buffer_remaining (int *) ;
 int sldns_buffer_skip (int *,int ) ;
 int sldns_buffer_write (int *,int *,size_t) ;
 int sldns_buffer_write_u16 (int *,int ) ;

__attribute__((used)) static int
insert_query(struct query_info* qinfo, struct compress_tree_node** tree,
 sldns_buffer* buffer, struct regional* region)
{
 uint8_t* qname = qinfo->local_alias ?
  qinfo->local_alias->rrset->rk.dname : qinfo->qname;
 size_t qname_len = qinfo->local_alias ?
  qinfo->local_alias->rrset->rk.dname_len : qinfo->qname_len;
 if(sldns_buffer_remaining(buffer) <
  qinfo->qname_len+sizeof(uint16_t)*2)
  return RETVAL_TRUNC;

 if(!compress_tree_store(qname, dname_count_labels(qname),
  sldns_buffer_position(buffer), region, ((void*)0), tree))
  return RETVAL_OUTMEM;
 if(sldns_buffer_current(buffer) == qname)
  sldns_buffer_skip(buffer, (ssize_t)qname_len);
 else sldns_buffer_write(buffer, qname, qname_len);
 sldns_buffer_write_u16(buffer, qinfo->qtype);
 sldns_buffer_write_u16(buffer, qinfo->qclass);
 return RETVAL_OK;
}
