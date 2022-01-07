
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_server_stats {int ans_rcode_nodata; int * ans_rcode; scalar_t__ extended; } ;
typedef int sldns_buffer ;


 scalar_t__ LDNS_ANCOUNT (int ) ;
 scalar_t__ LDNS_RCODE_WIRE (int ) ;
 int sldns_buffer_begin (int *) ;
 scalar_t__ sldns_buffer_limit (int *) ;

void server_stats_insrcode(struct ub_server_stats* stats, sldns_buffer* buf)
{
 if(stats->extended && sldns_buffer_limit(buf) != 0) {
  int r = (int)LDNS_RCODE_WIRE( sldns_buffer_begin(buf) );
  stats->ans_rcode[r] ++;
  if(r == 0 && LDNS_ANCOUNT( sldns_buffer_begin(buf) ) == 0)
   stats->ans_rcode_nodata ++;
 }
}
