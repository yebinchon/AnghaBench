; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_worker_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32, i64 }
%struct.comm_reply = type { i32, i32, i32, i64 }
%struct.worker = type { %struct.TYPE_17__, %struct.TYPE_18__, i32, %struct.TYPE_27__, %struct.TYPE_22__* }
%struct.TYPE_17__ = type { i64*, %struct.TYPE_23__*, i32, i32, i64, i32, i32 }
%struct.TYPE_23__ = type { i64, i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_27__ = type { i64, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_22__ = type { i32, i64, %struct.TYPE_20__*, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.lruhash_entry = type { i32, i64 }
%struct.query_info = type { i64, i64, i32, i32, i64, %struct.TYPE_25__*, i64, i64, i32*, i32, i64 }
%struct.TYPE_25__ = type { %struct.ub_packed_rrset_key*, i64 }
%struct.ub_packed_rrset_key = type { %struct.TYPE_24__, %struct.TYPE_21__ }
%struct.TYPE_24__ = type { i64, i64 }
%struct.TYPE_21__ = type { %struct.packed_rrset_data* }
%struct.packed_rrset_data = type { i32, i64*, i64* }
%struct.edns_data = type { i64, i64, i32, i32, i64, %struct.TYPE_25__*, i64, i64, i32*, i32, i64 }
%struct.acl_addr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.reply_info = type { i64, i64 }
%struct.respip_client_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.edns_option = type { i64 }
%struct.timeval = type { i32, i32 }

@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"handle request called with err=%d\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"worker check request: bad query.\00", align 1
@VERB_CLIENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [86 x i8] c"ip_ratelimit allowed through for ip address %s because of slip in ip_ratelimit_factor\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"worker parse request: formerror.\00", align 1
@LDNS_RCODE_FORMERR = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AXFR = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_IXFR = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"worker request: refused zone transfer.\00", align 1
@LDNS_RCODE_REFUSED = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_OPT = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_TSIG = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_TKEY = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_MAILA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_MAILB = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [41 x i8] c"worker request: formerror for meta-type.\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"worker parse edns: formerror.\00", align 1
@EDNS_ADVERTISED_SIZE = common dso_local global i8* null, align 8
@EDNS_RCODE_BADVERS = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_VERSION = common dso_local global i8* null, align 8
@EDNS_DO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"query with bad edns version.\00", align 1
@NORMAL_UDP_SIZE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"worker request: EDNS bufsize %d ignored\00", align 1
@comm_udp = common dso_local global i32 0, align 4
@LDNS_EDNS_KEEPALIVE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"query with bad edns keepalive.\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"worker request: max UDP reply size modified (%d to max-udp-size)\00", align 1
@LDNS_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"worker request: edns is too small.\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [9 x i8] zeroinitializer, align 1
@LDNS_RR_CLASS_CH = common dso_local global i64 0, align 8
@LDNS_PACKET_NOTIFY = common dso_local global i64 0, align 8
@acl_deny_non_local = common dso_local global i32 0, align 4
@acl_refuse_non_local = common dso_local global i32 0, align 4
@acl_allow_setrd = common dso_local global i32 0, align 4
@acl_allow_snoop = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [40 x i8] c"refused nonrec (cache snoop) query from\00", align 1
@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [43 x i8] c"assumption failure: unexpected local alias\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_ANY = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [33 x i8] c"unexpected: invalid answer alias\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"answer from the cache failed\00", align 1
@.str.18 = private unnamed_addr constant [58 x i8] c"answer norec from cache -- need to validate or not primed\00", align 1
@verbosity = common dso_local global i64 0, align 8
@.str.19 = private unnamed_addr constant [17 x i8] c"udp request from\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"tcp request from\00", align 1
@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_TXT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @worker_handle_request(%struct.comm_point* %0, i8* %1, i32 %2, %struct.comm_reply* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comm_reply*, align 8
  %10 = alloca %struct.worker*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.lruhash_entry*, align 8
  %14 = alloca %struct.query_info, align 8
  %15 = alloca %struct.edns_data, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.acl_addr*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ub_packed_rrset_key*, align 8
  %21 = alloca %struct.reply_info*, align 8
  %22 = alloca %struct.query_info*, align 8
  %23 = alloca %struct.query_info, align 8
  %24 = alloca %struct.respip_client_info*, align 8
  %25 = alloca %struct.respip_client_info, align 4
  %26 = alloca [128 x i8], align 16
  %27 = alloca [128 x i8], align 16
  %28 = alloca %struct.edns_data, align 8
  %29 = alloca %struct.edns_option*, align 8
  %30 = alloca %struct.ub_packed_rrset_key*, align 8
  %31 = alloca %struct.packed_rrset_data*, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.timeval, align 4
  store %struct.comm_point* %0, %struct.comm_point** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.comm_reply* %3, %struct.comm_reply** %9, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = bitcast i8* %34 to %struct.worker*
  store %struct.worker* %35, %struct.worker** %10, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %20, align 8
  store %struct.reply_info* null, %struct.reply_info** %21, align 8
  store %struct.query_info* %14, %struct.query_info** %22, align 8
  store %struct.respip_client_info* null, %struct.respip_client_info** %24, align 8
  %36 = call i32 @memset(%struct.query_info* %14, i32 0, i32 80)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @NETEVENT_NOERROR, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %4
  %41 = load i64, i64* @VERB_ALGO, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i64, i8*, ...) @verbose(i64 %41, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %42)
  store i32 0, i32* %5, align 4
  br label %1434

44:                                               ; preds = %4
  %45 = load %struct.worker*, %struct.worker** %10, align 8
  %46 = getelementptr inbounds %struct.worker, %struct.worker* %45, i32 0, i32 4
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %51 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %50, i32 0, i32 2
  %52 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %53 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.acl_addr* @acl_addr_lookup(i32 %49, i32* %51, i32 %54)
  store %struct.acl_addr* %55, %struct.acl_addr** %17, align 8
  %56 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %57 = call i32 @acl_get_control(%struct.acl_addr* %56)
  store i32 %57, i32* %16, align 4
  %58 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %59 = load i32, i32* %16, align 4
  %60 = load %struct.worker*, %struct.worker** %10, align 8
  %61 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %62 = call i32 @deny_refuse_all(%struct.comm_point* %58, i32 %59, %struct.worker* %60, %struct.comm_reply* %61)
  store i32 %62, i32* %11, align 4
  %63 = icmp ne i32 %62, -1
  br i1 %63, label %64, label %70

64:                                               ; preds = %44
  %65 = load i32, i32* %11, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  br label %1364

68:                                               ; preds = %64
  %69 = load i32, i32* %11, align 4
  store i32 %69, i32* %5, align 4
  br label %1434

70:                                               ; preds = %44
  %71 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %72 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.worker*, %struct.worker** %10, align 8
  %75 = call i32 @worker_check_request(i32 %73, %struct.worker* %74)
  store i32 %75, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %104

77:                                               ; preds = %70
  %78 = load i64, i64* @VERB_ALGO, align 8
  %79 = call i32 (i64, i8*, ...) @verbose(i64 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %80 = load i64, i64* @VERB_CLIENT, align 8
  %81 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %82 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %81, i32 0, i32 2
  %83 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %84 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @log_addr(i64 %80, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %82, i32 %85)
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %101

89:                                               ; preds = %77
  %90 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %91 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @sldns_buffer_begin(i32 %92)
  %94 = call i32 @LDNS_QR_SET(i64 %93)
  %95 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %96 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @sldns_buffer_begin(i32 %97)
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @LDNS_RCODE_SET(i64 %98, i32 %99)
  store i32 1, i32* %5, align 4
  br label %1434

101:                                              ; preds = %77
  %102 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %103 = call i32 @comm_point_drop_reply(%struct.comm_reply* %102)
  store i32 0, i32* %5, align 4
  br label %1434

104:                                              ; preds = %70
  %105 = load %struct.worker*, %struct.worker** %10, align 8
  %106 = getelementptr inbounds %struct.worker, %struct.worker* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.worker*, %struct.worker** %10, align 8
  %111 = getelementptr inbounds %struct.worker, %struct.worker* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 6
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %115 = load %struct.worker*, %struct.worker** %10, align 8
  %116 = getelementptr inbounds %struct.worker, %struct.worker* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %121 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @infra_ip_ratelimit_inc(i32 %113, %struct.comm_reply* %114, i64 %119, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %167, label %125

125:                                              ; preds = %104
  %126 = load %struct.worker*, %struct.worker** %10, align 8
  %127 = getelementptr inbounds %struct.worker, %struct.worker* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_23__*, %struct.TYPE_23__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %158

133:                                              ; preds = %125
  %134 = load %struct.worker*, %struct.worker** %10, align 8
  %135 = getelementptr inbounds %struct.worker, %struct.worker* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 5
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.worker*, %struct.worker** %10, align 8
  %139 = getelementptr inbounds %struct.worker, %struct.worker* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @ub_random_max(i32 %137, i64 %143)
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %133
  %147 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %148 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %147, i32 0, i32 2
  %149 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %150 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %153 = call i32 @addr_to_str(i32* %148, i32 %151, i8* %152, i32 128)
  %154 = load i32, i32* @VERB_QUERY, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [128 x i8], [128 x i8]* %26, i64 0, i64 0
  %157 = call i32 (i64, i8*, ...) @verbose(i64 %155, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.3, i64 0, i64 0), i8* %156)
  br label %166

158:                                              ; preds = %133, %125
  %159 = load %struct.worker*, %struct.worker** %10, align 8
  %160 = getelementptr inbounds %struct.worker, %struct.worker* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %161, align 8
  %164 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %165 = call i32 @comm_point_drop_reply(%struct.comm_reply* %164)
  store i32 0, i32* %5, align 4
  br label %1434

166:                                              ; preds = %146
  br label %167

167:                                              ; preds = %166, %104
  %168 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %169 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @query_info_parse(%struct.query_info* %14, i32 %170)
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %213, label %173

173:                                              ; preds = %167
  %174 = load i64, i64* @VERB_ALGO, align 8
  %175 = call i32 (i64, i8*, ...) @verbose(i64 %174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %176 = load i64, i64* @VERB_CLIENT, align 8
  %177 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %178 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %177, i32 0, i32 2
  %179 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %180 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @log_addr(i64 %176, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %178, i32 %181)
  %183 = call i32 @memset(%struct.query_info* %14, i32 0, i32 80)
  %184 = load %struct.worker*, %struct.worker** %10, align 8
  %185 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  %186 = call i32 @worker_err_ratelimit(%struct.worker* %184, i32 %185)
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %191

188:                                              ; preds = %173
  %189 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %190 = call i32 @comm_point_drop_reply(%struct.comm_reply* %189)
  store i32 0, i32* %5, align 4
  br label %1434

191:                                              ; preds = %173
  %192 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %193 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = call i32 @sldns_buffer_rewind(i32 %194)
  %196 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %197 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i64 @sldns_buffer_begin(i32 %198)
  %200 = call i32 @LDNS_QR_SET(i64 %199)
  %201 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %202 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i64 @sldns_buffer_begin(i32 %203)
  %205 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  %206 = call i32 @LDNS_RCODE_SET(i64 %204, i32 %205)
  %207 = load %struct.worker*, %struct.worker** %10, align 8
  %208 = getelementptr inbounds %struct.worker, %struct.worker* %207, i32 0, i32 3
  %209 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %210 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @server_stats_insrcode(%struct.TYPE_27__* %208, i32 %211)
  br label %1364

213:                                              ; preds = %167
  %214 = load %struct.worker*, %struct.worker** %10, align 8
  %215 = getelementptr inbounds %struct.worker, %struct.worker* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %215, i32 0, i32 1
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 4
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %237

221:                                              ; preds = %213
  %222 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %223 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %222, i32 0, i32 2
  %224 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %225 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %228 = call i32 @addr_to_str(i32* %223, i32 %226, i8* %227, i32 128)
  %229 = getelementptr inbounds [128 x i8], [128 x i8]* %27, i64 0, i64 0
  %230 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 6
  %231 = load i64, i64* %230, align 8
  %232 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @log_query_in(i8* %229, i64 %231, i64 %233, i64 %235)
  br label %237

237:                                              ; preds = %221, %213
  %238 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @LDNS_RR_TYPE_AXFR, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %247, label %242

242:                                              ; preds = %237
  %243 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @LDNS_RR_TYPE_IXFR, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %294

247:                                              ; preds = %242, %237
  %248 = load i64, i64* @VERB_ALGO, align 8
  %249 = call i32 (i64, i8*, ...) @verbose(i64 %248, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i64 0, i64 0))
  %250 = load i64, i64* @VERB_CLIENT, align 8
  %251 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %252 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %251, i32 0, i32 2
  %253 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %254 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @log_addr(i64 %250, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %252, i32 %255)
  %257 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %258 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = call i32 @sldns_buffer_rewind(i32 %259)
  %261 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %262 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = call i64 @sldns_buffer_begin(i32 %263)
  %265 = call i32 @LDNS_QR_SET(i64 %264)
  %266 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %267 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @sldns_buffer_begin(i32 %268)
  %270 = load i32, i32* @LDNS_RCODE_REFUSED, align 4
  %271 = call i32 @LDNS_RCODE_SET(i64 %269, i32 %270)
  %272 = load %struct.worker*, %struct.worker** %10, align 8
  %273 = getelementptr inbounds %struct.worker, %struct.worker* %272, i32 0, i32 3
  %274 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %293

277:                                              ; preds = %247
  %278 = load %struct.worker*, %struct.worker** %10, align 8
  %279 = getelementptr inbounds %struct.worker, %struct.worker* %278, i32 0, i32 3
  %280 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %284, align 4
  %287 = load %struct.worker*, %struct.worker** %10, align 8
  %288 = getelementptr inbounds %struct.worker, %struct.worker* %287, i32 0, i32 3
  %289 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %290 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = call i32 @server_stats_insrcode(%struct.TYPE_27__* %288, i32 %291)
  br label %293

293:                                              ; preds = %277, %247
  br label %1364

294:                                              ; preds = %242
  %295 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @LDNS_RR_TYPE_OPT, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %327, label %299

299:                                              ; preds = %294
  %300 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = load i64, i64* @LDNS_RR_TYPE_TSIG, align 8
  %303 = icmp eq i64 %301, %302
  br i1 %303, label %327, label %304

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* @LDNS_RR_TYPE_TKEY, align 8
  %308 = icmp eq i64 %306, %307
  br i1 %308, label %327, label %309

309:                                              ; preds = %304
  %310 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %311 = load i64, i64* %310, align 8
  %312 = load i64, i64* @LDNS_RR_TYPE_MAILA, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %327, label %314

314:                                              ; preds = %309
  %315 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @LDNS_RR_TYPE_MAILB, align 8
  %318 = icmp eq i64 %316, %317
  br i1 %318, label %327, label %319

319:                                              ; preds = %314
  %320 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = icmp uge i64 %321, 128
  br i1 %322, label %323, label %382

323:                                              ; preds = %319
  %324 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %325 = load i64, i64* %324, align 8
  %326 = icmp ule i64 %325, 248
  br i1 %326, label %327, label %382

327:                                              ; preds = %323, %314, %309, %304, %299, %294
  %328 = load i64, i64* @VERB_ALGO, align 8
  %329 = call i32 (i64, i8*, ...) @verbose(i64 %328, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %330 = load i64, i64* @VERB_CLIENT, align 8
  %331 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %332 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %331, i32 0, i32 2
  %333 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %334 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @log_addr(i64 %330, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %332, i32 %335)
  %337 = load %struct.worker*, %struct.worker** %10, align 8
  %338 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  %339 = call i32 @worker_err_ratelimit(%struct.worker* %337, i32 %338)
  %340 = icmp eq i32 %339, -1
  br i1 %340, label %341, label %344

341:                                              ; preds = %327
  %342 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %343 = call i32 @comm_point_drop_reply(%struct.comm_reply* %342)
  store i32 0, i32* %5, align 4
  br label %1434

344:                                              ; preds = %327
  %345 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %346 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @sldns_buffer_rewind(i32 %347)
  %349 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %350 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = call i64 @sldns_buffer_begin(i32 %351)
  %353 = call i32 @LDNS_QR_SET(i64 %352)
  %354 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %355 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = call i64 @sldns_buffer_begin(i32 %356)
  %358 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  %359 = call i32 @LDNS_RCODE_SET(i64 %357, i32 %358)
  %360 = load %struct.worker*, %struct.worker** %10, align 8
  %361 = getelementptr inbounds %struct.worker, %struct.worker* %360, i32 0, i32 3
  %362 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %361, i32 0, i32 0
  %363 = load i64, i64* %362, align 8
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %381

365:                                              ; preds = %344
  %366 = load %struct.worker*, %struct.worker** %10, align 8
  %367 = getelementptr inbounds %struct.worker, %struct.worker* %366, i32 0, i32 3
  %368 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %367, i32 0, i32 1
  %369 = load i32*, i32** %368, align 8
  %370 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %372, align 4
  %375 = load %struct.worker*, %struct.worker** %10, align 8
  %376 = getelementptr inbounds %struct.worker, %struct.worker* %375, i32 0, i32 3
  %377 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %378 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %377, i32 0, i32 0
  %379 = load i32, i32* %378, align 8
  %380 = call i32 @server_stats_insrcode(%struct.TYPE_27__* %376, i32 %379)
  br label %381

381:                                              ; preds = %365, %344
  br label %1364

382:                                              ; preds = %323, %319
  %383 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %384 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %387 = load %struct.worker*, %struct.worker** %10, align 8
  %388 = getelementptr inbounds %struct.worker, %struct.worker* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = call i32 @parse_edns_from_pkt(i32 %385, %struct.query_info* %386, i32 %389)
  store i32 %390, i32* %11, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %441

392:                                              ; preds = %382
  %393 = load i64, i64* @VERB_ALGO, align 8
  %394 = call i32 (i64, i8*, ...) @verbose(i64 %393, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0))
  %395 = load i64, i64* @VERB_CLIENT, align 8
  %396 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %397 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %396, i32 0, i32 2
  %398 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %399 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = call i32 @log_addr(i64 %395, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %397, i32 %400)
  %402 = bitcast %struct.edns_data* %28 to %struct.query_info*
  %403 = call i32 @memset(%struct.query_info* %402, i32 0, i32 80)
  %404 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %28, i32 0, i32 2
  store i32 1, i32* %404, align 8
  %405 = load i8*, i8** @EDNS_ADVERTISED_SIZE, align 8
  %406 = ptrtoint i8* %405 to i32
  %407 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %28, i32 0, i32 3
  store i32 %406, i32* %407, align 4
  %408 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %409 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 8
  %411 = call i64 @sldns_buffer_begin(i32 %410)
  %412 = load i32, i32* %11, align 4
  %413 = call i32 @LDNS_RCODE_SET(i64 %411, i32 %412)
  %414 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %415 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* %11, align 4
  %418 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %419 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = call i64 @sldns_buffer_begin(i32 %420)
  %422 = inttoptr i64 %421 to i8*
  %423 = bitcast i8* %422 to i32*
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %426 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = call i32 @sldns_buffer_read_u16_at(i32 %427, i32 2)
  %429 = bitcast %struct.edns_data* %28 to %struct.query_info*
  %430 = call i32 @error_encode(i32 %416, i32 %417, %struct.query_info* %14, i32 %424, i32 %428, %struct.query_info* %429)
  %431 = load %struct.worker*, %struct.worker** %10, align 8
  %432 = getelementptr inbounds %struct.worker, %struct.worker* %431, i32 0, i32 2
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @regional_free_all(i32 %433)
  %435 = load %struct.worker*, %struct.worker** %10, align 8
  %436 = getelementptr inbounds %struct.worker, %struct.worker* %435, i32 0, i32 3
  %437 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %438 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = call i32 @server_stats_insrcode(%struct.TYPE_27__* %436, i32 %439)
  br label %1364

441:                                              ; preds = %382
  %442 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 2
  %443 = load i32, i32* %442, align 8
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %624

445:                                              ; preds = %441
  %446 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 4
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  br i1 %448, label %449, label %514

449:                                              ; preds = %445
  %450 = load i32, i32* @EDNS_RCODE_BADVERS, align 4
  %451 = ashr i32 %450, 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 10
  store i64 %452, i64* %453, align 8
  %454 = load i8*, i8** @EDNS_ADVERTISED_VERSION, align 8
  %455 = ptrtoint i8* %454 to i64
  %456 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 4
  store i64 %455, i64* %456, align 8
  %457 = load i8*, i8** @EDNS_ADVERTISED_SIZE, align 8
  %458 = ptrtoint i8* %457 to i32
  %459 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 3
  store i32 %458, i32* %459, align 4
  %460 = load i32, i32* @EDNS_DO, align 4
  %461 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 9
  %462 = load i32, i32* %461, align 8
  %463 = and i32 %462, %460
  store i32 %463, i32* %461, align 8
  %464 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 8
  store i32* null, i32** %464, align 8
  %465 = load i64, i64* @VERB_ALGO, align 8
  %466 = call i32 (i64, i8*, ...) @verbose(i64 %465, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %467 = load i64, i64* @VERB_CLIENT, align 8
  %468 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %469 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %468, i32 0, i32 2
  %470 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %471 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %470, i32 0, i32 1
  %472 = load i32, i32* %471, align 4
  %473 = call i32 @log_addr(i64 %467, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %469, i32 %472)
  %474 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %475 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* @EDNS_RCODE_BADVERS, align 4
  %478 = and i32 %477, 15
  %479 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %480 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %479, i32 0, i32 0
  %481 = load i32, i32* %480, align 8
  %482 = call i64 @sldns_buffer_begin(i32 %481)
  %483 = inttoptr i64 %482 to i8*
  %484 = bitcast i8* %483 to i32*
  %485 = load i32, i32* %484, align 4
  %486 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %487 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %486, i32 0, i32 0
  %488 = load i32, i32* %487, align 8
  %489 = call i32 @sldns_buffer_read_u16_at(i32 %488, i32 2)
  %490 = call i32 @error_encode(i32 %476, i32 %478, %struct.query_info* %14, i32 %485, i32 %489, %struct.query_info* null)
  %491 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %492 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 8
  %494 = call i64 @sldns_buffer_capacity(i32 %493)
  %495 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %496 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %495, i32 0, i32 0
  %497 = load i32, i32* %496, align 8
  %498 = call i64 @sldns_buffer_limit(i32 %497)
  %499 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %500 = call i64 @calc_edns_field_size(%struct.query_info* %499)
  %501 = add nsw i64 %498, %500
  %502 = icmp sge i64 %494, %501
  br i1 %502, label %503, label %509

503:                                              ; preds = %449
  %504 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %505 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %508 = call i32 @attach_edns_record(i32 %506, %struct.query_info* %507)
  br label %509

509:                                              ; preds = %503, %449
  %510 = load %struct.worker*, %struct.worker** %10, align 8
  %511 = getelementptr inbounds %struct.worker, %struct.worker* %510, i32 0, i32 2
  %512 = load i32, i32* %511, align 8
  %513 = call i32 @regional_free_all(i32 %512)
  br label %1364

514:                                              ; preds = %445
  %515 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 3
  %516 = load i32, i32* %515, align 4
  %517 = load i32, i32* @NORMAL_UDP_SIZE, align 4
  %518 = icmp slt i32 %516, %517
  br i1 %518, label %519, label %543

519:                                              ; preds = %514
  %520 = load %struct.worker*, %struct.worker** %10, align 8
  %521 = getelementptr inbounds %struct.worker, %struct.worker* %520, i32 0, i32 4
  %522 = load %struct.TYPE_22__*, %struct.TYPE_22__** %521, align 8
  %523 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %522, i32 0, i32 2
  %524 = load %struct.TYPE_20__*, %struct.TYPE_20__** %523, align 8
  %525 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %524, i32 0, i32 3
  %526 = load i64, i64* %525, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %543

528:                                              ; preds = %519
  %529 = load i32, i32* @VERB_QUERY, align 4
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 3
  %532 = load i32, i32* %531, align 4
  %533 = call i32 (i64, i8*, ...) @verbose(i64 %530, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i32 %532)
  %534 = load i64, i64* @VERB_CLIENT, align 8
  %535 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %536 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %535, i32 0, i32 2
  %537 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %538 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %537, i32 0, i32 1
  %539 = load i32, i32* %538, align 4
  %540 = call i32 @log_addr(i64 %534, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %536, i32 %539)
  %541 = load i32, i32* @NORMAL_UDP_SIZE, align 4
  %542 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 3
  store i32 %541, i32* %542, align 4
  br label %543

543:                                              ; preds = %528, %519, %514
  %544 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %545 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %544, i32 0, i32 1
  %546 = load i32, i32* %545, align 4
  %547 = load i32, i32* @comm_udp, align 4
  %548 = icmp ne i32 %546, %547
  br i1 %548, label %549, label %623

549:                                              ; preds = %543
  %550 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 8
  %551 = load i32*, i32** %550, align 8
  %552 = load i32, i32* @LDNS_EDNS_KEEPALIVE, align 4
  %553 = call %struct.edns_option* @edns_opt_list_find(i32* %551, i32 %552)
  store %struct.edns_option* %553, %struct.edns_option** %29, align 8
  %554 = load %struct.edns_option*, %struct.edns_option** %29, align 8
  %555 = icmp ne %struct.edns_option* %554, null
  br i1 %555, label %556, label %622

556:                                              ; preds = %549
  %557 = load %struct.edns_option*, %struct.edns_option** %29, align 8
  %558 = getelementptr inbounds %struct.edns_option, %struct.edns_option* %557, i32 0, i32 0
  %559 = load i64, i64* %558, align 8
  %560 = icmp sgt i64 %559, 0
  br i1 %560, label %561, label %622

561:                                              ; preds = %556
  %562 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 10
  store i64 0, i64* %562, align 8
  %563 = load i8*, i8** @EDNS_ADVERTISED_VERSION, align 8
  %564 = ptrtoint i8* %563 to i64
  %565 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 4
  store i64 %564, i64* %565, align 8
  %566 = load i8*, i8** @EDNS_ADVERTISED_SIZE, align 8
  %567 = ptrtoint i8* %566 to i32
  %568 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 3
  store i32 %567, i32* %568, align 4
  %569 = load i32, i32* @EDNS_DO, align 4
  %570 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 9
  %571 = load i32, i32* %570, align 8
  %572 = and i32 %571, %569
  store i32 %572, i32* %570, align 8
  %573 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 8
  store i32* null, i32** %573, align 8
  %574 = load i64, i64* @VERB_ALGO, align 8
  %575 = call i32 (i64, i8*, ...) @verbose(i64 %574, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %576 = load i64, i64* @VERB_CLIENT, align 8
  %577 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %578 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %577, i32 0, i32 2
  %579 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %580 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %579, i32 0, i32 1
  %581 = load i32, i32* %580, align 4
  %582 = call i32 @log_addr(i64 %576, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %578, i32 %581)
  %583 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %584 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %583, i32 0, i32 0
  %585 = load i32, i32* %584, align 8
  %586 = load i32, i32* @LDNS_RCODE_FORMERR, align 4
  %587 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %588 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 8
  %590 = call i64 @sldns_buffer_begin(i32 %589)
  %591 = inttoptr i64 %590 to i8*
  %592 = bitcast i8* %591 to i32*
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %595 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %594, i32 0, i32 0
  %596 = load i32, i32* %595, align 8
  %597 = call i32 @sldns_buffer_read_u16_at(i32 %596, i32 2)
  %598 = call i32 @error_encode(i32 %585, i32 %586, %struct.query_info* %14, i32 %593, i32 %597, %struct.query_info* null)
  %599 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %600 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 8
  %602 = call i64 @sldns_buffer_capacity(i32 %601)
  %603 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %604 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = call i64 @sldns_buffer_limit(i32 %605)
  %607 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %608 = call i64 @calc_edns_field_size(%struct.query_info* %607)
  %609 = add nsw i64 %606, %608
  %610 = icmp sge i64 %602, %609
  br i1 %610, label %611, label %617

611:                                              ; preds = %561
  %612 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %613 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %612, i32 0, i32 0
  %614 = load i32, i32* %613, align 8
  %615 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %616 = call i32 @attach_edns_record(i32 %614, %struct.query_info* %615)
  br label %617

617:                                              ; preds = %611, %561
  %618 = load %struct.worker*, %struct.worker** %10, align 8
  %619 = getelementptr inbounds %struct.worker, %struct.worker* %618, i32 0, i32 2
  %620 = load i32, i32* %619, align 8
  %621 = call i32 @regional_free_all(i32 %620)
  br label %1364

622:                                              ; preds = %556, %549
  br label %623

623:                                              ; preds = %622, %543
  br label %624

624:                                              ; preds = %623, %441
  %625 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 3
  %626 = load i32, i32* %625, align 4
  %627 = load %struct.worker*, %struct.worker** %10, align 8
  %628 = getelementptr inbounds %struct.worker, %struct.worker* %627, i32 0, i32 4
  %629 = load %struct.TYPE_22__*, %struct.TYPE_22__** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %629, i32 0, i32 2
  %631 = load %struct.TYPE_20__*, %struct.TYPE_20__** %630, align 8
  %632 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %631, i32 0, i32 0
  %633 = load i32, i32* %632, align 8
  %634 = icmp sgt i32 %626, %633
  br i1 %634, label %635, label %662

635:                                              ; preds = %624
  %636 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %637 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %636, i32 0, i32 1
  %638 = load i32, i32* %637, align 4
  %639 = load i32, i32* @comm_udp, align 4
  %640 = icmp eq i32 %638, %639
  br i1 %640, label %641, label %662

641:                                              ; preds = %635
  %642 = load i32, i32* @VERB_QUERY, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 3
  %645 = load i32, i32* %644, align 4
  %646 = call i32 (i64, i8*, ...) @verbose(i64 %643, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0), i32 %645)
  %647 = load i64, i64* @VERB_CLIENT, align 8
  %648 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %649 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %648, i32 0, i32 2
  %650 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %651 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %650, i32 0, i32 1
  %652 = load i32, i32* %651, align 4
  %653 = call i32 @log_addr(i64 %647, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %649, i32 %652)
  %654 = load %struct.worker*, %struct.worker** %10, align 8
  %655 = getelementptr inbounds %struct.worker, %struct.worker* %654, i32 0, i32 4
  %656 = load %struct.TYPE_22__*, %struct.TYPE_22__** %655, align 8
  %657 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %656, i32 0, i32 2
  %658 = load %struct.TYPE_20__*, %struct.TYPE_20__** %657, align 8
  %659 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %658, i32 0, i32 0
  %660 = load i32, i32* %659, align 8
  %661 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 3
  store i32 %660, i32* %661, align 4
  br label %662

662:                                              ; preds = %641, %635, %624
  %663 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 3
  %664 = load i32, i32* %663, align 4
  %665 = load i32, i32* @LDNS_HEADER_SIZE, align 4
  %666 = icmp slt i32 %664, %665
  br i1 %666, label %667, label %710

667:                                              ; preds = %662
  %668 = load i64, i64* @VERB_ALGO, align 8
  %669 = call i32 (i64, i8*, ...) @verbose(i64 %668, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i64 0, i64 0))
  %670 = load i64, i64* @VERB_CLIENT, align 8
  %671 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %672 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %671, i32 0, i32 2
  %673 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %674 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 4
  %676 = call i32 @log_addr(i64 %670, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %672, i32 %675)
  %677 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %678 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %677, i32 0, i32 0
  %679 = load i32, i32* %678, align 8
  %680 = call i64 @sldns_buffer_begin(i32 %679)
  %681 = call i32 @LDNS_QR_SET(i64 %680)
  %682 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %683 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %682, i32 0, i32 0
  %684 = load i32, i32* %683, align 8
  %685 = call i64 @sldns_buffer_begin(i32 %684)
  %686 = call i32 @LDNS_TC_SET(i64 %685)
  %687 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %688 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %687, i32 0, i32 0
  %689 = load i32, i32* %688, align 8
  %690 = call i64 @sldns_buffer_begin(i32 %689)
  %691 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %692 = call i32 @LDNS_RCODE_SET(i64 %690, i32 %691)
  %693 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %694 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %693, i32 0, i32 0
  %695 = load i32, i32* %694, align 8
  %696 = load i32, i32* @LDNS_HEADER_SIZE, align 4
  %697 = call i32 @sldns_buffer_set_position(i32 %695, i32 %696)
  %698 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %699 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %698, i32 0, i32 0
  %700 = load i32, i32* %699, align 8
  %701 = call i32 @sldns_buffer_write_at(i32 %700, i32 4, i64* bitcast ([9 x i8]* @.str.13 to i64*), i32 8)
  %702 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %703 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %702, i32 0, i32 0
  %704 = load i32, i32* %703, align 8
  %705 = call i32 @sldns_buffer_flip(i32 %704)
  %706 = load %struct.worker*, %struct.worker** %10, align 8
  %707 = getelementptr inbounds %struct.worker, %struct.worker* %706, i32 0, i32 2
  %708 = load i32, i32* %707, align 8
  %709 = call i32 @regional_free_all(i32 %708)
  br label %1364

710:                                              ; preds = %662
  %711 = load %struct.worker*, %struct.worker** %10, align 8
  %712 = getelementptr inbounds %struct.worker, %struct.worker* %711, i32 0, i32 3
  %713 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %712, i32 0, i32 0
  %714 = load i64, i64* %713, align 8
  %715 = icmp ne i64 %714, 0
  br i1 %715, label %716, label %727

716:                                              ; preds = %710
  %717 = load %struct.worker*, %struct.worker** %10, align 8
  %718 = getelementptr inbounds %struct.worker, %struct.worker* %717, i32 0, i32 3
  %719 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %720 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %721 = load i64, i64* %720, align 8
  %722 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 1
  %723 = load i64, i64* %722, align 8
  %724 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %725 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %726 = call i32 @server_stats_insquery(%struct.TYPE_27__* %718, %struct.comm_point* %719, i64 %721, i64 %723, %struct.query_info* %724, %struct.comm_reply* %725)
  br label %727

727:                                              ; preds = %716, %710
  %728 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %729 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %728, i32 0, i32 1
  %730 = load i32, i32* %729, align 4
  %731 = load i32, i32* @comm_udp, align 4
  %732 = icmp ne i32 %730, %731
  br i1 %732, label %733, label %735

733:                                              ; preds = %727
  %734 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 3
  store i32 65535, i32* %734, align 4
  br label %735

735:                                              ; preds = %733, %727
  %736 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 1
  %737 = load i64, i64* %736, align 8
  %738 = load i64, i64* @LDNS_RR_CLASS_CH, align 8
  %739 = icmp eq i64 %737, %738
  br i1 %739, label %740, label %760

740:                                              ; preds = %735
  %741 = load %struct.worker*, %struct.worker** %10, align 8
  %742 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %743 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %744 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %745 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %744, i32 0, i32 0
  %746 = load i32, i32* %745, align 8
  %747 = call i64 @answer_chaos(%struct.worker* %741, %struct.query_info* %14, %struct.query_info* %742, %struct.comm_reply* %743, i32 %746)
  %748 = icmp ne i64 %747, 0
  br i1 %748, label %749, label %760

749:                                              ; preds = %740
  %750 = load %struct.worker*, %struct.worker** %10, align 8
  %751 = getelementptr inbounds %struct.worker, %struct.worker* %750, i32 0, i32 3
  %752 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %753 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %752, i32 0, i32 0
  %754 = load i32, i32* %753, align 8
  %755 = call i32 @server_stats_insrcode(%struct.TYPE_27__* %751, i32 %754)
  %756 = load %struct.worker*, %struct.worker** %10, align 8
  %757 = getelementptr inbounds %struct.worker, %struct.worker* %756, i32 0, i32 2
  %758 = load i32, i32* %757, align 8
  %759 = call i32 @regional_free_all(i32 %758)
  br label %1364

760:                                              ; preds = %740, %735
  %761 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %762 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %761, i32 0, i32 0
  %763 = load i32, i32* %762, align 8
  %764 = call i64 @sldns_buffer_begin(i32 %763)
  %765 = call i64 @LDNS_OPCODE_WIRE(i64 %764)
  %766 = load i64, i64* @LDNS_PACKET_NOTIFY, align 8
  %767 = icmp eq i64 %765, %766
  br i1 %767, label %768, label %780

768:                                              ; preds = %760
  %769 = load %struct.worker*, %struct.worker** %10, align 8
  %770 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %771 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %772 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %771, i32 0, i32 0
  %773 = load i32, i32* %772, align 8
  %774 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %775 = call i32 @answer_notify(%struct.worker* %769, %struct.query_info* %14, %struct.query_info* %770, i32 %773, %struct.comm_reply* %774)
  %776 = load %struct.worker*, %struct.worker** %10, align 8
  %777 = getelementptr inbounds %struct.worker, %struct.worker* %776, i32 0, i32 2
  %778 = load i32, i32* %777, align 8
  %779 = call i32 @regional_free_all(i32 %778)
  br label %1364

780:                                              ; preds = %760
  %781 = load %struct.worker*, %struct.worker** %10, align 8
  %782 = getelementptr inbounds %struct.worker, %struct.worker* %781, i32 0, i32 4
  %783 = load %struct.TYPE_22__*, %struct.TYPE_22__** %782, align 8
  %784 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %783, i32 0, i32 3
  %785 = load i32, i32* %784, align 8
  %786 = load %struct.worker*, %struct.worker** %10, align 8
  %787 = getelementptr inbounds %struct.worker, %struct.worker* %786, i32 0, i32 0
  %788 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %789 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %790 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %789, i32 0, i32 0
  %791 = load i32, i32* %790, align 8
  %792 = load %struct.worker*, %struct.worker** %10, align 8
  %793 = getelementptr inbounds %struct.worker, %struct.worker* %792, i32 0, i32 2
  %794 = load i32, i32* %793, align 8
  %795 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %796 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %797 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %796, i32 0, i32 6
  %798 = load i32, i32* %797, align 4
  %799 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %800 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %799, i32 0, i32 5
  %801 = load i32, i32* %800, align 4
  %802 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %803 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %802, i32 0, i32 4
  %804 = load i32, i32* %803, align 4
  %805 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %806 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %805, i32 0, i32 3
  %807 = load i32, i32* %806, align 4
  %808 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %809 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %808, i32 0, i32 2
  %810 = load i32, i32* %809, align 4
  %811 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %812 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %811, i32 0, i32 1
  %813 = load i32, i32* %812, align 4
  %814 = load %struct.worker*, %struct.worker** %10, align 8
  %815 = getelementptr inbounds %struct.worker, %struct.worker* %814, i32 0, i32 4
  %816 = load %struct.TYPE_22__*, %struct.TYPE_22__** %815, align 8
  %817 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %816, i32 0, i32 2
  %818 = load %struct.TYPE_20__*, %struct.TYPE_20__** %817, align 8
  %819 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %818, i32 0, i32 2
  %820 = load i32, i32* %819, align 8
  %821 = load %struct.worker*, %struct.worker** %10, align 8
  %822 = getelementptr inbounds %struct.worker, %struct.worker* %821, i32 0, i32 4
  %823 = load %struct.TYPE_22__*, %struct.TYPE_22__** %822, align 8
  %824 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %823, i32 0, i32 2
  %825 = load %struct.TYPE_20__*, %struct.TYPE_20__** %824, align 8
  %826 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %825, i32 0, i32 1
  %827 = load i32, i32* %826, align 4
  %828 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %829 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %828, i32 0, i32 0
  %830 = load i32, i32* %829, align 4
  %831 = call i64 @local_zones_answer(i32 %785, %struct.TYPE_17__* %787, %struct.query_info* %14, %struct.query_info* %788, i32 %791, i32 %794, %struct.comm_reply* %795, i32 %798, i32 %801, i32 %804, i32 %807, i32 %810, i32 %813, i32 %820, i32 %827, i32 %830)
  %832 = icmp ne i64 %831, 0
  br i1 %832, label %833, label %853

833:                                              ; preds = %780
  %834 = load %struct.worker*, %struct.worker** %10, align 8
  %835 = getelementptr inbounds %struct.worker, %struct.worker* %834, i32 0, i32 2
  %836 = load i32, i32* %835, align 8
  %837 = call i32 @regional_free_all(i32 %836)
  %838 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %839 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %838, i32 0, i32 0
  %840 = load i32, i32* %839, align 8
  %841 = call i64 @sldns_buffer_limit(i32 %840)
  %842 = icmp eq i64 %841, 0
  br i1 %842, label %843, label %846

843:                                              ; preds = %833
  %844 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %845 = call i32 @comm_point_drop_reply(%struct.comm_reply* %844)
  store i32 0, i32* %5, align 4
  br label %1434

846:                                              ; preds = %833
  %847 = load %struct.worker*, %struct.worker** %10, align 8
  %848 = getelementptr inbounds %struct.worker, %struct.worker* %847, i32 0, i32 3
  %849 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %850 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %849, i32 0, i32 0
  %851 = load i32, i32* %850, align 8
  %852 = call i32 @server_stats_insrcode(%struct.TYPE_27__* %848, i32 %851)
  br label %1364

853:                                              ; preds = %780
  %854 = load %struct.worker*, %struct.worker** %10, align 8
  %855 = getelementptr inbounds %struct.worker, %struct.worker* %854, i32 0, i32 0
  %856 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %855, i32 0, i32 4
  %857 = load i64, i64* %856, align 8
  %858 = icmp ne i64 %857, 0
  br i1 %858, label %859, label %917

859:                                              ; preds = %853
  %860 = load %struct.worker*, %struct.worker** %10, align 8
  %861 = getelementptr inbounds %struct.worker, %struct.worker* %860, i32 0, i32 0
  %862 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %861, i32 0, i32 4
  %863 = load i64, i64* %862, align 8
  %864 = load %struct.worker*, %struct.worker** %10, align 8
  %865 = getelementptr inbounds %struct.worker, %struct.worker* %864, i32 0, i32 0
  %866 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %867 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %868 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %869 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %868, i32 0, i32 0
  %870 = load i32, i32* %869, align 8
  %871 = load %struct.worker*, %struct.worker** %10, align 8
  %872 = getelementptr inbounds %struct.worker, %struct.worker* %871, i32 0, i32 2
  %873 = load i32, i32* %872, align 8
  %874 = call i64 @auth_zones_answer(i64 %863, %struct.TYPE_17__* %865, %struct.query_info* %14, %struct.query_info* %866, %struct.comm_reply* %867, i32 %870, i32 %873)
  %875 = icmp ne i64 %874, 0
  br i1 %875, label %876, label %917

876:                                              ; preds = %859
  %877 = load %struct.worker*, %struct.worker** %10, align 8
  %878 = getelementptr inbounds %struct.worker, %struct.worker* %877, i32 0, i32 2
  %879 = load i32, i32* %878, align 8
  %880 = call i32 @regional_free_all(i32 %879)
  %881 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %882 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %881, i32 0, i32 0
  %883 = load i32, i32* %882, align 8
  %884 = call i64 @sldns_buffer_limit(i32 %883)
  %885 = icmp eq i64 %884, 0
  br i1 %885, label %886, label %889

886:                                              ; preds = %876
  %887 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %888 = call i32 @comm_point_drop_reply(%struct.comm_reply* %887)
  store i32 0, i32* %5, align 4
  br label %1434

889:                                              ; preds = %876
  %890 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %891 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %890, i32 0, i32 0
  %892 = load i32, i32* %891, align 8
  %893 = call i64 @sldns_buffer_begin(i32 %892)
  %894 = call i64 @LDNS_RD_WIRE(i64 %893)
  %895 = icmp ne i64 %894, 0
  br i1 %895, label %896, label %910

896:                                              ; preds = %889
  %897 = load i32, i32* %16, align 4
  %898 = load i32, i32* @acl_deny_non_local, align 4
  %899 = icmp ne i32 %897, %898
  br i1 %899, label %900, label %910

900:                                              ; preds = %896
  %901 = load i32, i32* %16, align 4
  %902 = load i32, i32* @acl_refuse_non_local, align 4
  %903 = icmp ne i32 %901, %902
  br i1 %903, label %904, label %910

904:                                              ; preds = %900
  %905 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %906 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %905, i32 0, i32 0
  %907 = load i32, i32* %906, align 8
  %908 = call i64 @sldns_buffer_begin(i32 %907)
  %909 = call i32 @LDNS_RA_SET(i64 %908)
  br label %910

910:                                              ; preds = %904, %900, %896, %889
  %911 = load %struct.worker*, %struct.worker** %10, align 8
  %912 = getelementptr inbounds %struct.worker, %struct.worker* %911, i32 0, i32 3
  %913 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %914 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %913, i32 0, i32 0
  %915 = load i32, i32* %914, align 8
  %916 = call i32 @server_stats_insrcode(%struct.TYPE_27__* %912, i32 %915)
  br label %1364

917:                                              ; preds = %859, %853
  %918 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %919 = load i32, i32* %16, align 4
  %920 = load %struct.worker*, %struct.worker** %10, align 8
  %921 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %922 = call i32 @deny_refuse_non_local(%struct.comm_point* %918, i32 %919, %struct.worker* %920, %struct.comm_reply* %921)
  store i32 %922, i32* %11, align 4
  %923 = icmp ne i32 %922, -1
  br i1 %923, label %924, label %934

924:                                              ; preds = %917
  %925 = load %struct.worker*, %struct.worker** %10, align 8
  %926 = getelementptr inbounds %struct.worker, %struct.worker* %925, i32 0, i32 2
  %927 = load i32, i32* %926, align 8
  %928 = call i32 @regional_free_all(i32 %927)
  %929 = load i32, i32* %11, align 4
  %930 = icmp eq i32 %929, 1
  br i1 %930, label %931, label %932

931:                                              ; preds = %924
  br label %1364

932:                                              ; preds = %924
  %933 = load i32, i32* %11, align 4
  store i32 %933, i32* %5, align 4
  br label %1434

934:                                              ; preds = %917
  %935 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %936 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %935, i32 0, i32 0
  %937 = load i32, i32* %936, align 8
  %938 = call i64 @sldns_buffer_begin(i32 %937)
  %939 = call i64 @LDNS_RD_WIRE(i64 %938)
  %940 = icmp ne i64 %939, 0
  br i1 %940, label %951, label %941

941:                                              ; preds = %934
  %942 = load i32, i32* %16, align 4
  %943 = load i32, i32* @acl_allow_setrd, align 4
  %944 = icmp eq i32 %942, %943
  br i1 %944, label %945, label %951

945:                                              ; preds = %941
  %946 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %947 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %946, i32 0, i32 0
  %948 = load i32, i32* %947, align 8
  %949 = call i64 @sldns_buffer_begin(i32 %948)
  %950 = call i32 @LDNS_RD_SET(i64 %949)
  br label %951

951:                                              ; preds = %945, %941, %934
  %952 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %953 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %952, i32 0, i32 0
  %954 = load i32, i32* %953, align 8
  %955 = call i64 @sldns_buffer_begin(i32 %954)
  %956 = call i64 @LDNS_RD_WIRE(i64 %955)
  %957 = icmp ne i64 %956, 0
  br i1 %957, label %996, label %958

958:                                              ; preds = %951
  %959 = load i32, i32* %16, align 4
  %960 = load i32, i32* @acl_allow_snoop, align 4
  %961 = icmp ne i32 %959, %960
  br i1 %961, label %962, label %996

962:                                              ; preds = %958
  %963 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %964 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %963, i32 0, i32 0
  %965 = load i32, i32* %964, align 8
  %966 = load i32, i32* @LDNS_RCODE_REFUSED, align 4
  %967 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %968 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %967, i32 0, i32 0
  %969 = load i32, i32* %968, align 8
  %970 = call i64 @sldns_buffer_begin(i32 %969)
  %971 = inttoptr i64 %970 to i8*
  %972 = bitcast i8* %971 to i32*
  %973 = load i32, i32* %972, align 4
  %974 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %975 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %974, i32 0, i32 0
  %976 = load i32, i32* %975, align 8
  %977 = call i32 @sldns_buffer_read_u16_at(i32 %976, i32 2)
  %978 = call i32 @error_encode(i32 %965, i32 %966, %struct.query_info* %14, i32 %973, i32 %977, %struct.query_info* null)
  %979 = load %struct.worker*, %struct.worker** %10, align 8
  %980 = getelementptr inbounds %struct.worker, %struct.worker* %979, i32 0, i32 2
  %981 = load i32, i32* %980, align 8
  %982 = call i32 @regional_free_all(i32 %981)
  %983 = load %struct.worker*, %struct.worker** %10, align 8
  %984 = getelementptr inbounds %struct.worker, %struct.worker* %983, i32 0, i32 3
  %985 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %986 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %985, i32 0, i32 0
  %987 = load i32, i32* %986, align 8
  %988 = call i32 @server_stats_insrcode(%struct.TYPE_27__* %984, i32 %987)
  %989 = load i64, i64* @VERB_ALGO, align 8
  %990 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %991 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %990, i32 0, i32 2
  %992 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %993 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %992, i32 0, i32 1
  %994 = load i32, i32* %993, align 4
  %995 = call i32 @log_addr(i64 %989, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32* %991, i32 %994)
  br label %1364

996:                                              ; preds = %958, %951
  %997 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 5
  %998 = load %struct.TYPE_25__*, %struct.TYPE_25__** %997, align 8
  %999 = icmp ne %struct.TYPE_25__* %998, null
  br i1 %999, label %1000, label %1048

1000:                                             ; preds = %996
  %1001 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 5
  %1002 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1001, align 8
  %1003 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1002, i32 0, i32 0
  %1004 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %1003, align 8
  store %struct.ub_packed_rrset_key* %1004, %struct.ub_packed_rrset_key** %30, align 8
  %1005 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, align 8
  %1006 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %1005, i32 0, i32 1
  %1007 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %1006, i32 0, i32 0
  %1008 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %1007, align 8
  store %struct.packed_rrset_data* %1008, %struct.packed_rrset_data** %31, align 8
  %1009 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 5
  %1010 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1009, align 8
  %1011 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1010, i32 0, i32 1
  %1012 = load i64, i64* %1011, align 8
  %1013 = icmp ne i64 %1012, 0
  br i1 %1013, label %1027, label %1014

1014:                                             ; preds = %1000
  %1015 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %30, align 8
  %1016 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %1015, i32 0, i32 0
  %1017 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1016, i32 0, i32 0
  %1018 = load i64, i64* %1017, align 8
  %1019 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %1020 = call i64 @htons(i32 %1019)
  %1021 = icmp ne i64 %1018, %1020
  br i1 %1021, label %1027, label %1022

1022:                                             ; preds = %1014
  %1023 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %31, align 8
  %1024 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %1023, i32 0, i32 0
  %1025 = load i32, i32* %1024, align 8
  %1026 = icmp ne i32 %1025, 1
  br i1 %1026, label %1027, label %1033

1027:                                             ; preds = %1022, %1014, %1000
  %1028 = call i32 @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.15, i64 0, i64 0))
  %1029 = load %struct.worker*, %struct.worker** %10, align 8
  %1030 = getelementptr inbounds %struct.worker, %struct.worker* %1029, i32 0, i32 2
  %1031 = load i32, i32* %1030, align 8
  %1032 = call i32 @regional_free_all(i32 %1031)
  store i32 0, i32* %5, align 4
  br label %1434

1033:                                             ; preds = %1022
  %1034 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %31, align 8
  %1035 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %1034, i32 0, i32 2
  %1036 = load i64*, i64** %1035, align 8
  %1037 = getelementptr inbounds i64, i64* %1036, i64 0
  %1038 = load i64, i64* %1037, align 8
  %1039 = add nsw i64 %1038, 2
  %1040 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 6
  store i64 %1039, i64* %1040, align 8
  %1041 = load %struct.packed_rrset_data*, %struct.packed_rrset_data** %31, align 8
  %1042 = getelementptr inbounds %struct.packed_rrset_data, %struct.packed_rrset_data* %1041, i32 0, i32 1
  %1043 = load i64*, i64** %1042, align 8
  %1044 = getelementptr inbounds i64, i64* %1043, i64 0
  %1045 = load i64, i64* %1044, align 8
  %1046 = sub nsw i64 %1045, 2
  %1047 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 7
  store i64 %1046, i64* %1047, align 8
  br label %1048

1048:                                             ; preds = %1033, %996
  %1049 = load %struct.worker*, %struct.worker** %10, align 8
  %1050 = getelementptr inbounds %struct.worker, %struct.worker* %1049, i32 0, i32 4
  %1051 = load %struct.TYPE_22__*, %struct.TYPE_22__** %1050, align 8
  %1052 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1051, i32 0, i32 1
  %1053 = load i64, i64* %1052, align 8
  %1054 = icmp ne i64 %1053, 0
  br i1 %1054, label %1055, label %1105

1055:                                             ; preds = %1048
  %1056 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %1057 = load i64, i64* %1056, align 8
  %1058 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %1059 = icmp eq i64 %1057, %1058
  br i1 %1059, label %1070, label %1060

1060:                                             ; preds = %1055
  %1061 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %1062 = load i64, i64* %1061, align 8
  %1063 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %1064 = icmp eq i64 %1062, %1063
  br i1 %1064, label %1070, label %1065

1065:                                             ; preds = %1060
  %1066 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %1067 = load i64, i64* %1066, align 8
  %1068 = load i64, i64* @LDNS_RR_TYPE_ANY, align 8
  %1069 = icmp eq i64 %1067, %1068
  br i1 %1069, label %1070, label %1105

1070:                                             ; preds = %1065, %1060, %1055
  %1071 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %1072 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %1071, i32 0, i32 6
  %1073 = load i32, i32* %1072, align 4
  %1074 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %25, i32 0, i32 7
  store i32 %1073, i32* %1074, align 4
  %1075 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %1076 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %1075, i32 0, i32 5
  %1077 = load i32, i32* %1076, align 4
  %1078 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %25, i32 0, i32 6
  store i32 %1077, i32* %1078, align 4
  %1079 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %1080 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %1079, i32 0, i32 4
  %1081 = load i32, i32* %1080, align 4
  %1082 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %25, i32 0, i32 5
  store i32 %1081, i32* %1082, align 4
  %1083 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %1084 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %1083, i32 0, i32 3
  %1085 = load i32, i32* %1084, align 4
  %1086 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %25, i32 0, i32 4
  store i32 %1085, i32* %1086, align 4
  %1087 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %1088 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %1087, i32 0, i32 2
  %1089 = load i32, i32* %1088, align 4
  %1090 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %25, i32 0, i32 3
  store i32 %1089, i32* %1090, align 4
  %1091 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %1092 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %1091, i32 0, i32 1
  %1093 = load i32, i32* %1092, align 4
  %1094 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %25, i32 0, i32 2
  store i32 %1093, i32* %1094, align 4
  %1095 = load %struct.acl_addr*, %struct.acl_addr** %17, align 8
  %1096 = getelementptr inbounds %struct.acl_addr, %struct.acl_addr* %1095, i32 0, i32 0
  %1097 = load i32, i32* %1096, align 4
  %1098 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %25, i32 0, i32 1
  store i32 %1097, i32* %1098, align 4
  %1099 = load %struct.worker*, %struct.worker** %10, align 8
  %1100 = getelementptr inbounds %struct.worker, %struct.worker* %1099, i32 0, i32 4
  %1101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %1100, align 8
  %1102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %1101, i32 0, i32 0
  %1103 = load i32, i32* %1102, align 8
  %1104 = getelementptr inbounds %struct.respip_client_info, %struct.respip_client_info* %25, i32 0, i32 0
  store i32 %1103, i32* %1104, align 4
  store %struct.respip_client_info* %25, %struct.respip_client_info** %24, align 8
  br label %1105

1105:                                             ; preds = %1070, %1065, %1048
  br label %1106

1106:                                             ; preds = %1257, %1105
  %1107 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %15, i32 0, i32 8
  %1108 = load i32*, i32** %1107, align 8
  %1109 = load %struct.worker*, %struct.worker** %10, align 8
  %1110 = getelementptr inbounds %struct.worker, %struct.worker* %1109, i32 0, i32 0
  %1111 = call i32 @edns_bypass_cache_stage(i32* %1108, %struct.TYPE_17__* %1110)
  %1112 = icmp ne i32 %1111, 0
  br i1 %1112, label %1303, label %1113

1113:                                             ; preds = %1106
  %1114 = load %struct.query_info*, %struct.query_info** %22, align 8
  %1115 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1116 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1115, i32 0, i32 0
  %1117 = load i32, i32* %1116, align 8
  %1118 = call i32 @sldns_buffer_read_u16_at(i32 %1117, i32 2)
  %1119 = call i32 @query_info_hash(%struct.query_info* %1114, i32 %1118)
  store i32 %1119, i32* %12, align 4
  %1120 = load %struct.worker*, %struct.worker** %10, align 8
  %1121 = getelementptr inbounds %struct.worker, %struct.worker* %1120, i32 0, i32 0
  %1122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1121, i32 0, i32 3
  %1123 = load i32, i32* %1122, align 4
  %1124 = load i32, i32* %12, align 4
  %1125 = load %struct.query_info*, %struct.query_info** %22, align 8
  %1126 = call %struct.lruhash_entry* @slabhash_lookup(i32 %1123, i32 %1124, %struct.query_info* %1125, i32 0)
  store %struct.lruhash_entry* %1126, %struct.lruhash_entry** %13, align 8
  %1127 = icmp ne %struct.lruhash_entry* %1126, null
  br i1 %1127, label %1128, label %1270

1128:                                             ; preds = %1113
  %1129 = load %struct.worker*, %struct.worker** %10, align 8
  %1130 = load %struct.respip_client_info*, %struct.respip_client_info** %24, align 8
  %1131 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %1132 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %1131, i32 0, i32 1
  %1133 = load i64, i64* %1132, align 8
  %1134 = inttoptr i64 %1133 to %struct.reply_info*
  %1135 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1136 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1135, i32 0, i32 0
  %1137 = load i32, i32* %1136, align 8
  %1138 = call i64 @sldns_buffer_begin(i32 %1137)
  %1139 = inttoptr i64 %1138 to i8*
  %1140 = bitcast i8* %1139 to i32*
  %1141 = load i32, i32* %1140, align 4
  %1142 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1143 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1142, i32 0, i32 0
  %1144 = load i32, i32* %1143, align 8
  %1145 = call i32 @sldns_buffer_read_u16_at(i32 %1144, i32 2)
  %1146 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1147 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %1148 = call i64 @answer_from_cache(%struct.worker* %1129, %struct.query_info* %14, %struct.respip_client_info* %1130, i32* %19, %struct.ub_packed_rrset_key** %20, %struct.reply_info** %21, %struct.reply_info* %1134, i32 %1141, i32 %1145, %struct.comm_reply* %1146, %struct.query_info* %1147)
  %1149 = icmp ne i64 %1148, 0
  br i1 %1149, label %1150, label %1264

1150:                                             ; preds = %1128
  %1151 = load %struct.worker*, %struct.worker** %10, align 8
  %1152 = getelementptr inbounds %struct.worker, %struct.worker* %1151, i32 0, i32 0
  %1153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1152, i32 0, i32 1
  %1154 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1153, align 8
  %1155 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1154, i32 0, i32 3
  %1156 = load i64, i64* %1155, align 8
  %1157 = icmp ne i64 %1156, 0
  br i1 %1157, label %1166, label %1158

1158:                                             ; preds = %1150
  %1159 = load %struct.worker*, %struct.worker** %10, align 8
  %1160 = getelementptr inbounds %struct.worker, %struct.worker* %1159, i32 0, i32 0
  %1161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1160, i32 0, i32 1
  %1162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1161, align 8
  %1163 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1162, i32 0, i32 2
  %1164 = load i64, i64* %1163, align 8
  %1165 = icmp ne i64 %1164, 0
  br i1 %1165, label %1166, label %1226

1166:                                             ; preds = %1158, %1150
  %1167 = load %struct.worker*, %struct.worker** %10, align 8
  %1168 = getelementptr inbounds %struct.worker, %struct.worker* %1167, i32 0, i32 0
  %1169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1168, i32 0, i32 0
  %1170 = load i64*, i64** %1169, align 8
  %1171 = load i64, i64* %1170, align 8
  %1172 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %1173 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %1172, i32 0, i32 1
  %1174 = load i64, i64* %1173, align 8
  %1175 = inttoptr i64 %1174 to %struct.reply_info*
  %1176 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %1175, i32 0, i32 0
  %1177 = load i64, i64* %1176, align 8
  %1178 = icmp sge i64 %1171, %1177
  br i1 %1178, label %1179, label %1226

1179:                                             ; preds = %1166
  %1180 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %1181 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %1180, i32 0, i32 1
  %1182 = load i64, i64* %1181, align 8
  %1183 = inttoptr i64 %1182 to %struct.reply_info*
  %1184 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %1183, i32 0, i32 1
  %1185 = load i64, i64* %1184, align 8
  %1186 = load %struct.worker*, %struct.worker** %10, align 8
  %1187 = getelementptr inbounds %struct.worker, %struct.worker* %1186, i32 0, i32 0
  %1188 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1187, i32 0, i32 0
  %1189 = load i64*, i64** %1188, align 8
  %1190 = load i64, i64* %1189, align 8
  %1191 = sub nsw i64 %1185, %1190
  store i64 %1191, i64* %32, align 8
  %1192 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %1193 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %1192, i32 0, i32 1
  %1194 = load i64, i64* %1193, align 8
  %1195 = inttoptr i64 %1194 to %struct.reply_info*
  %1196 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %1195, i32 0, i32 1
  %1197 = load i64, i64* %1196, align 8
  %1198 = load %struct.worker*, %struct.worker** %10, align 8
  %1199 = getelementptr inbounds %struct.worker, %struct.worker* %1198, i32 0, i32 0
  %1200 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1199, i32 0, i32 0
  %1201 = load i64*, i64** %1200, align 8
  %1202 = load i64, i64* %1201, align 8
  %1203 = icmp slt i64 %1197, %1202
  br i1 %1203, label %1204, label %1205

1204:                                             ; preds = %1179
  store i64 0, i64* %32, align 8
  br label %1205

1205:                                             ; preds = %1204, %1179
  %1206 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %1207 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %1206, i32 0, i32 0
  %1208 = call i32 @lock_rw_unlock(i32* %1207)
  %1209 = load %struct.worker*, %struct.worker** %10, align 8
  %1210 = load %struct.query_info*, %struct.query_info** %22, align 8
  %1211 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1212 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1211, i32 0, i32 0
  %1213 = load i32, i32* %1212, align 8
  %1214 = call i32 @sldns_buffer_read_u16_at(i32 %1213, i32 2)
  %1215 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1216 = load i64, i64* %32, align 8
  %1217 = call i32 @reply_and_prefetch(%struct.worker* %1209, %struct.query_info* %1210, i32 %1214, %struct.comm_reply* %1215, i64 %1216)
  %1218 = load %struct.reply_info*, %struct.reply_info** %21, align 8
  %1219 = icmp ne %struct.reply_info* %1218, null
  br i1 %1219, label %1225, label %1220

1220:                                             ; preds = %1205
  store i32 0, i32* %18, align 4
  %1221 = load %struct.worker*, %struct.worker** %10, align 8
  %1222 = getelementptr inbounds %struct.worker, %struct.worker* %1221, i32 0, i32 2
  %1223 = load i32, i32* %1222, align 8
  %1224 = call i32 @regional_free_all(i32 %1223)
  br label %1365

1225:                                             ; preds = %1205
  br label %1242

1226:                                             ; preds = %1166, %1158
  %1227 = load %struct.reply_info*, %struct.reply_info** %21, align 8
  %1228 = icmp ne %struct.reply_info* %1227, null
  br i1 %1228, label %1237, label %1229

1229:                                             ; preds = %1226
  %1230 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %1231 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %1230, i32 0, i32 0
  %1232 = call i32 @lock_rw_unlock(i32* %1231)
  %1233 = load %struct.worker*, %struct.worker** %10, align 8
  %1234 = getelementptr inbounds %struct.worker, %struct.worker* %1233, i32 0, i32 2
  %1235 = load i32, i32* %1234, align 8
  %1236 = call i32 @regional_free_all(i32 %1235)
  br label %1364

1237:                                             ; preds = %1226
  %1238 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %1239 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %1238, i32 0, i32 0
  %1240 = call i32 @lock_rw_unlock(i32* %1239)
  br label %1241

1241:                                             ; preds = %1237
  br label %1242

1242:                                             ; preds = %1241, %1225
  %1243 = call i32 @memset(%struct.query_info* %23, i32 0, i32 80)
  %1244 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %20, align 8
  %1245 = getelementptr inbounds %struct.query_info, %struct.query_info* %23, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.query_info, %struct.query_info* %23, i32 0, i32 7
  %1247 = call i32 @get_cname_target(%struct.ub_packed_rrset_key* %1244, i64* %1245, i64* %1246)
  %1248 = getelementptr inbounds %struct.query_info, %struct.query_info* %23, i32 0, i32 6
  %1249 = load i64, i64* %1248, align 8
  %1250 = icmp ne i64 %1249, 0
  br i1 %1250, label %1257, label %1251

1251:                                             ; preds = %1242
  %1252 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %1253 = load %struct.worker*, %struct.worker** %10, align 8
  %1254 = getelementptr inbounds %struct.worker, %struct.worker* %1253, i32 0, i32 2
  %1255 = load i32, i32* %1254, align 8
  %1256 = call i32 @regional_free_all(i32 %1255)
  store i32 0, i32* %5, align 4
  br label %1434

1257:                                             ; preds = %1242
  %1258 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 0
  %1259 = load i64, i64* %1258, align 8
  %1260 = getelementptr inbounds %struct.query_info, %struct.query_info* %23, i32 0, i32 0
  store i64 %1259, i64* %1260, align 8
  %1261 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 1
  %1262 = load i64, i64* %1261, align 8
  %1263 = getelementptr inbounds %struct.query_info, %struct.query_info* %23, i32 0, i32 1
  store i64 %1262, i64* %1263, align 8
  store %struct.query_info* %23, %struct.query_info** %22, align 8
  br label %1106

1264:                                             ; preds = %1128
  %1265 = load i64, i64* @VERB_ALGO, align 8
  %1266 = call i32 (i64, i8*, ...) @verbose(i64 %1265, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0))
  %1267 = load %struct.lruhash_entry*, %struct.lruhash_entry** %13, align 8
  %1268 = getelementptr inbounds %struct.lruhash_entry, %struct.lruhash_entry* %1267, i32 0, i32 0
  %1269 = call i32 @lock_rw_unlock(i32* %1268)
  br label %1270

1270:                                             ; preds = %1264, %1113
  %1271 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1272 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1271, i32 0, i32 0
  %1273 = load i32, i32* %1272, align 8
  %1274 = call i64 @sldns_buffer_begin(i32 %1273)
  %1275 = call i64 @LDNS_RD_WIRE(i64 %1274)
  %1276 = icmp ne i64 %1275, 0
  br i1 %1276, label %1302, label %1277

1277:                                             ; preds = %1270
  %1278 = load %struct.worker*, %struct.worker** %10, align 8
  %1279 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1280 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1279, i32 0, i32 0
  %1281 = load i32, i32* %1280, align 8
  %1282 = call i64 @sldns_buffer_begin(i32 %1281)
  %1283 = inttoptr i64 %1282 to i8*
  %1284 = bitcast i8* %1283 to i32*
  %1285 = load i32, i32* %1284, align 4
  %1286 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1287 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1286, i32 0, i32 0
  %1288 = load i32, i32* %1287, align 8
  %1289 = call i32 @sldns_buffer_read_u16_at(i32 %1288, i32 2)
  %1290 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1291 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %1292 = call i64 @answer_norec_from_cache(%struct.worker* %1278, %struct.query_info* %14, i32 %1285, i32 %1289, %struct.comm_reply* %1290, %struct.query_info* %1291)
  %1293 = icmp ne i64 %1292, 0
  br i1 %1293, label %1294, label %1299

1294:                                             ; preds = %1277
  %1295 = load %struct.worker*, %struct.worker** %10, align 8
  %1296 = getelementptr inbounds %struct.worker, %struct.worker* %1295, i32 0, i32 2
  %1297 = load i32, i32* %1296, align 8
  %1298 = call i32 @regional_free_all(i32 %1297)
  br label %1364

1299:                                             ; preds = %1277
  %1300 = load i64, i64* @VERB_ALGO, align 8
  %1301 = call i32 (i64, i8*, ...) @verbose(i64 %1300, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.18, i64 0, i64 0))
  br label %1302

