; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processInitRequest.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processInitRequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, i32, i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_16__, i32, i64, i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_15__*, i32, i64*, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_16__ = type { i64, i32 }
%struct.iter_qstate = type { i64, i64, i32, %struct.delegpt*, %struct.TYPE_14__, i32, i64, i32, %struct.dns_msg*, i64 }
%struct.delegpt = type { i64, i32* }
%struct.TYPE_14__ = type { i64, i64, i32, i32* }
%struct.dns_msg = type { %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i64, i64, i32 }
%struct.iter_env = type { i64, i32, i32 }

@VERB_DETAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"resolving\00", align 1
@MAX_RESTART_COUNT = common dso_local global i64 0, align 8
@VERB_QUERY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [66 x i8] c"request has exceeded the maximum number of query restarts with %d\00", align 1
@.str.2 = private unnamed_addr constant [68 x i8] c"request has exceeded the maximum number restarts (eg. indirections)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"stop at\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [35 x i8] c"request has dependency depth of %d\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"request has exceeded the maximum dependency depth with depth of %d\00", align 1
@.str.6 = private unnamed_addr constant [84 x i8] c"request has exceeded the maximum dependency depth (eg. nameserver lookup recursion)\00", align 1
@LDNS_RR_CLASS_ANY = common dso_local global i64 0, align 8
@COLLECT_CLASS_STATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"no-cache set, going to the network\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"cache blacklisted, going to the network\00", align 1
@sec_status_unchecked = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"msg from cache lookup\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"msg ttl is %d, prefetch ttl %d\00", align 1
@RESPONSE_TYPE_CNAME = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [36 x i8] c"returning CNAME response from cache\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"failed to prepend CNAME components, malloc failure\00", align 1
@INIT_MINIMISE_STATE = common dso_local global i32 0, align 4
@INIT_REQUEST_STATE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"SERVFAIL in cache\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"returning answer from cache.\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"alloc failure for forward dp\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"malloc failure for forward zone\00", align 1
@DONOT_MINIMISE_STATE = common dso_local global i32 0, align 4
@QUERYTARGETS_STATE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [43 x i8] c"internal or malloc fail: no dp for refetch\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"malloc failure, for delegation info\00", align 1
@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@INIT_REQUEST_2_STATE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [28 x i8] c"internal error: no hints dp\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"no hints for this class\00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c"out of memory in safety belt\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"malloc failure, in safety belt\00", align 1
@LDNS_RCODE_REFUSED = common dso_local global i64 0, align 8
@.str.23 = private unnamed_addr constant [47 x i8] c"ratelimit allowed through for delegation point\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [41 x i8] c"ratelimit exceeded with delegation point\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"query was ratelimited\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"for zone\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"cache has stub or fwd but no addresses, fallback to config\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"out of memory in stub/fwd fallback\00", align 1
@.str.29 = private unnamed_addr constant [39 x i8] c"malloc failure, for fallback to config\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"useless dp but cannot go up, servfail\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"no useful nameservers, and cannot go up\00", align 1
@.str.32 = private unnamed_addr constant [65 x i8] c"Cache has root NS but no addresses. Fallback to the safety belt.\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"malloc failure, in safety belt, for root\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"cache delegation was useless:\00", align 1
@.str.35 = private unnamed_addr constant [33 x i8] c"cache delegation returns delegpt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32)* @processInitRequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processInitRequest(%struct.module_qstate* %0, %struct.iter_qstate* %1, %struct.iter_env* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.iter_qstate*, align 8
  %8 = alloca %struct.iter_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dns_msg*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.delegpt*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %7, align 8
  store %struct.iter_env* %2, %struct.iter_env** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dns_msg* null, %struct.dns_msg** %12, align 8
  %18 = load i32, i32* @VERB_DETAIL, align 4
  %19 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %20 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %19, i32 0, i32 6
  %21 = call i32 @log_query_info(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), %struct.TYPE_16__* %20)
  %22 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %23 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MAX_RESTART_COUNT, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %4
  %28 = load i64, i64* @VERB_QUERY, align 8
  %29 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %30 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 (i64, i8*, ...) @verbose(i64 %28, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %31)
  %33 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %34 = call i32 @errinf(%struct.module_qstate* %33, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %36 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %35, i32 0, i32 4
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %27
  %41 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %42 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %43 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %42, i32 0, i32 4
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @errinf_dname(%struct.module_qstate* %41, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %45)
  br label %47

47:                                               ; preds = %40, %27
  %48 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %49 = load i32, i32* %9, align 4
  %50 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %51 = call i32 @error_response(%struct.module_qstate* %48, i32 %49, i64 %50)
  store i32 %51, i32* %5, align 4
  br label %980

52:                                               ; preds = %4
  %53 = load i64, i64* @VERB_ALGO, align 8
  %54 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %55 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i64, i8*, ...) @verbose(i64 %53, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i64 %56)
  %58 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %59 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %62 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sgt i64 %60, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %52
  %66 = load i64, i64* @VERB_QUERY, align 8
  %67 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %68 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 (i64, i8*, ...) @verbose(i64 %66, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.5, i64 0, i64 0), i64 %69)
  %71 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %72 = call i32 @errinf(%struct.module_qstate* %71, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.6, i64 0, i64 0))
  %73 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %76 = call i32 @error_response(%struct.module_qstate* %73, i32 %74, i64 %75)
  store i32 %76, i32* %5, align 4
  br label %980

