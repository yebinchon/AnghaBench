; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_process_dlv_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_process_dlv_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_19__*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__*, i64* }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 }
%struct.val_qstate = type { i8*, i32, i32, %struct.ub_packed_rrset_key* }
%struct.ub_packed_rrset_key = type { %struct.TYPE_16__, %struct.TYPE_15__ }
%struct.TYPE_16__ = type { %struct.TYPE_20__*, %struct.ub_packed_rrset_key* }
%struct.TYPE_20__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_20__* }
%struct.dns_msg = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i64, i32, %struct.TYPE_20__**, i32 }
%struct.query_info = type { i64 }
%struct.val_env = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"process dlv response to super\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@dlv_error = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"response is error\00", align 1
@sec_status_secure = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"response is not secure, %s\00", align 1
@LDNS_RR_TYPE_DLV = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"out of memory in process_dlv\00", align 1
@dlv_success = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"nsec error\00", align 1
@dlv_there_is_no_dlv = common dso_local global i8* null, align 8
@dlv_ask_higher = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.module_qstate*, %struct.val_qstate*, i32, i32, %struct.dns_msg*, %struct.query_info*)* @process_dlv_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_dlv_response(%struct.module_qstate* %0, %struct.val_qstate* %1, i32 %2, i32 %3, %struct.dns_msg* %4, %struct.query_info* %5) #0 {
  %7 = alloca %struct.module_qstate*, align 8
  %8 = alloca %struct.val_qstate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dns_msg*, align 8
  %12 = alloca %struct.query_info*, align 8
  %13 = alloca %struct.val_env*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %7, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.dns_msg* %4, %struct.dns_msg** %11, align 8
  store %struct.query_info* %5, %struct.query_info** %12, align 8
  %14 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %15 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %14, i32 0, i32 0
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %9, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.val_env*
  store %struct.val_env* %23, %struct.val_env** %13, align 8
  %24 = load i32, i32* @VERB_ALGO, align 4
  %25 = call i32 (i32, i8*, ...) @verbose(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %6
  %30 = load i8*, i8** @dlv_error, align 8
  %31 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %32 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* @VERB_ALGO, align 4
  %34 = call i32 (i32, i8*, ...) @verbose(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %281

35:                                               ; preds = %6
  %36 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %37 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %36, i32 0, i32 0
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @sec_status_secure, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %55

43:                                               ; preds = %35
  %44 = load i8*, i8** @dlv_error, align 8
  %45 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %46 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @VERB_ALGO, align 4
  %48 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %49 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %48, i32 0, i32 0
  %50 = load %struct.TYPE_21__*, %struct.TYPE_21__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @sec_status_to_string(i64 %52)
  %54 = call i32 (i32, i8*, ...) @verbose(i32 %47, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  br label %281

55:                                               ; preds = %35
  %56 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %57 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %56, i32 0, i32 0
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @FLAGS_GET_RCODE(i32 %60)
  %62 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %234

64:                                               ; preds = %55
  %65 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %66 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %65, i32 0, i32 0
  %67 = load %struct.TYPE_21__*, %struct.TYPE_21__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %234

71:                                               ; preds = %64
  %72 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %73 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %72, i32 0, i32 0
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @sec_status_secure, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %234

79:                                               ; preds = %71
  %80 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %81 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %80, i32 0, i32 0
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 2
  %84 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %84, i64 0
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @ntohs(i32 %89)
  %91 = load i64, i64* @LDNS_RR_TYPE_DLV, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %234

93:                                               ; preds = %79
  %94 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %95 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %94, i32 0, i32 0
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %98, i64 0
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @ntohs(i32 %103)
  %105 = load %struct.query_info*, %struct.query_info** %12, align 8
  %106 = getelementptr inbounds %struct.query_info, %struct.query_info* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %109, label %234

109:                                              ; preds = %93
  %110 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %111 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %110, i32 0, i32 0
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  %114 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %114, i64 0
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %121 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @query_dname_compare(i32 %119, i32 %122)
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %234

125:                                              ; preds = %109
  %126 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %127 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %130 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %129, i32 0, i32 0
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %133, i64 0
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = call %struct.TYPE_20__* @regional_alloc_init(i32 %128, %struct.TYPE_20__* %135, i32 32)
  %137 = bitcast %struct.TYPE_20__* %136 to %struct.ub_packed_rrset_key*
  %138 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %139 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %138, i32 0, i32 3
  store %struct.ub_packed_rrset_key* %137, %struct.ub_packed_rrset_key** %139, align 8
  %140 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %141 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %140, i32 0, i32 3
  %142 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %141, align 8
  %143 = icmp ne %struct.ub_packed_rrset_key* %142, null
  br i1 %143, label %146, label %144

144:                                              ; preds = %125
  %145 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %281

146:                                              ; preds = %125
  %147 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %148 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %147, i32 0, i32 3
  %149 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %148, align 8
  %150 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %151 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %150, i32 0, i32 3
  %152 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %151, align 8
  %153 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  store %struct.ub_packed_rrset_key* %149, %struct.ub_packed_rrset_key** %154, align 8
  %155 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %156 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %159 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %158, i32 0, i32 3
  %160 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %159, align 8
  %161 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_20__*, %struct.TYPE_20__** %162, align 8
  %164 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %165 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %164, i32 0, i32 3
  %166 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %165, align 8
  %167 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call %struct.TYPE_20__* @regional_alloc_init(i32 %157, %struct.TYPE_20__* %163, i32 %169)
  %171 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %172 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %171, i32 0, i32 3
  %173 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %172, align 8
  %174 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  store %struct.TYPE_20__* %170, %struct.TYPE_20__** %175, align 8
  %176 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %177 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %176, i32 0, i32 3
  %178 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %177, align 8
  %179 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_20__*, %struct.TYPE_20__** %180, align 8
  %182 = icmp ne %struct.TYPE_20__* %181, null
  br i1 %182, label %188, label %183

183:                                              ; preds = %146
  %184 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %185 = load i8*, i8** @dlv_error, align 8
  %186 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %187 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %186, i32 0, i32 0
  store i8* %185, i8** %187, align 8
  br label %281

188:                                              ; preds = %146
  %189 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %190 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %193 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %192, i32 0, i32 3
  %194 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %193, align 8
  %195 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 0
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  %198 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %199 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %198, i32 0, i32 3
  %200 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %199, align 8
  %201 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %202, align 8
  %204 = call i32 @packed_rrset_sizeof(%struct.TYPE_20__* %203)
  %205 = call %struct.TYPE_20__* @regional_alloc_init(i32 %191, %struct.TYPE_20__* %197, i32 %204)
  %206 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %207 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %206, i32 0, i32 3
  %208 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %207, align 8
  %209 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  store %struct.TYPE_20__* %205, %struct.TYPE_20__** %210, align 8
  %211 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %212 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %211, i32 0, i32 3
  %213 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %212, align 8
  %214 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_20__*, %struct.TYPE_20__** %215, align 8
  %217 = icmp ne %struct.TYPE_20__* %216, null
  br i1 %217, label %223, label %218

218:                                              ; preds = %188
  %219 = call i32 @log_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %220 = load i8*, i8** @dlv_error, align 8
  %221 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %222 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %221, i32 0, i32 0
  store i8* %220, i8** %222, align 8
  br label %281

223:                                              ; preds = %188
  %224 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %225 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %224, i32 0, i32 3
  %226 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %225, align 8
  %227 = getelementptr inbounds %struct.ub_packed_rrset_key, %struct.ub_packed_rrset_key* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %228, align 8
  %230 = call i32 @packed_rrset_ptr_fixup(%struct.TYPE_20__* %229)
  %231 = load i8*, i8** @dlv_success, align 8
  %232 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %233 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %232, i32 0, i32 0
  store i8* %231, i8** %233, align 8
  br label %281

234:                                              ; preds = %109, %93, %79, %71, %64, %55
  %235 = load %struct.val_env*, %struct.val_env** %13, align 8
  %236 = getelementptr inbounds %struct.val_env, %struct.val_env* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %239 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %238, i32 0, i32 0
  %240 = load %struct.TYPE_21__*, %struct.TYPE_21__** %239, align 8
  %241 = call i32 @val_neg_addreply(i32 %237, %struct.TYPE_21__* %240)
  %242 = load %struct.query_info*, %struct.query_info** %12, align 8
  %243 = load %struct.dns_msg*, %struct.dns_msg** %11, align 8
  %244 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %243, i32 0, i32 0
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %244, align 8
  %246 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %247 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %246, i32 0, i32 1
  %248 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %249 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %248, i32 0, i32 2
  %250 = call i32 @val_nsec_check_dlv(%struct.query_info* %242, %struct.TYPE_21__* %245, i32* %247, i32* %249)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %258, label %252

252:                                              ; preds = %234
  %253 = load i8*, i8** @dlv_error, align 8
  %254 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %255 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %254, i32 0, i32 0
  store i8* %253, i8** %255, align 8
  %256 = load i32, i32* @VERB_ALGO, align 4
  %257 = call i32 (i32, i8*, ...) @verbose(i32 %256, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0))
  br label %281

258:                                              ; preds = %234
  %259 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %260 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = load %struct.module_qstate*, %struct.module_qstate** %7, align 8
  %263 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %262, i32 0, i32 0
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %264, i32 0, i32 0
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 0
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @dname_subdomain_c(i32 %261, i32 %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %277, label %273

273:                                              ; preds = %258
  %274 = load i8*, i8** @dlv_there_is_no_dlv, align 8
  %275 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %276 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %275, i32 0, i32 0
  store i8* %274, i8** %276, align 8
  br label %281

277:                                              ; preds = %258
  %278 = load i8*, i8** @dlv_ask_higher, align 8
  %279 = load %struct.val_qstate*, %struct.val_qstate** %8, align 8
  %280 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %279, i32 0, i32 0
  store i8* %278, i8** %280, align 8
  br label %281

281:                                              ; preds = %277, %273, %252, %223, %218, %183, %144, %43, %29
  ret void
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @sec_status_to_string(i64) #1

declare dso_local i32 @FLAGS_GET_RCODE(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local %struct.TYPE_20__* @regional_alloc_init(i32, %struct.TYPE_20__*, i32) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @packed_rrset_sizeof(%struct.TYPE_20__*) #1

declare dso_local i32 @packed_rrset_ptr_fixup(%struct.TYPE_20__*) #1

declare dso_local i32 @val_neg_addreply(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @val_nsec_check_dlv(%struct.query_info*, %struct.TYPE_21__*, i32*, i32*) #1

declare dso_local i32 @dname_subdomain_c(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