1302:                                             ; preds = %1299, %1270
  br label %1303

1303:                                             ; preds = %1302, %1106
  %1304 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1305 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1304, i32 0, i32 0
  %1306 = load i32, i32* %1305, align 8
  %1307 = call i32 @sldns_buffer_rewind(i32 %1306)
  %1308 = load %struct.worker*, %struct.worker** %10, align 8
  %1309 = getelementptr inbounds %struct.worker, %struct.worker* %1308, i32 0, i32 3
  %1310 = load %struct.worker*, %struct.worker** %10, align 8
  %1311 = call i32 @server_stats_querymiss(%struct.TYPE_27__* %1309, %struct.worker* %1310)
  %1312 = load i64, i64* @verbosity, align 8
  %1313 = load i64, i64* @VERB_CLIENT, align 8
  %1314 = icmp sge i64 %1312, %1313
  br i1 %1314, label %1315, label %1338

1315:                                             ; preds = %1303
  %1316 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1317 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1316, i32 0, i32 1
  %1318 = load i32, i32* %1317, align 4
  %1319 = load i32, i32* @comm_udp, align 4
  %1320 = icmp eq i32 %1318, %1319
  br i1 %1320, label %1321, label %1329

1321:                                             ; preds = %1315
  %1322 = load i64, i64* @VERB_CLIENT, align 8
  %1323 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1324 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %1323, i32 0, i32 2
  %1325 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1326 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %1325, i32 0, i32 1
  %1327 = load i32, i32* %1326, align 4
  %1328 = call i32 @log_addr(i64 %1322, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), i32* %1324, i32 %1327)
  br label %1337

