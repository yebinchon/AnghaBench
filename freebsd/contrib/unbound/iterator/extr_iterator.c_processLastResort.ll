; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processLastResort.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iterator.c_processLastResort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_27__, %struct.TYPE_26__*, i32, i8**, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i64 }
%struct.iter_qstate = type { i32, i32, i64, i64*, %struct.TYPE_25__*, %struct.TYPE_23__*, %struct.TYPE_22__*, i32, i64, %struct.TYPE_24__, i32, i64, i32, i32, %struct.TYPE_25__* }
%struct.TYPE_23__ = type { i32* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, %struct.delegpt_ns*, i64, i32 }
%struct.delegpt_ns = type { i32, i32, i32, i32, %struct.delegpt_ns*, i32 }
%struct.iter_env = type { i64, i64, i64 }
%struct.delegpt = type { %struct.delegpt_addr*, %struct.delegpt_ns* }
%struct.delegpt_addr = type { i32, i32, i32, i32, i32, %struct.delegpt_addr* }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"No more query targets, attempting last resort\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"all the configured stub or forward servers failed,\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"at zone\00", align 1
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [64 x i8] c"configured stub or forward servers failed -- returning SERVFAIL\00", align 1
@LDNS_RCODE_SERVFAIL = common dso_local global i32 0, align 4
@BIT_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"try to grab parent NS\00", align 1
@INIT_MINIMISE_STATE = common dso_local global i32 0, align 4
@INIT_REQUEST_STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"out of memory in cache_fill_missing\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"try parent-side-name, w. glue from cache\00", align 1
@QUERYTARGETS_STATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"try parent-side glue from cache\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"try parent-side target name\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"could not fetch nameserver\00", align 1
@module_wait_subquery = common dso_local global i8* null, align 8
@.str.10 = private unnamed_addr constant [41 x i8] c"maxdepth and need more nameservers, fail\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"cannot fetch more nameservers because at max dependency depth\00", align 1
@MAX_TARGET_COUNT = common dso_local global i64 0, align 8
@LDNS_MAX_DOMAINLEN = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [62 x i8] c"request %s has exceeded the maximum number of glue fetches %d\00", align 1
@.str.13 = private unnamed_addr constant [44 x i8] c"exceeded the maximum number of glue fetches\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"cannot pside lookup ns because it is also a stub/forward,\00", align 1
@LDNS_RR_TYPE_NS = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_AAAA = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [46 x i8] c"could not generate nameserver AAAA lookup for\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [43 x i8] c"could not generate nameserver A lookup for\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"try parent-side glue lookup\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"all servers for this domain failed,\00", align 1
@.str.19 = private unnamed_addr constant [43 x i8] c"out of query targets -- returning SERVFAIL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32)* @processLastResort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processLastResort(%struct.module_qstate* %0, %struct.iter_qstate* %1, %struct.iter_env* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.iter_qstate*, align 8
  %8 = alloca %struct.iter_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.delegpt_ns*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.delegpt*, align 8
  %13 = alloca %struct.delegpt_addr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.iter_qstate* %1, %struct.iter_qstate** %7, align 8
  store %struct.iter_env* %2, %struct.iter_env** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* @VERB_ALGO, align 4
  %18 = call i32 (i32, i8*, ...) @verbose(i32 %17, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %20 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %19, i32 0, i32 4
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %22 = call i32 @log_assert(%struct.TYPE_25__* %21)
  %23 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %24 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %23, i32 0, i32 1
  %25 = load %struct.TYPE_26__*, %struct.TYPE_26__** %24, align 8
  %26 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %27 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %26, i32 0, i32 4
  %28 = load %struct.TYPE_25__*, %struct.TYPE_25__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %32 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %31, i32 0, i32 4
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %37 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %36, i32 0, i32 9
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @can_have_last_resort(%struct.TYPE_26__* %25, i32 %30, i32 %35, i32 %39, i32* null)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %4
  %43 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %44 = call i32 @errinf(%struct.module_qstate* %43, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %46 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %47 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %46, i32 0, i32 4
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @errinf_dname(%struct.module_qstate* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @VERB_QUERY, align 4
  %53 = call i32 (i32, i8*, ...) @verbose(i32 %52, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %54 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %57 = call i32 @error_response_cache(%struct.module_qstate* %54, i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  br label %637

58:                                               ; preds = %4
  %59 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %60 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %59, i32 0, i32 4
  %61 = load %struct.TYPE_25__*, %struct.TYPE_25__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %156, label %65

65:                                               ; preds = %58
  %66 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %67 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %66, i32 0, i32 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @dname_is_root(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %156

73:                                               ; preds = %65
  %74 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %75 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %74, i32 0, i32 1
  %76 = load %struct.TYPE_26__*, %struct.TYPE_26__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %80 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %79, i32 0, i32 9
  %81 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call %struct.delegpt* @hints_lookup_root(i32 %78, i32 %82)
  store %struct.delegpt* %83, %struct.delegpt** %12, align 8
  %84 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %85 = icmp ne %struct.delegpt* %84, null
  br i1 %85, label %86, label %151

86:                                               ; preds = %73
  %87 = load i32, i32* @BIT_RD, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %90 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %89, i32 0, i32 13
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %94 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %93, i32 0, i32 1
  %95 = load %struct.delegpt_ns*, %struct.delegpt_ns** %94, align 8
  store %struct.delegpt_ns* %95, %struct.delegpt_ns** %10, align 8
  br label %96

96:                                               ; preds = %113, %86
  %97 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %98 = icmp ne %struct.delegpt_ns* %97, null
  br i1 %98, label %99, label %117

99:                                               ; preds = %96
  %100 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %101 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %100, i32 0, i32 4
  %102 = load %struct.TYPE_25__*, %struct.TYPE_25__** %101, align 8
  %103 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %104 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %107 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %110 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @delegpt_add_ns(%struct.TYPE_25__* %102, i32 %105, i32 %108, i32 %111)
  br label %113

113:                                              ; preds = %99
  %114 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %115 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %114, i32 0, i32 4
  %116 = load %struct.delegpt_ns*, %struct.delegpt_ns** %115, align 8
  store %struct.delegpt_ns* %116, %struct.delegpt_ns** %10, align 8
  br label %96

117:                                              ; preds = %96
  %118 = load %struct.delegpt*, %struct.delegpt** %12, align 8
  %119 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %118, i32 0, i32 0
  %120 = load %struct.delegpt_addr*, %struct.delegpt_addr** %119, align 8
  store %struct.delegpt_addr* %120, %struct.delegpt_addr** %13, align 8
  br label %121

121:                                              ; preds = %146, %117
  %122 = load %struct.delegpt_addr*, %struct.delegpt_addr** %13, align 8
  %123 = icmp ne %struct.delegpt_addr* %122, null
  br i1 %123, label %124, label %150

124:                                              ; preds = %121
  %125 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %126 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %125, i32 0, i32 4
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %126, align 8
  %128 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %129 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.delegpt_addr*, %struct.delegpt_addr** %13, align 8
  %132 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %131, i32 0, i32 4
  %133 = load %struct.delegpt_addr*, %struct.delegpt_addr** %13, align 8
  %134 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.delegpt_addr*, %struct.delegpt_addr** %13, align 8
  %137 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.delegpt_addr*, %struct.delegpt_addr** %13, align 8
  %140 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.delegpt_addr*, %struct.delegpt_addr** %13, align 8
  %143 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @delegpt_add_addr(%struct.TYPE_25__* %127, i32 %130, i32* %132, i32 %135, i32 %138, i32 %141, i32 %144)
  br label %146

146:                                              ; preds = %124
  %147 = load %struct.delegpt_addr*, %struct.delegpt_addr** %13, align 8
  %148 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %147, i32 0, i32 5
  %149 = load %struct.delegpt_addr*, %struct.delegpt_addr** %148, align 8
  store %struct.delegpt_addr* %149, %struct.delegpt_addr** %13, align 8
  br label %121

150:                                              ; preds = %121
  br label %151

151:                                              ; preds = %150, %73
  %152 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %153 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %152, i32 0, i32 4
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  store i32 1, i32* %155, align 8
  br label %226

156:                                              ; preds = %65, %58
  %157 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %158 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %157, i32 0, i32 4
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %225, label %163

163:                                              ; preds = %156
  %164 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %165 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %164, i32 0, i32 1
  %166 = load %struct.TYPE_26__*, %struct.TYPE_26__** %165, align 8
  %167 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %168 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %167, i32 0, i32 4
  %169 = load %struct.TYPE_25__*, %struct.TYPE_25__** %168, align 8
  %170 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %171 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %174 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %173, i32 0, i32 0
  %175 = call i32 @iter_lookup_parent_NS_from_cache(%struct.TYPE_26__* %166, %struct.TYPE_25__* %169, i32 %172, %struct.TYPE_27__* %174)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %184

177:                                              ; preds = %163
  %178 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %179 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %178, i32 0, i32 4
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %224, label %184

184:                                              ; preds = %177, %163
  %185 = load i32, i32* @VERB_ALGO, align 4
  %186 = call i32 (i32, i8*, ...) @verbose(i32 %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %187 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %188 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %187, i32 0, i32 4
  %189 = load %struct.TYPE_25__*, %struct.TYPE_25__** %188, align 8
  %190 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %191 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %190, i32 0, i32 14
  store %struct.TYPE_25__* %189, %struct.TYPE_25__** %191, align 8
  %192 = load i32, i32* @BIT_RD, align 4
  %193 = xor i32 %192, -1
  %194 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %195 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %194, i32 0, i32 13
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, %193
  store i32 %197, i32* %195, align 4
  %198 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %199 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %198, i32 0, i32 6
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %199, align 8
  %200 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %201 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %200, i32 0, i32 0
  store i32 1, i32* %201, align 8
  %202 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %203 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %202, i32 0, i32 12
  %204 = load i32, i32* %203, align 8
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 8
  %206 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %207 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %206, i32 0, i32 11
  store i64 0, i64* %207, align 8
  %208 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %209 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %208, i32 0, i32 1
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %210, i32 0, i32 0
  %212 = load %struct.TYPE_21__*, %struct.TYPE_21__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %184
  %217 = load i32, i32* @INIT_MINIMISE_STATE, align 4
  %218 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %219 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %218, i32 0, i32 10
  store i32 %217, i32* %219, align 4
  br label %220

220:                                              ; preds = %216, %184
  %221 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %222 = load i32, i32* @INIT_REQUEST_STATE, align 4
  %223 = call i32 @next_state(%struct.iter_qstate* %221, i32 %222)
  store i32 %223, i32* %5, align 4
  br label %637

224:                                              ; preds = %177
  br label %225

225:                                              ; preds = %224, %156
  br label %226

226:                                              ; preds = %225, %151
  %227 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %228 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %227, i32 0, i32 1
  %229 = load %struct.TYPE_26__*, %struct.TYPE_26__** %228, align 8
  %230 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %231 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %230, i32 0, i32 9
  %232 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %235 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %238 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %237, i32 0, i32 4
  %239 = load %struct.TYPE_25__*, %struct.TYPE_25__** %238, align 8
  %240 = call i32 @cache_fill_missing(%struct.TYPE_26__* %229, i32 %233, i32 %236, %struct.TYPE_25__* %239)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %226
  %243 = call i32 @log_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %244

244:                                              ; preds = %242, %226
  %245 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %246 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %245, i32 0, i32 4
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 3
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %244
  %252 = load i32, i32* @VERB_ALGO, align 4
  %253 = call i32 (i32, i8*, ...) @verbose(i32 %252, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %254 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %255 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %256 = call i32 @next_state(%struct.iter_qstate* %254, i32 %255)
  store i32 %256, i32* %5, align 4
  br label %637

257:                                              ; preds = %244
  %258 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %259 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %258, i32 0, i32 1
  %260 = load %struct.TYPE_26__*, %struct.TYPE_26__** %259, align 8
  %261 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %262 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %261, i32 0, i32 4
  %263 = load %struct.TYPE_25__*, %struct.TYPE_25__** %262, align 8
  %264 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %265 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %264, i32 0, i32 4
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %268 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %267, i32 0, i32 0
  %269 = call i64 @iter_lookup_parent_glue_from_cache(%struct.TYPE_26__* %260, %struct.TYPE_25__* %263, i32 %266, %struct.TYPE_27__* %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %277

271:                                              ; preds = %257
  %272 = load i32, i32* @VERB_ALGO, align 4
  %273 = call i32 (i32, i8*, ...) @verbose(i32 %272, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %274 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %275 = load i32, i32* @QUERYTARGETS_STATE, align 4
  %276 = call i32 @next_state(%struct.iter_qstate* %274, i32 %275)
  store i32 %276, i32* %5, align 4
  br label %637

277:                                              ; preds = %257
  %278 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %279 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %278, i32 0, i32 4
  %280 = load %struct.TYPE_25__*, %struct.TYPE_25__** %279, align 8
  %281 = call i64 @delegpt_count_missing_targets(%struct.TYPE_25__* %280)
  %282 = icmp sgt i64 %281, 0
  br i1 %282, label %283, label %326

283:                                              ; preds = %277
  store i32 0, i32* %14, align 4
  %284 = load i32, i32* @VERB_ALGO, align 4
  %285 = call i32 (i32, i8*, ...) @verbose(i32 %284, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %286 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %287 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %288 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %289 = load i32, i32* %9, align 4
  %290 = call i32 @query_for_targets(%struct.module_qstate* %286, %struct.iter_qstate* %287, %struct.iter_env* %288, i32 %289, i32 1, i32* %14)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %306, label %292

292:                                              ; preds = %283
  %293 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %294 = call i32 @errinf(%struct.module_qstate* %293, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  %295 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %296 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %297 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %296, i32 0, i32 4
  %298 = load %struct.TYPE_25__*, %struct.TYPE_25__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @errinf_dname(%struct.module_qstate* %295, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %300)
  %302 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %303 = load i32, i32* %9, align 4
  %304 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %305 = call i32 @error_response(%struct.module_qstate* %302, i32 %303, i32 %304)
  store i32 %305, i32* %5, align 4
  br label %637

306:                                              ; preds = %283
  %307 = load i32, i32* %14, align 4
  %308 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %309 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = add nsw i32 %310, %307
  store i32 %311, i32* %309, align 4
  %312 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %313 = load i32, i32* %14, align 4
  %314 = call i32 @target_count_increase(%struct.iter_qstate* %312, i32 %313)
  %315 = load i32, i32* %14, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %325

317:                                              ; preds = %306
  %318 = load i8*, i8** @module_wait_subquery, align 8
  %319 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %320 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %319, i32 0, i32 3
  %321 = load i8**, i8*** %320, align 8
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8*, i8** %321, i64 %323
  store i8* %318, i8** %324, align 8
  store i32 0, i32* %5, align 4
  br label %637

325:                                              ; preds = %306
  br label %326

326:                                              ; preds = %325, %277
  %327 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %328 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %327, i32 0, i32 2
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %331 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %330, i32 0, i32 0
  %332 = load i64, i64* %331, align 8
  %333 = icmp eq i64 %329, %332
  br i1 %333, label %334, label %343

334:                                              ; preds = %326
  %335 = load i32, i32* @VERB_QUERY, align 4
  %336 = call i32 (i32, i8*, ...) @verbose(i32 %335, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0))
  %337 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %338 = call i32 @errinf(%struct.module_qstate* %337, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0))
  %339 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %340 = load i32, i32* %9, align 4
  %341 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %342 = call i32 @error_response_cache(%struct.module_qstate* %339, i32 %340, i32 %341)
  store i32 %342, i32* %5, align 4
  br label %637

343:                                              ; preds = %326
  %344 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %345 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %344, i32 0, i32 2
  %346 = load i64, i64* %345, align 8
  %347 = icmp sgt i64 %346, 0
  br i1 %347, label %348, label %386

348:                                              ; preds = %343
  %349 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %350 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %349, i32 0, i32 3
  %351 = load i64*, i64** %350, align 8
  %352 = icmp ne i64* %351, null
  br i1 %352, label %353, label %386

353:                                              ; preds = %348
  %354 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %355 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %354, i32 0, i32 3
  %356 = load i64*, i64** %355, align 8
  %357 = getelementptr inbounds i64, i64* %356, i64 1
  %358 = load i64, i64* %357, align 8
  %359 = load i64, i64* @MAX_TARGET_COUNT, align 8
  %360 = icmp sgt i64 %358, %359
  br i1 %360, label %361, label %386

361:                                              ; preds = %353
  %362 = load i32, i32* @LDNS_MAX_DOMAINLEN, align 4
  %363 = add nsw i32 %362, 1
  %364 = zext i32 %363 to i64
  %365 = call i8* @llvm.stacksave()
  store i8* %365, i8** %15, align 8
  %366 = alloca i8, i64 %364, align 16
  store i64 %364, i64* %16, align 8
  %367 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %368 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = call i32 @dname_str(i32 %370, i8* %366)
  %372 = load i32, i32* @VERB_QUERY, align 4
  %373 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %374 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %373, i32 0, i32 3
  %375 = load i64*, i64** %374, align 8
  %376 = getelementptr inbounds i64, i64* %375, i64 1
  %377 = load i64, i64* %376, align 8
  %378 = call i32 (i32, i8*, ...) @verbose(i32 %372, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.12, i64 0, i64 0), i8* %366, i64 %377)
  %379 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %380 = call i32 @errinf(%struct.module_qstate* %379, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.13, i64 0, i64 0))
  %381 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %382 = load i32, i32* %9, align 4
  %383 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %384 = call i32 @error_response_cache(%struct.module_qstate* %381, i32 %382, i32 %383)
  store i32 %384, i32* %5, align 4
  %385 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %385)
  br label %637

386:                                              ; preds = %353, %348, %343
  %387 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %388 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %389 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %388, i32 0, i32 4
  %390 = load %struct.TYPE_25__*, %struct.TYPE_25__** %389, align 8
  %391 = call i32 @iter_mark_pside_cycle_targets(%struct.module_qstate* %387, %struct.TYPE_25__* %390)
  %392 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %393 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %392, i32 0, i32 4
  %394 = load %struct.TYPE_25__*, %struct.TYPE_25__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %394, i32 0, i32 2
  %396 = load %struct.delegpt_ns*, %struct.delegpt_ns** %395, align 8
  store %struct.delegpt_ns* %396, %struct.delegpt_ns** %10, align 8
  br label %397

397:                                              ; preds = %569, %386
  %398 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %399 = icmp ne %struct.delegpt_ns* %398, null
  br i1 %399, label %400, label %573

400:                                              ; preds = %397
  %401 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %402 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %401, i32 0, i32 2
  %403 = load i64, i64* %402, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %410

405:                                              ; preds = %400
  %406 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %407 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %420

410:                                              ; preds = %405, %400
  %411 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %412 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = icmp ne i64 %413, 0
  br i1 %414, label %415, label %463

415:                                              ; preds = %410
  %416 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %417 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %463, label %420

420:                                              ; preds = %415, %405
  %421 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %422 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %421, i32 0, i32 1
  %423 = load %struct.TYPE_26__*, %struct.TYPE_26__** %422, align 8
  %424 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %425 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %428 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %427, i32 0, i32 3
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %431 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %430, i32 0, i32 9
  %432 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = call i32 @can_have_last_resort(%struct.TYPE_26__* %423, i32 %426, i32 %429, i32 %433, i32* null)
  %435 = icmp ne i32 %434, 0
  br i1 %435, label %463, label %436

436:                                              ; preds = %420
  %437 = load i32, i32* @VERB_ALGO, align 4
  %438 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %439 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %438, i32 0, i32 2
  %440 = load i32, i32* %439, align 8
  %441 = load i32, i32* @LDNS_RR_TYPE_NS, align 4
  %442 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %443 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %442, i32 0, i32 9
  %444 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = call i32 @log_nametypeclass(i32 %437, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.14, i64 0, i64 0), i32 %440, i32 %441, i32 %445)
  %447 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %448 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %447, i32 0, i32 2
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %454

451:                                              ; preds = %436
  %452 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %453 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %452, i32 0, i32 0
  store i32 1, i32* %453, align 8
  br label %454

454:                                              ; preds = %451, %436
  %455 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %456 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %455, i32 0, i32 1
  %457 = load i64, i64* %456, align 8
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %462

459:                                              ; preds = %454
  %460 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %461 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %460, i32 0, i32 1
  store i32 1, i32* %461, align 4
  br label %462

462:                                              ; preds = %459, %454
  br label %569

463:                                              ; preds = %420, %415, %410
  %464 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %465 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %464, i32 0, i32 2
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %505

468:                                              ; preds = %463
  %469 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %470 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 8
  %472 = icmp ne i32 %471, 0
  br i1 %472, label %505, label %473

473:                                              ; preds = %468
  %474 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %475 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %476 = load i32, i32* %9, align 4
  %477 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %478 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %477, i32 0, i32 2
  %479 = load i32, i32* %478, align 8
  %480 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %481 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %480, i32 0, i32 3
  %482 = load i32, i32* %481, align 4
  %483 = load i32, i32* @LDNS_RR_TYPE_AAAA, align 4
  %484 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %485 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %484, i32 0, i32 9
  %486 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = call i32 @generate_parentside_target_query(%struct.module_qstate* %474, %struct.iter_qstate* %475, i32 %476, i32 %479, i32 %482, i32 %483, i32 %487)
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %500, label %490

490:                                              ; preds = %473
  %491 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %492 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %493 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 8
  %495 = call i32 @errinf_dname(%struct.module_qstate* %491, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.15, i64 0, i64 0), i32 %494)
  %496 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %497 = load i32, i32* %9, align 4
  %498 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %499 = call i32 @error_response(%struct.module_qstate* %496, i32 %497, i32 %498)
  store i32 %499, i32* %5, align 4
  br label %637

500:                                              ; preds = %473
  %501 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %502 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %501, i32 0, i32 0
  store i32 1, i32* %502, align 8
  %503 = load i32, i32* %11, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %11, align 4
  br label %505

505:                                              ; preds = %500, %468, %463
  %506 = load %struct.iter_env*, %struct.iter_env** %8, align 8
  %507 = getelementptr inbounds %struct.iter_env, %struct.iter_env* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %547

510:                                              ; preds = %505
  %511 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %512 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %511, i32 0, i32 1
  %513 = load i32, i32* %512, align 4
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %547, label %515

515:                                              ; preds = %510
  %516 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %517 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %518 = load i32, i32* %9, align 4
  %519 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %520 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %519, i32 0, i32 2
  %521 = load i32, i32* %520, align 8
  %522 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %523 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %522, i32 0, i32 3
  %524 = load i32, i32* %523, align 4
  %525 = load i32, i32* @LDNS_RR_TYPE_A, align 4
  %526 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %527 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %526, i32 0, i32 9
  %528 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %527, i32 0, i32 0
  %529 = load i32, i32* %528, align 8
  %530 = call i32 @generate_parentside_target_query(%struct.module_qstate* %516, %struct.iter_qstate* %517, i32 %518, i32 %521, i32 %524, i32 %525, i32 %529)
  %531 = icmp ne i32 %530, 0
  br i1 %531, label %542, label %532

532:                                              ; preds = %515
  %533 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %534 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %535 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %534, i32 0, i32 2
  %536 = load i32, i32* %535, align 8
  %537 = call i32 @errinf_dname(%struct.module_qstate* %533, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i64 0, i64 0), i32 %536)
  %538 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %539 = load i32, i32* %9, align 4
  %540 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %541 = call i32 @error_response(%struct.module_qstate* %538, i32 %539, i32 %540)
  store i32 %541, i32* %5, align 4
  br label %637

542:                                              ; preds = %515
  %543 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %544 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %543, i32 0, i32 1
  store i32 1, i32* %544, align 4
  %545 = load i32, i32* %11, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %11, align 4
  br label %547

547:                                              ; preds = %542, %510, %505
  %548 = load i32, i32* %11, align 4
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %550, label %568

550:                                              ; preds = %547
  %551 = load i32, i32* @VERB_ALGO, align 4
  %552 = call i32 (i32, i8*, ...) @verbose(i32 %551, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0))
  %553 = load i32, i32* %11, align 4
  %554 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %555 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = add nsw i32 %556, %553
  store i32 %557, i32* %555, align 4
  %558 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %559 = load i32, i32* %11, align 4
  %560 = call i32 @target_count_increase(%struct.iter_qstate* %558, i32 %559)
  %561 = load i8*, i8** @module_wait_subquery, align 8
  %562 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %563 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %562, i32 0, i32 3
  %564 = load i8**, i8*** %563, align 8
  %565 = load i32, i32* %9, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i8*, i8** %564, i64 %566
  store i8* %561, i8** %567, align 8
  store i32 0, i32* %5, align 4
  br label %637

568:                                              ; preds = %547
  br label %569

569:                                              ; preds = %568, %462
  %570 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  %571 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %570, i32 0, i32 4
  %572 = load %struct.delegpt_ns*, %struct.delegpt_ns** %571, align 8
  store %struct.delegpt_ns* %572, %struct.delegpt_ns** %10, align 8
  br label %397

573:                                              ; preds = %397
  %574 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %575 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %574, i32 0, i32 2
  %576 = load i32, i32* %575, align 8
  %577 = icmp ne i32 %576, 0
  br i1 %577, label %621, label %578

578:                                              ; preds = %573
  %579 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %580 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %579, i32 0, i32 8
  %581 = load i64, i64* %580, align 8
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %621

583:                                              ; preds = %578
  %584 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %585 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %584, i32 0, i32 7
  %586 = load i32, i32* %585, align 8
  %587 = icmp ne i32 %586, 0
  br i1 %587, label %621, label %588

588:                                              ; preds = %583
  %589 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %590 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %589, i32 0, i32 1
  %591 = load %struct.TYPE_26__*, %struct.TYPE_26__** %590, align 8
  %592 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %593 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %592, i32 0, i32 0
  %594 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %595 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %594, i32 0, i32 6
  %596 = load %struct.TYPE_22__*, %struct.TYPE_22__** %595, align 8
  %597 = icmp ne %struct.TYPE_22__* %596, null
  br i1 %597, label %598, label %604

598:                                              ; preds = %588
  %599 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %600 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %599, i32 0, i32 6
  %601 = load %struct.TYPE_22__*, %struct.TYPE_22__** %600, align 8
  %602 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %601, i32 0, i32 0
  %603 = load i32*, i32** %602, align 8
  br label %618

604:                                              ; preds = %588
  %605 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %606 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %605, i32 0, i32 5
  %607 = load %struct.TYPE_23__*, %struct.TYPE_23__** %606, align 8
  %608 = icmp ne %struct.TYPE_23__* %607, null
  br i1 %608, label %609, label %615

609:                                              ; preds = %604
  %610 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %611 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %610, i32 0, i32 5
  %612 = load %struct.TYPE_23__*, %struct.TYPE_23__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %612, i32 0, i32 0
  %614 = load i32*, i32** %613, align 8
  br label %616

615:                                              ; preds = %604
  br label %616

616:                                              ; preds = %615, %609
  %617 = phi i32* [ %614, %609 ], [ null, %615 ]
  br label %618

618:                                              ; preds = %616, %598
  %619 = phi i32* [ %603, %598 ], [ %617, %616 ]
  %620 = call i32 @iter_store_parentside_neg(%struct.TYPE_26__* %591, %struct.TYPE_27__* %593, i32* %619)
  br label %621

621:                                              ; preds = %618, %583, %578, %573
  %622 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %623 = call i32 @errinf(%struct.module_qstate* %622, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0))
  %624 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %625 = load %struct.iter_qstate*, %struct.iter_qstate** %7, align 8
  %626 = getelementptr inbounds %struct.iter_qstate, %struct.iter_qstate* %625, i32 0, i32 4
  %627 = load %struct.TYPE_25__*, %struct.TYPE_25__** %626, align 8
  %628 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  %630 = call i32 @errinf_dname(%struct.module_qstate* %624, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %629)
  %631 = load i32, i32* @VERB_QUERY, align 4
  %632 = call i32 (i32, i8*, ...) @verbose(i32 %631, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.19, i64 0, i64 0))
  %633 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %634 = load i32, i32* %9, align 4
  %635 = load i32, i32* @LDNS_RCODE_SERVFAIL, align 4
  %636 = call i32 @error_response_cache(%struct.module_qstate* %633, i32 %634, i32 %635)
  store i32 %636, i32* %5, align 4
  br label %637

637:                                              ; preds = %621, %550, %532, %490, %361, %334, %317, %292, %271, %251, %220, %42
  %638 = load i32, i32* %5, align 4
  ret i32 %638
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @log_assert(%struct.TYPE_25__*) #1

declare dso_local i32 @can_have_last_resort(%struct.TYPE_26__*, i32, i32, i32, i32*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @errinf_dname(%struct.module_qstate*, i8*, i32) #1

declare dso_local i32 @error_response_cache(%struct.module_qstate*, i32, i32) #1

declare dso_local i64 @dname_is_root(i32) #1

declare dso_local %struct.delegpt* @hints_lookup_root(i32, i32) #1

declare dso_local i32 @delegpt_add_ns(%struct.TYPE_25__*, i32, i32, i32) #1

declare dso_local i32 @delegpt_add_addr(%struct.TYPE_25__*, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @iter_lookup_parent_NS_from_cache(%struct.TYPE_26__*, %struct.TYPE_25__*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @next_state(%struct.iter_qstate*, i32) #1

declare dso_local i32 @cache_fill_missing(%struct.TYPE_26__*, i32, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i64 @iter_lookup_parent_glue_from_cache(%struct.TYPE_26__*, %struct.TYPE_25__*, i32, %struct.TYPE_27__*) #1

declare dso_local i64 @delegpt_count_missing_targets(%struct.TYPE_25__*) #1

declare dso_local i32 @query_for_targets(%struct.module_qstate*, %struct.iter_qstate*, %struct.iter_env*, i32, i32, i32*) #1

declare dso_local i32 @error_response(%struct.module_qstate*, i32, i32) #1

declare dso_local i32 @target_count_increase(%struct.iter_qstate*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dname_str(i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @iter_mark_pside_cycle_targets(%struct.module_qstate*, %struct.TYPE_25__*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @generate_parentside_target_query(%struct.module_qstate*, %struct.iter_qstate*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @iter_store_parentside_neg(%struct.TYPE_26__*, %struct.TYPE_27__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