77:                                               ; preds = %52
  %78 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %79 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %78, i32 0, i32 6
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @LDNS_RR_CLASS_ANY, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %86 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %85, i32 0, i32 4
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  store i64 0, i64* %87, align 8
  %88 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %89 = load i32, i32* @COLLECT_CLASS_STATE, align 4
  %90 = call i32 @next_state(%struct.iter_qstate* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  br label %980

91:                                               ; preds = %77
  %92 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %93 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %92, i32 0, i32 6
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %124

96:                                               ; preds = %91
  %97 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %98 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %97, i32 0, i32 3
  %99 = load %struct.delegpt*, %struct.delegpt** %98, align 8
  %100 = icmp ne %struct.delegpt* %99, null
  br i1 %100, label %101, label %124

101:                                              ; preds = %96
  %102 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %103 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %102, i32 0, i32 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %103, align 8
  %105 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %106 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %105, i32 0, i32 3
  %107 = load %struct.delegpt*, %struct.delegpt** %106, align 8
  %108 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %111 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %110, i32 0, i32 3
  %112 = load %struct.delegpt*, %struct.delegpt** %111, align 8
  %113 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %116 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %115, i32 0, i32 4
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i64 @can_have_last_resort(%struct.TYPE_18__* %104, i32* %109, i64 %114, i64 %118, %struct.delegpt** null)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %101
  %122 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %123 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %122, i32 0, i32 6
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %101, %96, %91
  %125 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %126 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %127 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %126, i32 0, i32 4
  %128 = call i64 @iter_stub_fwd_no_cache(%struct.module_qstate* %125, %struct.TYPE_14__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %124
  %131 = load i64, i64* @VERB_ALGO, align 8
  %132 = call i32 (i64, i8*, ...) @verbose(i64 %131, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %133 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %134 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %133, i32 0, i32 0
  store i32 1, i32* %134, align 8
  %135 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %136 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %135, i32 0, i32 1
  store i32 1, i32* %136, align 4
  store %struct.dns_msg* null, %struct.dns_msg** %12, align 8
  br label %255

137:                                              ; preds = %124
  %138 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %139 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %138, i32 0, i32 10
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i64, i64* @VERB_ALGO, align 8
  %144 = call i32 (i64, i8*, ...) @verbose(i64 %143, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0))
  store %struct.dns_msg* null, %struct.dns_msg** %12, align 8
  br label %254

145:                                              ; preds = %137
  %146 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %147 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %253, label %150

150:                                              ; preds = %145
  %151 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %152 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %151, i32 0, i32 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %152, align 8
  %154 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %155 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  %157 = load i32*, i32** %156, align 8
  %158 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %159 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %163 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %162, i32 0, i32 4
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %167 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %171 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %170, i32 0, i32 5
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %174 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %177 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %176, i32 0, i32 4
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 9
  %180 = load i32, i32* %179, align 8
  %181 = call %struct.dns_msg* @dns_cache_lookup(%struct.TYPE_18__* %153, i32* %157, i64 %161, i32 %165, i64 %169, i32 %172, i32 %175, i32 %180, i32 0)
  store %struct.dns_msg* %181, %struct.dns_msg** %12, align 8
  %182 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %183 = icmp ne %struct.dns_msg* %182, null
  br i1 %183, label %232, label %184

184:                                              ; preds = %150
  %185 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %186 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %185, i32 0, i32 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 8
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %232

191:                                              ; preds = %184
  %192 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %193 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %192, i32 0, i32 4
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %193, align 8
  %195 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %196 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %195, i32 0, i32 4
  %197 = call i64 @iter_qname_indicates_dnssec(%struct.TYPE_18__* %194, %struct.TYPE_14__* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %232

199:                                              ; preds = %191
  %200 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %201 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %200, i32 0, i32 4
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 8
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %206 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %205, i32 0, i32 4
  %207 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %208 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %211 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %210, i32 0, i32 4
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 7
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %216 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %215, i32 0, i32 4
  %217 = load %struct.TYPE_18__*, %struct.TYPE_18__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %221 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %220, i32 0, i32 4
  %222 = load %struct.TYPE_18__*, %struct.TYPE_18__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %222, i32 0, i32 3
  %224 = load i64*, i64** %223, align 8
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %227 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %226, i32 0, i32 4
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  %230 = load %struct.TYPE_15__*, %struct.TYPE_15__** %229, align 8
  %231 = call %struct.dns_msg* @val_neg_getmsg(i64 %204, %struct.TYPE_14__* %206, i32 %209, i32 %214, i32 %219, i64 %225, i32 1, i32* null, %struct.TYPE_15__* %230)
  store %struct.dns_msg* %231, %struct.dns_msg** %12, align 8
  br label %232

232:                                              ; preds = %199, %191, %184, %150
  %233 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %234 = icmp ne %struct.dns_msg* %233, null
  br i1 %234, label %235, label %252

235:                                              ; preds = %232
  %236 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %237 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %236, i32 0, i32 6
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %241 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %240, i32 0, i32 4
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = call i64 @query_dname_compare(i32 %239, i32* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %235
  %247 = load i32, i32* @sec_status_unchecked, align 4
  %248 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %249 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %248, i32 0, i32 0
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %249, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 3
  store i32 %247, i32* %251, align 8
  br label %252

252:                                              ; preds = %246, %235, %232
  br label %253

253:                                              ; preds = %252, %145
  br label %254

254:                                              ; preds = %253, %142
  br label %255

255:                                              ; preds = %254, %130
  %256 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %257 = icmp ne %struct.dns_msg* %256, null
  br i1 %257, label %258, label %379

258:                                              ; preds = %255
  %259 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %260 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %261 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %260, i32 0, i32 4
  %262 = call i32 @response_type_from_cache(%struct.dns_msg* %259, %struct.TYPE_14__* %261)
  store i32 %262, i32* %13, align 4
  %263 = load i64, i64* @verbosity, align 8
  %264 = load i64, i64* @VERB_ALGO, align 8
  %265 = icmp sge i64 %263, %264
  br i1 %265, label %266, label %287

266:                                              ; preds = %258
  %267 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %268 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %267, i32 0, i32 1
  %269 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %270 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %269, i32 0, i32 0
  %271 = load %struct.TYPE_17__*, %struct.TYPE_17__** %270, align 8
  %272 = call i32 @log_dns_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32* %268, %struct.TYPE_17__* %271)
  %273 = load i64, i64* @VERB_ALGO, align 8
  %274 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %275 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %274, i32 0, i32 0
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = trunc i64 %278 to i32
  %280 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %281 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %280, i32 0, i32 0
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = trunc i64 %284 to i32
  %286 = call i32 (i64, i8*, ...) @verbose(i64 %273, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %279, i32 %285)
  br label %287

287:                                              ; preds = %266, %258
  %288 = load i32, i32* %13, align 4
  %289 = load i32, i32* @RESPONSE_TYPE_CNAME, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %347

291:                                              ; preds = %287
  store i32* null, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %292 = load i64, i64* @VERB_ALGO, align 8
  %293 = call i32 (i64, i8*, ...) @verbose(i64 %292, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i64 0, i64 0))
  %294 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %295 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %296 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %297 = call i32 @handle_cname_response(%struct.module_qstate* %294, %struct.iter_qstate* %295, %struct.dns_msg* %296, i32** %14, i64* %15)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %306, label %299

299:                                              ; preds = %291
  %300 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %301 = call i32 @errinf(%struct.module_qstate* %300, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.12, i64 0, i64 0))
  %302 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %303 = load i32, i32* %9, align 4
  %304 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %305 = call i32 @error_response(%struct.module_qstate* %302, i32 %303, i64 %304)
  store i32 %305, i32* %5, align 4
  br label %980

306:                                              ; preds = %291
  %307 = load i32*, i32** %14, align 8
  %308 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %309 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 3
  store i32* %307, i32** %310, align 8
  %311 = load i64, i64* %15, align 8
  %312 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %313 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %312, i32 0, i32 4
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 0
  store i64 %311, i64* %314, align 8
  %315 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %316 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %315, i32 0, i32 3
  store %struct.delegpt* null, %struct.delegpt** %316, align 8
  %317 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %318 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %317, i32 0, i32 6
  store i64 0, i64* %318, align 8
  %319 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %320 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = add nsw i64 %321, 1
  store i64 %322, i64* %320, align 8
  %323 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %324 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %323, i32 0, i32 9
  store i64 0, i64* %324, align 8
  %325 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %326 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %325, i32 0, i32 9
  %327 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %328 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %327, i32 0, i32 3
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @sock_list_insert(i64* %326, i32* null, i32 0, i32 %329)
  %331 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %332 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %331, i32 0, i32 4
  %333 = load %struct.TYPE_18__*, %struct.TYPE_18__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %333, i32 0, i32 1
  %335 = load %struct.TYPE_15__*, %struct.TYPE_15__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %335, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %306
  %340 = load i32, i32* @INIT_MINIMISE_STATE, align 4
  %341 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %342 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %341, i32 0, i32 7
  store i32 %340, i32* %342, align 8
  br label %343

343:                                              ; preds = %339, %306
  %344 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %345 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %346 = call i32 @next_state(%struct.iter_qstate* %344, i32 %345)
  store i32 %346, i32* %5, align 4
  br label %980

347:                                              ; preds = %287
  %348 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %349 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %348, i32 0, i32 9
  %350 = load i64, i64* %349, align 8
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %359

352:                                              ; preds = %347
  %353 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %354 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %353, i32 0, i32 9
  %355 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %356 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = call i32 @sock_list_insert(i64* %354, i32* null, i32 0, i32 %357)
  br label %359

359:                                              ; preds = %352, %347
  %360 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %361 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %360, i32 0, i32 0
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %361, align 8
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = call i64 @FLAGS_GET_RCODE(i32 %364)
  %366 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %371

368:                                              ; preds = %359
  %369 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %370 = call i32 @errinf(%struct.module_qstate* %369, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %371

371:                                              ; preds = %368, %359
  %372 = load i64, i64* @VERB_ALGO, align 8
  %373 = call i32 (i64, i8*, ...) @verbose(i64 %372, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0))
  %374 = load %struct.dns_msg*, %struct.dns_msg** %12, align 8
  %375 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %376 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %375, i32 0, i32 8
  store %struct.dns_msg* %374, %struct.dns_msg** %376, align 8
  %377 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %378 = call i32 @final_state(%struct.iter_qstate* %377)
  store i32 %378, i32* %5, align 4
  br label %980

379:                                              ; preds = %255
  %380 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %381 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %382 = call i64 @forward_request(%struct.module_qstate* %380, %struct.iter_qstate* %381)
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %406

384:                                              ; preds = %379
  %385 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %386 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %385, i32 0, i32 3
  %387 = load %struct.delegpt*, %struct.delegpt** %386, align 8
  %388 = icmp ne %struct.delegpt* %387, null
  br i1 %388, label %397, label %389

389:                                              ; preds = %384
  %390 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i64 0, i64 0))
  %391 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %392 = call i32 @errinf(%struct.module_qstate* %391, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i64 0, i64 0))
  %393 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %394 = load i32, i32* %9, align 4
  %395 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %396 = call i32 @error_response(%struct.module_qstate* %393, i32 %394, i64 %395)
  store i32 %396, i32* %5, align 4
  br label %980