1329:                                             ; preds = %1315
  %1330 = load i64, i64* @VERB_CLIENT, align 8
  %1331 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1332 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %1331, i32 0, i32 2
  %1333 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1334 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %1333, i32 0, i32 1
  %1335 = load i32, i32* %1334, align 4
  %1336 = call i32 @log_addr(i64 %1330, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32* %1332, i32 %1335)
  br label %1337

1337:                                             ; preds = %1329, %1321
  br label %1338

1338:                                             ; preds = %1337, %1303
  %1339 = load %struct.worker*, %struct.worker** %10, align 8
  %1340 = getelementptr inbounds %struct.worker, %struct.worker* %1339, i32 0, i32 0
  %1341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1340, i32 0, i32 2
  %1342 = load i32, i32* %1341, align 8
  %1343 = load %struct.respip_client_info*, %struct.respip_client_info** %24, align 8
  %1344 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1345 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1344, i32 0, i32 0
  %1346 = load i32, i32* %1345, align 8
  %1347 = call i32 @sldns_buffer_read_u16_at(i32 %1346, i32 2)
  %1348 = bitcast %struct.edns_data* %15 to %struct.query_info*
  %1349 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1350 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1351 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1350, i32 0, i32 0
  %1352 = load i32, i32* %1351, align 8
  %1353 = call i64 @sldns_buffer_begin(i32 %1352)
  %1354 = inttoptr i64 %1353 to i8*
  %1355 = bitcast i8* %1354 to i32*
  %1356 = load i32, i32* %1355, align 4
  %1357 = call i32 @mesh_new_client(i32 %1342, %struct.query_info* %14, %struct.respip_client_info* %1343, i32 %1347, %struct.query_info* %1348, %struct.comm_reply* %1349, i32 %1356)
  %1358 = load %struct.worker*, %struct.worker** %10, align 8
  %1359 = getelementptr inbounds %struct.worker, %struct.worker* %1358, i32 0, i32 2
  %1360 = load i32, i32* %1359, align 8
  %1361 = call i32 @regional_free_all(i32 %1360)
  %1362 = load %struct.worker*, %struct.worker** %10, align 8
  %1363 = call i32 @worker_mem_report(%struct.worker* %1362, i32* null)
  store i32 0, i32* %5, align 4
  br label %1434

1364:                                             ; preds = %1294, %1229, %962, %931, %910, %846, %768, %749, %667, %617, %509, %392, %381, %293, %191, %67
  store i32 1, i32* %18, align 4
  br label %1365

1365:                                             ; preds = %1364, %1220
  %1366 = load i32, i32* %19, align 4
  %1367 = icmp ne i32 %1366, 0
  br i1 %1367, label %1368, label %1371

1368:                                             ; preds = %1365
  %1369 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1370 = call i32 @comm_point_drop_reply(%struct.comm_reply* %1369)
  store i32 0, i32* %5, align 4
  br label %1434

1371:                                             ; preds = %1365
  %1372 = load %struct.worker*, %struct.worker** %10, align 8
  %1373 = getelementptr inbounds %struct.worker, %struct.worker* %1372, i32 0, i32 0
  %1374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %1373, i32 0, i32 1
  %1375 = load %struct.TYPE_23__*, %struct.TYPE_23__** %1374, align 8
  %1376 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %1375, i32 0, i32 1
  %1377 = load i64, i64* %1376, align 8
  %1378 = icmp ne i64 %1377, 0
  br i1 %1378, label %1379, label %1432

1379:                                             ; preds = %1371
  %1380 = bitcast %struct.timeval* %33 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %1380, i8 0, i64 8, i1 false)
  %1381 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 5
  %1382 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1381, align 8
  %1383 = icmp ne %struct.TYPE_25__* %1382, null
  br i1 %1383, label %1384, label %1419