397:                                              ; preds = %384
  %398 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %399 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %398, i32 0, i32 6
  store i64 0, i64* %399, align 8
  %400 = load i32, i32* @DONOT_MINIMISE_STATE, align 4
  %401 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %402 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %401, i32 0, i32 7
  store i32 %400, i32* %402, align 8
  %403 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %404 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %405 = call i32 @next_state(%struct.iter_qstate* %403, i32 %404)
  store i32 %405, i32* %5, align 4
  br label %980

406:                                              ; preds = %379
  %407 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %408 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %407, i32 0, i32 6
  %409 = load i64, i64* %408, align 8
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %435

411:                                              ; preds = %406
  %412 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %413 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %412, i32 0, i32 3
  %414 = load %struct.delegpt*, %struct.delegpt** %413, align 8
  %415 = icmp ne %struct.delegpt* %414, null
  br i1 %415, label %424, label %416

416:                                              ; preds = %411
  %417 = call i32 @log_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i64 0, i64 0))
  %418 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %419 = call i32 @errinf(%struct.module_qstate* %418, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  %420 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %421 = load i32, i32* %9, align 4
  %422 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %423 = call i32 @error_response(%struct.module_qstate* %420, i32 %421, i64 %422)
  store i32 %423, i32* %5, align 4
  br label %980

424:                                              ; preds = %411
  %425 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %426 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %425, i32 0, i32 3
  %427 = load %struct.delegpt*, %struct.delegpt** %426, align 8
  %428 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %427, i32 0, i32 1
  %429 = load i32*, i32** %428, align 8
  store i32* %429, i32** %10, align 8
  %430 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %431 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %430, i32 0, i32 3
  %432 = load %struct.delegpt*, %struct.delegpt** %431, align 8
  %433 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  store i64 %434, i64* %11, align 8
  br label %444

435:                                              ; preds = %406
  %436 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %437 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %436, i32 0, i32 4
  %438 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %437, i32 0, i32 3
  %439 = load i32*, i32** %438, align 8
  store i32* %439, i32** %10, align 8
  %440 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %441 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %440, i32 0, i32 4
  %442 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %441, i32 0, i32 0
  %443 = load i64, i64* %442, align 8
  store i64 %443, i64* %11, align 8
  br label %444

444:                                              ; preds = %435, %424
  %445 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %446 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %445, i32 0, i32 4
  %447 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %450 = icmp eq i32 %448, %449
  br i1 %450, label %480, label %451

451:                                              ; preds = %444
  %452 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %453 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %452, i32 0, i32 6
  %454 = load i64, i64* %453, align 8
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %480, label %456

456:                                              ; preds = %451
  %457 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %458 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %457, i32 0, i32 4
  %459 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %458, i32 0, i32 2
  %460 = load i32, i32* %459, align 8
  %461 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %462 = icmp eq i32 %460, %461
  br i1 %462, label %463, label %505

463:                                              ; preds = %456
  %464 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %465 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %464, i32 0, i32 8
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %505

468:                                              ; preds = %463
  %469 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %470 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %469, i32 0, i32 4
  %471 = load %struct.TYPE_18__*, %struct.TYPE_18__** %470, align 8
  %472 = load i32*, i32** %10, align 8
  %473 = load i64, i64* %11, align 8
  %474 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %475 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %474, i32 0, i32 4
  %476 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %475, i32 0, i32 1
  %477 = load i64, i64* %476, align 8
  %478 = call i64 @can_have_last_resort(%struct.TYPE_18__* %471, i32* %472, i64 %473, i64 %477, %struct.delegpt** null)
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %505

480:                                              ; preds = %468, %451, %444
  %481 = load i32*, i32** %10, align 8
  %482 = call i64 @dname_is_root(i32* %481)
  %483 = icmp ne i64 %482, 0
  br i1 %483, label %484, label %502

484:                                              ; preds = %480
  %485 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %486 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %485, i32 0, i32 6
  %487 = load i64, i64* %486, align 8
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %501, label %489

489:                                              ; preds = %484
  %490 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %491 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %490, i32 0, i32 4
  %492 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %491, i32 0, i32 2
  %493 = load i32, i32* %492, align 8
  %494 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %495 = icmp eq i32 %493, %494
  br i1 %495, label %496, label %502

496:                                              ; preds = %489
  %497 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %498 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %497, i32 0, i32 8
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %502

501:                                              ; preds = %496, %484
  store i32* null, i32** %10, align 8
  br label %504

502:                                              ; preds = %496, %489, %480
  %503 = call i32 @dname_remove_label(i32** %10, i64* %11)
  br label %504

504:                                              ; preds = %502, %501
  br label %505

505:                                              ; preds = %504, %468, %463, %456
  br label %506

506:                                              ; preds = %505, %968
  %507 = load i32*, i32** %10, align 8
  %508 = icmp ne i32* %507, null
  br i1 %508, label %509, label %541

509:                                              ; preds = %506
  %510 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %511 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %510, i32 0, i32 4
  %512 = load %struct.TYPE_18__*, %struct.TYPE_18__** %511, align 8
  %513 = load i32*, i32** %10, align 8
  %514 = load i64, i64* %11, align 8
  %515 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %516 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %515, i32 0, i32 4
  %517 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %516, i32 0, i32 2
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %520 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %519, i32 0, i32 4
  %521 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %520, i32 0, i32 1
  %522 = load i64, i64* %521, align 8
  %523 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %524 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %523, i32 0, i32 3
  %525 = load i32, i32* %524, align 4
  %526 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %527 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %526, i32 0, i32 5
  %528 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %529 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %528, i32 0, i32 4
  %530 = load %struct.TYPE_18__*, %struct.TYPE_18__** %529, align 8
  %531 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %530, i32 0, i32 3
  %532 = load i64*, i64** %531, align 8
  %533 = load i64, i64* %532, align 8
  %534 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %535 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %534, i32 0, i32 8
  %536 = load i64, i64* %535, align 8
  %537 = add nsw i64 %533, %536
  %538 = call %struct.delegpt* @dns_cache_find_delegation(%struct.TYPE_18__* %512, i32* %513, i64 %514, i32 %518, i64 %522, i32 %525, i32* %527, i64 %537)
  %539 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %540 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %539, i32 0, i32 3
  store %struct.delegpt* %538, %struct.delegpt** %540, align 8
  br label %544

541:                                              ; preds = %506
  %542 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %543 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %542, i32 0, i32 3
  store %struct.delegpt* null, %struct.delegpt** %543, align 8
  br label %544

544:                                              ; preds = %541, %509
  %545 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %546 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %545, i32 0, i32 3
  %547 = load %struct.delegpt*, %struct.delegpt** %546, align 8
  %548 = icmp eq %struct.delegpt* %547, null
  br i1 %548, label %549, label %669

549:                                              ; preds = %544
  %550 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %551 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %552 = load i32*, i32** %10, align 8
  %553 = load i64, i64* %11, align 8
  %554 = call i32 @auth_zone_delegpt(%struct.module_qstate* %550, %struct.iter_qstate* %551, i32* %552, i64 %553)
  %555 = icmp ne i32 %554, 0
  br i1 %555, label %561, label %556

556:                                              ; preds = %549
  %557 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %558 = load i32, i32* %9, align 4
  %559 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %560 = call i32 @error_response(%struct.module_qstate* %557, i32 %558, i64 %559)
  store i32 %560, i32* %5, align 4
  br label %980

561:                                              ; preds = %549
  %562 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %563 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %562, i32 0, i32 3
  %564 = load %struct.delegpt*, %struct.delegpt** %563, align 8
  %565 = icmp ne %struct.delegpt* %564, null
  br i1 %565, label %566, label %570

566:                                              ; preds = %561
  %567 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %568 = load i32, i32* @INIT_REQUEST_2_STATE, align 4
  %569 = call i32 @next_state(%struct.iter_qstate* %567, i32 %568)
  store i32 %569, i32* %5, align 4
  br label %980

570:                                              ; preds = %561
  %571 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %572 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %573 = load i32, i32* %9, align 4
  %574 = load i32*, i32** %10, align 8
  %575 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %576 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %575, i32 0, i32 4
  %577 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %576, i32 0, i32 1
  %578 = load i64, i64* %577, align 8
  %579 = call i32 @prime_stub(%struct.module_qstate* %571, %struct.iter_qstate* %572, i32 %573, i32* %574, i64 %578)
  store i32 %579, i32* %16, align 4
  %580 = load i32, i32* %16, align 4
  %581 = icmp eq i32 %580, 2
  br i1 %581, label %582, label %583

582:                                              ; preds = %570
  br label %969

583:                                              ; preds = %570
  %584 = load i32, i32* %16, align 4
  %585 = icmp ne i32 %584, 0
  br i1 %585, label %586, label %587

586:                                              ; preds = %583
  store i32 0, i32* %5, align 4
  br label %980

587:                                              ; preds = %583
  br label %588

588:                                              ; preds = %587
  %589 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %590 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %589, i32 0, i32 4
  %591 = load %struct.TYPE_18__*, %struct.TYPE_18__** %590, align 8
  %592 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %591, i32 0, i32 5
  %593 = load i32, i32* %592, align 4
  %594 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %595 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %594, i32 0, i32 4
  %596 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %595, i32 0, i32 1
  %597 = load i64, i64* %596, align 8
  %598 = call i64 @forwards_lookup_root(i32 %593, i64 %597)
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %653

600:                                              ; preds = %588
  %601 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %602 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %601, i32 0, i32 4
  %603 = load %struct.TYPE_18__*, %struct.TYPE_18__** %602, align 8
  %604 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %607 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %606, i32 0, i32 4
  %608 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %607, i32 0, i32 1
  %609 = load i64, i64* %608, align 8
  %610 = call i8* @hints_lookup_root(i32 %605, i64 %609)
  %611 = bitcast i8* %610 to %struct.delegpt*
  %612 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %613 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %612, i32 0, i32 3
  store %struct.delegpt* %611, %struct.delegpt** %613, align 8
  %614 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %615 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %614, i32 0, i32 3
  %616 = load %struct.delegpt*, %struct.delegpt** %615, align 8
  %617 = icmp ne %struct.delegpt* %616, null
  br i1 %617, label %626, label %618

618:                                              ; preds = %600
  %619 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %620 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %621 = call i32 @errinf(%struct.module_qstate* %620, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0))
  %622 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %623 = load i32, i32* %9, align 4
  %624 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %625 = call i32 @error_response(%struct.module_qstate* %622, i32 %623, i64 %624)
  store i32 %625, i32* %5, align 4
  br label %980