1384:                                             ; preds = %1379
  %1385 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 5
  %1386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1385, align 8
  %1387 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1386, i32 0, i32 0
  %1388 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %1387, align 8
  %1389 = icmp ne %struct.ub_packed_rrset_key* %1388, null
  br i1 %1389, label %1390, label %1419

1390:                                             ; preds = %1384
  %1391 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 5
  %1392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1391, align 8
  %1393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1392, i32 0, i32 0
  %1394 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %1393, align 8
  %1395 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %1394, i32 0, i32 0
  %1396 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1395, i32 0, i32 1
  %1397 = load i64, i64* %1396, align 8
  %1398 = icmp ne i64 %1397, 0
  br i1 %1398, label %1399, label %1419

1399:                                             ; preds = %1390
  %1400 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 5
  %1401 = load %struct.TYPE_25__*, %struct.TYPE_25__** %1400, align 8
  %1402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %1401, i32 0, i32 0
  %1403 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %1402, align 8
  %1404 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %1403, i32 0, i32 0
  %1405 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %1404, i32 0, i32 1
  %1406 = load i64, i64* %1405, align 8
  %1407 = getelementptr inbounds %struct.query_info, %struct.query_info* %14, i32 0, i32 6
  store i64 %1406, i64* %1407, align 8
  %1408 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1409 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %1408, i32 0, i32 2
  %1410 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1411 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %1410, i32 0, i32 1
  %1412 = load i32, i32* %1411, align 4
  %1413 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1414 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1413, i32 0, i32 0
  %1415 = load i32, i32* %1414, align 8
  %1416 = bitcast %struct.timeval* %33 to i64*
  %1417 = load i64, i64* %1416, align 4
  %1418 = call i32 @log_reply_info(i32 0, %struct.query_info* %14, i32* %1409, i32 %1412, i64 %1417, i32 1, i32 %1415)
  br label %1431

1419:                                             ; preds = %1390, %1384, %1379
  %1420 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1421 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %1420, i32 0, i32 2
  %1422 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %1423 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %1422, i32 0, i32 1
  %1424 = load i32, i32* %1423, align 4
  %1425 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %1426 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %1425, i32 0, i32 0
  %1427 = load i32, i32* %1426, align 8
  %1428 = bitcast %struct.timeval* %33 to i64*
  %1429 = load i64, i64* %1428, align 4
  %1430 = call i32 @log_reply_info(i32 0, %struct.query_info* %14, i32* %1421, i32 %1424, i64 %1429, i32 1, i32 %1427)
  br label %1431

1431:                                             ; preds = %1419, %1399
  br label %1432

1432:                                             ; preds = %1431, %1371
  %1433 = load i32, i32* %18, align 4
  store i32 %1433, i32* %5, align 4
  br label %1434

1434:                                             ; preds = %1432, %1368, %1338, %1251, %1027, %932, %886, %843, %341, %188, %158, %101, %89, %68, %40
  %1435 = load i32, i32* %5, align 4
  ret i32 %1435
}

declare dso_local i32 @memset(%struct.query_info*, i32, i32) #1

declare dso_local i32 @verbose(i64, i8*, ...) #1

declare dso_local %struct.acl_addr* @acl_addr_lookup(i32, i32*, i32) #1