626:                                              ; preds = %600
  %627 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %628 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %627, i32 0, i32 3
  %629 = load %struct.delegpt*, %struct.delegpt** %628, align 8
  %630 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %631 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %630, i32 0, i32 3
  %632 = load i32, i32* %631, align 4
  %633 = call i8* @delegpt_copy(%struct.delegpt* %629, i32 %632)
  %634 = bitcast i8* %633 to %struct.delegpt*
  %635 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %636 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %635, i32 0, i32 3
  store %struct.delegpt* %634, %struct.delegpt** %636, align 8
  %637 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %638 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %637, i32 0, i32 3
  %639 = load %struct.delegpt*, %struct.delegpt** %638, align 8
  %640 = icmp ne %struct.delegpt* %639, null
  br i1 %640, label %649, label %641

641:                                              ; preds = %626
  %642 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %643 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %644 = call i32 @errinf(%struct.module_qstate* %643, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0))
  %645 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %646 = load i32, i32* %9, align 4
  %647 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %648 = call i32 @error_response(%struct.module_qstate* %645, i32 %646, i64 %647)
  store i32 %648, i32* %5, align 4
  br label %980

649:                                              ; preds = %626
  %650 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %651 = load i32, i32* @INIT_REQUEST_2_STATE, align 4
  %652 = call i32 @next_state(%struct.iter_qstate* %650, i32 %651)
  store i32 %652, i32* %5, align 4
  br label %980

653:                                              ; preds = %588
  %654 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %655 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %656 = load i32, i32* %9, align 4
  %657 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %658 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %657, i32 0, i32 4
  %659 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %658, i32 0, i32 1
  %660 = load i64, i64* %659, align 8
  %661 = call i32 @prime_root(%struct.module_qstate* %654, %struct.iter_qstate* %655, i32 %656, i64 %660)
  %662 = icmp ne i32 %661, 0
  br i1 %662, label %668, label %663

663:                                              ; preds = %653
  %664 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %665 = load i32, i32* %9, align 4
  %666 = load i64, i64* @LDNS_RCODE_REFUSED, align 8
  %667 = call i32 @error_response(%struct.module_qstate* %664, i32 %665, i64 %666)
  store i32 %667, i32* %5, align 4
  br label %980

668:                                              ; preds = %653
  store i32 0, i32* %5, align 4
  br label %980

669:                                              ; preds = %544
  %670 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %671 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %670, i32 0, i32 2
  %672 = load i32, i32* %671, align 8
  %673 = icmp ne i32 %672, 0
  br i1 %673, label %682, label %674

674:                                              ; preds = %669
  %675 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %676 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %675, i32 0, i32 8
  %677 = load i64, i64* %676, align 8
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %679, label %682

679:                                              ; preds = %674
  %680 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %681 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %680, i32 0, i32 2
  store i32 1, i32* %681, align 8
  br label %682

682:                                              ; preds = %679, %674, %669
  %683 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %684 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %683, i32 0, i32 2
  %685 = load i32, i32* %684, align 8
  %686 = icmp ne i32 %685, 0
  br i1 %686, label %810, label %687