declare dso_local i32 @acl_get_control(%struct.acl_addr*) #1

declare dso_local i32 @deny_refuse_all(%struct.comm_point*, i32, %struct.worker*, %struct.comm_reply*) #1

declare dso_local i32 @worker_check_request(i32, %struct.worker*) #1

declare dso_local i32 @log_addr(i64, i8*, i32*, i32) #1

declare dso_local i32 @LDNS_QR_SET(i64) #1

declare dso_local i64 @sldns_buffer_begin(i32) #1

declare dso_local i32 @LDNS_RCODE_SET(i64, i32) #1

declare dso_local i32 @comm_point_drop_reply(%struct.comm_reply*) #1

declare dso_local i32 @infra_ip_ratelimit_inc(i32, %struct.comm_reply*, i64, i32) #1

declare dso_local i64 @ub_random_max(i32, i64) #1

declare dso_local i32 @addr_to_str(i32*, i32, i8*, i32) #1

declare dso_local i32 @query_info_parse(%struct.query_info*, i32) #1

declare dso_local i32 @worker_err_ratelimit(%struct.worker*, i32) #1

declare dso_local i32 @sldns_buffer_rewind(i32) #1

declare dso_local i32 @server_stats_insrcode(%struct.TYPE_27__*, i32) #1

declare dso_local i32 @log_query_in(i8*, i64, i64, i64) #1