687:                                              ; preds = %682
  %688 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %689 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %688, i32 0, i32 4
  %690 = load %struct.TYPE_18__*, %struct.TYPE_18__** %689, align 8
  %691 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %690, i32 0, i32 4
  %692 = load i32, i32* %691, align 8
  %693 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %694 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %693, i32 0, i32 3
  %695 = load %struct.delegpt*, %struct.delegpt** %694, align 8
  %696 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %695, i32 0, i32 1
  %697 = load i32*, i32** %696, align 8
  %698 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %699 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %698, i32 0, i32 3
  %700 = load %struct.delegpt*, %struct.delegpt** %699, align 8
  %701 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %700, i32 0, i32 0
  %702 = load i64, i64* %701, align 8
  %703 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %704 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %703, i32 0, i32 4
  %705 = load %struct.TYPE_18__*, %struct.TYPE_18__** %704, align 8
  %706 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %705, i32 0, i32 3
  %707 = load i64*, i64** %706, align 8
  %708 = load i64, i64* %707, align 8
  %709 = call i64 @infra_ratelimit_exceeded(i32 %692, i32* %697, i64 %702, i64 %708)
  %710 = icmp ne i64 %709, 0
  br i1 %710, label %711, label %810

711:                                              ; preds = %687
  %712 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %713 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %712, i32 0, i32 4
  %714 = load %struct.TYPE_18__*, %struct.TYPE_18__** %713, align 8
  %715 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %714, i32 0, i32 4
  %716 = load i32, i32* %715, align 8
  %717 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %718 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %717, i32 0, i32 3
  %719 = load %struct.delegpt*, %struct.delegpt** %718, align 8
  %720 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %719, i32 0, i32 1
  %721 = load i32*, i32** %720, align 8
  %722 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %723 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %722, i32 0, i32 3
  %724 = load %struct.delegpt*, %struct.delegpt** %723, align 8
  %725 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %724, i32 0, i32 0
  %726 = load i64, i64* %725, align 8
  %727 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %728 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %727, i32 0, i32 4
  %729 = load %struct.TYPE_18__*, %struct.TYPE_18__** %728, align 8
  %730 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %729, i32 0, i32 3
  %731 = load i64*, i64** %730, align 8
  %732 = load i64, i64* %731, align 8
  %733 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %734 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %733, i32 0, i32 6
  %735 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %736 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %735, i32 0, i32 7
  %737 = load i32, i32* %736, align 8
  %738 = call i32 @infra_ratelimit_inc(i32 %716, i32* %721, i64 %726, i64 %732, %struct.TYPE_16__* %734, i32 %737)
  %739 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %740 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %739, i32 0, i32 4
  %741 = load %struct.TYPE_18__*, %struct.TYPE_18__** %740, align 8
  %742 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %741, i32 0, i32 1
  %743 = load %struct.TYPE_15__*, %struct.TYPE_15__** %742, align 8
  %744 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %743, i32 0, i32 0
  %745 = load i64, i64* %744, align 8
  %746 = icmp ne i64 %745, 0
  br i1 %746, label %747, label %774

747:                                              ; preds = %711
  %748 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %749 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %748, i32 0, i32 4
  %750 = load %struct.TYPE_18__*, %struct.TYPE_18__** %749, align 8
  %751 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %750, i32 0, i32 2
  %752 = load i32, i32* %751, align 8
  %753 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %754 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %753, i32 0, i32 4
  %755 = load %struct.TYPE_18__*, %struct.TYPE_18__** %754, align 8
  %756 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %755, i32 0, i32 1
  %757 = load %struct.TYPE_15__*, %struct.TYPE_15__** %756, align 8
  %758 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %757, i32 0, i32 0
  %759 = load i64, i64* %758, align 8
  %760 = call i32 @ub_random_max(i32 %752, i64 %759)
  %761 = icmp eq i32 %760, 1
  br i1 %761, label %762, label %774

762:                                              ; preds = %747
  %763 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %764 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %763, i32 0, i32 2
  store i32 1, i32* %764, align 8
  %765 = load i64, i64* @VERB_ALGO, align 8
  %766 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %767 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %766, i32 0, i32 3
  %768 = load %struct.delegpt*, %struct.delegpt** %767, align 8
  %769 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %768, i32 0, i32 1
  %770 = load i32*, i32** %769, align 8
  %771 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %772 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %773 = call i32 @log_nametypeclass(i64 %765, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0), i32* %770, i32 %771, i32 %772)
  br label %809

774:                                              ; preds = %747, %711
  %775 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %776 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %775, i32 0, i32 1
  %777 = call i32 @lock_basic_lock(i32* %776)
  %778 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %779 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %778, i32 0, i32 2
  %780 = load i32, i32* %779, align 4
  %781 = add nsw i32 %780, 1
  store i32 %781, i32* %779, align 4
  %782 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %783 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %782, i32 0, i32 1
  %784 = call i32 @lock_basic_unlock(i32* %783)
  %785 = load i64, i64* @VERB_ALGO, align 8
  %786 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %787 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %786, i32 0, i32 3
  %788 = load %struct.delegpt*, %struct.delegpt** %787, align 8
  %789 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %788, i32 0, i32 1
  %790 = load i32*, i32** %789, align 8
  %791 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %792 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %793 = call i32 @log_nametypeclass(i64 %785, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i32* %790, i32 %791, i32 %792)
  %794 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %795 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %794, i32 0, i32 2
  store i32 1, i32* %795, align 8
  %796 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %797 = call i32 @errinf(%struct.module_qstate* %796, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.25, i64 0, i64 0))
  %798 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %799 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %800 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %799, i32 0, i32 3
  %801 = load %struct.delegpt*, %struct.delegpt** %800, align 8
  %802 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %801, i32 0, i32 1
  %803 = load i32*, i32** %802, align 8
  %804 = call i32 @errinf_dname(%struct.module_qstate* %798, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32* %803)
  %805 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %806 = load i32, i32* %9, align 4
  %807 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %808 = call i32 @error_response(%struct.module_qstate* %805, i32 %806, i64 %807)
  store i32 %808, i32* %5, align 4
  br label %980

809:                                              ; preds = %762
  br label %810

810:                                              ; preds = %809, %687, %682
  %811 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %812 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %811, i32 0, i32 6
  %813 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %814 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %813, i32 0, i32 5
  %815 = load i32, i32* %814, align 8
  %816 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %817 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %816, i32 0, i32 3
  %818 = load %struct.delegpt*, %struct.delegpt** %817, align 8
  %819 = call i64 @iter_dp_is_useless(%struct.TYPE_16__* %812, i32 %815, %struct.delegpt* %818)
  %820 = icmp ne i64 %819, 0
  br i1 %820, label %821, label %967

821:                                              ; preds = %810
  store %struct.delegpt* null, %struct.delegpt** %17, align 8
  %822 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %823 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %822, i32 0, i32 4
  %824 = load %struct.TYPE_18__*, %struct.TYPE_18__** %823, align 8
  %825 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %826 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %825, i32 0, i32 3
  %827 = load %struct.delegpt*, %struct.delegpt** %826, align 8
  %828 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %827, i32 0, i32 1
  %829 = load i32*, i32** %828, align 8
  %830 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %831 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %830, i32 0, i32 3
  %832 = load %struct.delegpt*, %struct.delegpt** %831, align 8
  %833 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %832, i32 0, i32 0
  %834 = load i64, i64* %833, align 8
  %835 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %836 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %835, i32 0, i32 4
  %837 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %836, i32 0, i32 1
  %838 = load i64, i64* %837, align 8
  %839 = call i64 @can_have_last_resort(%struct.TYPE_18__* %824, i32* %829, i64 %834, i64 %838, %struct.delegpt** %17)
  %840 = icmp ne i64 %839, 0
  br i1 %840, label %889, label %841

841:                                              ; preds = %821
  %842 = load %struct.delegpt*, %struct.delegpt** %17, align 8
  %843 = icmp ne %struct.delegpt* %842, null
  br i1 %843, label %844, label %868

844:                                              ; preds = %841
  %845 = load i64, i64* @VERB_QUERY, align 8
  %846 = call i32 (i64, i8*, ...) @verbose(i64 %845, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.27, i64 0, i64 0))
  %847 = load %struct.delegpt*, %struct.delegpt** %17, align 8
  %848 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %849 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %848, i32 0, i32 3
  %850 = load i32, i32* %849, align 4
  %851 = call i8* @delegpt_copy(%struct.delegpt* %847, i32 %850)
  %852 = bitcast i8* %851 to %struct.delegpt*
  %853 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %854 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %853, i32 0, i32 3
  store %struct.delegpt* %852, %struct.delegpt** %854, align 8
  %855 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %856 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %855, i32 0, i32 3
  %857 = load %struct.delegpt*, %struct.delegpt** %856, align 8
  %858 = icmp ne %struct.delegpt* %857, null
  br i1 %858, label %867, label %859

859:                                              ; preds = %844
  %860 = call i32 @log_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.28, i64 0, i64 0))
  %861 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %862 = call i32 @errinf(%struct.module_qstate* %861, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.29, i64 0, i64 0))
  %863 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %864 = load i32, i32* %9, align 4
  %865 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %866 = call i32 @error_response(%struct.module_qstate* %863, i32 %864, i64 %865)
  store i32 %866, i32* %5, align 4
  br label %980

867:                                              ; preds = %844
  br label %969

868:                                              ; preds = %841
  %869 = load i64, i64* @VERB_ALGO, align 8
  %870 = call i32 (i64, i8*, ...) @verbose(i64 %869, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i64 0, i64 0))
  %871 = load i64, i64* @VERB_ALGO, align 8
  %872 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %873 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %872, i32 0, i32 3
  %874 = load %struct.delegpt*, %struct.delegpt** %873, align 8
  %875 = call i32 @delegpt_log(i64 %871, %struct.delegpt* %874)
  %876 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %877 = call i32 @errinf(%struct.module_qstate* %876, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0))
  %878 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %879 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %880 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %879, i32 0, i32 3
  %881 = load %struct.delegpt*, %struct.delegpt** %880, align 8
  %882 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %881, i32 0, i32 1
  %883 = load i32*, i32** %882, align 8
  %884 = call i32 @errinf_dname(%struct.module_qstate* %878, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i32* %883)
  %885 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %886 = load i32, i32* %9, align 4
  %887 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %888 = call i32 @error_response(%struct.module_qstate* %885, i32 %886, i64 %887)
  store i32 %888, i32* %5, align 4
  br label %980

889:                                              ; preds = %821
  %890 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %891 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %890, i32 0, i32 3
  %892 = load %struct.delegpt*, %struct.delegpt** %891, align 8
  %893 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %892, i32 0, i32 1
  %894 = load i32*, i32** %893, align 8
  %895 = call i64 @dname_is_root(i32* %894)
  %896 = icmp ne i64 %895, 0
  br i1 %896, label %897, label %947

897:                                              ; preds = %889
  %898 = load i64, i64* @VERB_QUERY, align 8
  %899 = call i32 (i64, i8*, ...) @verbose(i64 %898, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.32, i64 0, i64 0))
  %900 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %901 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %900, i32 0, i32 4
  %902 = load %struct.TYPE_18__*, %struct.TYPE_18__** %901, align 8
  %903 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %902, i32 0, i32 0
  %904 = load i32, i32* %903, align 8
  %905 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %906 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %905, i32 0, i32 4
  %907 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %906, i32 0, i32 1
  %908 = load i64, i64* %907, align 8
  %909 = call i8* @hints_lookup_root(i32 %904, i64 %908)
  %910 = bitcast i8* %909 to %struct.delegpt*
  %911 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %912 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %911, i32 0, i32 3
  store %struct.delegpt* %910, %struct.delegpt** %912, align 8
  %913 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %914 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %913, i32 0, i32 3
  %915 = load %struct.delegpt*, %struct.delegpt** %914, align 8
  %916 = icmp ne %struct.delegpt* %915, null
  br i1 %916, label %923, label %917

917:                                              ; preds = %897
  %918 = call i32 @log_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.19, i64 0, i64 0))
  %919 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %920 = load i32, i32* %9, align 4
  %921 = load i64, i64* @LDNS_RCODE_REFUSED, align 8
  %922 = call i32 @error_response(%struct.module_qstate* %919, i32 %920, i64 %921)
  store i32 %922, i32* %5, align 4
  br label %980