declare dso_local i32 @parse_edns_from_pkt(i32, %struct.query_info*, i32) #1

declare dso_local i32 @error_encode(i32, i32, %struct.query_info*, i32, i32, %struct.query_info*) #1

declare dso_local i32 @sldns_buffer_read_u16_at(i32, i32) #1

declare dso_local i32 @regional_free_all(i32) #1

declare dso_local i64 @sldns_buffer_capacity(i32) #1

declare dso_local i64 @sldns_buffer_limit(i32) #1

declare dso_local i64 @calc_edns_field_size(%struct.query_info*) #1

declare dso_local i32 @attach_edns_record(i32, %struct.query_info*) #1

declare dso_local %struct.edns_option* @edns_opt_list_find(i32*, i32) #1

declare dso_local i32 @LDNS_TC_SET(i64) #1

declare dso_local i32 @sldns_buffer_set_position(i32, i32) #1

declare dso_local i32 @sldns_buffer_write_at(i32, i32, i64*, i32) #1

declare dso_local i32 @sldns_buffer_flip(i32) #1

declare dso_local i32 @server_stats_insquery(%struct.TYPE_27__*, %struct.comm_point*, i64, i64, %struct.query_info*, %struct.comm_reply*) #1

declare dso_local i64 @answer_chaos(%struct.worker*, %struct.query_info*, %struct.query_info*, %struct.comm_reply*, i32) #1

declare dso_local i64 @LDNS_OPCODE_WIRE(i64) #1

declare dso_local i32 @answer_notify(%struct.worker*, %struct.query_info*, %struct.query_info*, i32, %struct.comm_reply*) #1

declare dso_local i64 @local_zones_answer(i32, %struct.TYPE_17__*, %struct.query_info*, %struct.query_info*, i32, i32, %struct.comm_reply*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @auth_zones_answer(i64, %struct.TYPE_17__*, %struct.query_info*, %struct.query_info*, %struct.comm_reply*, i32, i32) #1

declare dso_local i64 @LDNS_RD_WIRE(i64) #1

declare dso_local i32 @LDNS_RA_SET(i64) #1

declare dso_local i32 @deny_refuse_non_local(%struct.comm_point*, i32, %struct.worker*, %struct.comm_reply*) #1

declare dso_local i32 @LDNS_RD_SET(i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @edns_bypass_cache_stage(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @query_info_hash(%struct.query_info*, i32) #1

declare dso_local %struct.lruhash_entry* @slabhash_lookup(i32, i32, %struct.query_info*, i32) #1

declare dso_local i64 @answer_from_cache(%struct.worker*, %struct.query_info*, %struct.respip_client_info*, i32*, %struct.ub_packed_rrset_key**, %struct.reply_info**, %struct.reply_info*, i32, i32, %struct.comm_reply*, %struct.query_info*) #1

declare dso_local i32 @lock_rw_unlock(i32*) #1

declare dso_local i32 @reply_and_prefetch(%struct.worker*, %struct.query_info*, i32, %struct.comm_reply*, i64) #1

declare dso_local i32 @get_cname_target(%struct.ub_packed_rrset_key*, i64*, i64*) #1

declare dso_local i64 @answer_norec_from_cache(%struct.worker*, %struct.query_info*, i32, i32, %struct.comm_reply*, %struct.query_info*) #1

declare dso_local i32 @server_stats_querymiss(%struct.TYPE_27__*, %struct.worker*) #1

declare dso_local i32 @mesh_new_client(i32, %struct.query_info*, %struct.respip_client_info*, i32, %struct.query_info*, %struct.comm_reply*, i32) #1

declare dso_local i32 @worker_mem_report(%struct.worker*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @log_reply_info(i32, %struct.query_info*, i32*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