923:                                              ; preds = %897
  %924 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %925 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %924, i32 0, i32 3
  %926 = load %struct.delegpt*, %struct.delegpt** %925, align 8
  %927 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %928 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %927, i32 0, i32 3
  %929 = load i32, i32* %928, align 4
  %930 = call i8* @delegpt_copy(%struct.delegpt* %926, i32 %929)
  %931 = bitcast i8* %930 to %struct.delegpt*
  %932 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %933 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %932, i32 0, i32 3
  store %struct.delegpt* %931, %struct.delegpt** %933, align 8
  %934 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %935 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %934, i32 0, i32 3
  %936 = load %struct.delegpt*, %struct.delegpt** %935, align 8
  %937 = icmp ne %struct.delegpt* %936, null
  br i1 %937, label %946, label %938

938:                                              ; preds = %923
  %939 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %940 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %941 = call i32 @errinf(%struct.module_qstate* %940, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.33, i64 0, i64 0))
  %942 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %943 = load i32, i32* %9, align 4
  %944 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %945 = call i32 @error_response(%struct.module_qstate* %942, i32 %943, i64 %944)
  store i32 %945, i32* %5, align 4
  br label %980

946:                                              ; preds = %923
  br label %969

947:                                              ; preds = %889
  %948 = load i64, i64* @VERB_ALGO, align 8
  %949 = call i32 (i64, i8*, ...) @verbose(i64 %948, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.34, i64 0, i64 0))
  %950 = load i64, i64* @VERB_ALGO, align 8
  %951 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %952 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %951, i32 0, i32 3
  %953 = load %struct.delegpt*, %struct.delegpt** %952, align 8
  %954 = call i32 @delegpt_log(i64 %950, %struct.delegpt* %953)
  %955 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %956 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %955, i32 0, i32 3
  %957 = load %struct.delegpt*, %struct.delegpt** %956, align 8
  %958 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %957, i32 0, i32 1
  %959 = load i32*, i32** %958, align 8
  store i32* %959, i32** %10, align 8
  %960 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %961 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %960, i32 0, i32 3
  %962 = load %struct.delegpt*, %struct.delegpt** %961, align 8
  %963 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %962, i32 0, i32 0
  %964 = load i64, i64* %963, align 8
  store i64 %964, i64* %11, align 8
  %965 = call i32 @dname_remove_label(i32** %10, i64* %11)
  br label %966

966:                                              ; preds = %947
  br label %968

967:                                              ; preds = %810
  br label %969

968:                                              ; preds = %966
  br label %506

969:                                              ; preds = %967, %946, %867, %582
  %970 = load i64, i64* @VERB_ALGO, align 8
  %971 = call i32 (i64, i8*, ...) @verbose(i64 %970, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.35, i64 0, i64 0))
  %972 = load i64, i64* @VERB_ALGO, align 8
  %973 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %974 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %973, i32 0, i32 3
  %975 = load %struct.delegpt*, %struct.delegpt** %974, align 8
  %976 = call i32 @delegpt_log(i64 %972, %struct.delegpt* %975)
  %977 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %978 = load i32, i32* @INIT_REQUEST_2_STATE, align 4
  %979 = call i32 @next_state(%struct.iter_qstate* %977, i32 %978)
  store i32 %979, i32* %5, align 4
  br label %980

980:                                              ; preds = %969, %938, %917, %868, %859, %774, %668, %663, %649, %641, %618, %586, %566, %556, %416, %397, %389, %371, %343, %299, %84, %65, %47
  %981 = load i32, i32* %5, align 4
  ret i32 %981
}

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_16__*) #1

declare dso_local i32 @verbose(i64, i8*, ...) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @errinf_dname(%struct.module_qstate*, i8*, i32*) #1

declare dso_local i32 @error_response(%struct.module_qstate*, i32, i64) #1

declare dso_local i32 @next_state(%struct.iter_qstate*, i32) #1

declare dso_local i64 @can_have_last_resort(%struct.TYPE_18__*, i32*, i64, i64, %struct.delegpt**) #1

declare dso_local i64 @iter_stub_fwd_no_cache(%struct.module_qstate*, %struct.TYPE_14__*) #1

declare dso_local %struct.dns_msg* @dns_cache_lookup(%struct.TYPE_18__*, i32*, i64, i32, i64, i32, i32, i32, i32) #1

declare dso_local i64 @iter_qname_indicates_dnssec(%struct.TYPE_18__*, %struct.TYPE_14__*) #1

declare dso_local %struct.dns_msg* @val_neg_getmsg(i64, %struct.TYPE_14__*, i32, i32, i32, i64, i32, i32*, %struct.TYPE_15__*) #1

declare dso_local i64 @query_dname_compare(i32, i32*) #1

declare dso_local i32 @response_type_from_cache(%struct.dns_msg*, %struct.TYPE_14__*) #1

declare dso_local i32 @log_dns_msg(i8*, i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @handle_cname_response(%struct.module_qstate*, %struct.iter_qstate*, %struct.dns_msg*, i32**, i64*) #1

declare dso_local i32 @sock_list_insert(i64*, i32*, i32, i32) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i32 @final_state(%struct.iter_qstate*) #1

declare dso_local i64 @forward_request(%struct.module_qstate*, %struct.iter_qstate*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @dname_is_root(i32*) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local %struct.delegpt* @dns_cache_find_delegation(%struct.TYPE_18__*, i32*, i64, i32, i64, i32, i32*, i64) #1

declare dso_local i32 @auth_zone_delegpt(%struct.module_qstate*, %struct.iter_qstate*, i32*, i64) #1

declare dso_local i32 @prime_stub(%struct.module_qstate*, %struct.iter_qstate*, i32, i32*, i64) #1

declare dso_local i64 @forwards_lookup_root(i32, i64) #1

declare dso_local i8* @hints_lookup_root(i32, i64) #1

declare dso_local i8* @delegpt_copy(%struct.delegpt*, i32) #1

declare dso_local i32 @prime_root(%struct.module_qstate*, %struct.iter_qstate*, i32, i64) #1

declare dso_local i64 @infra_ratelimit_exceeded(i32, i32*, i64, i64) #1

declare dso_local i32 @infra_ratelimit_inc(i32, i32*, i64, i64, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @ub_random_max(i32, i64) #1

declare dso_local i32 @log_nametypeclass(i64, i8*, i32*, i32, i32) #1

declare dso_local i32 @lock_basic_lock(i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i64 @iter_dp_is_useless(%struct.TYPE_16__*, i32, %struct.delegpt*) #1

declare dso_local i32 @delegpt_log(i64, %struct.delegpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
