; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_processValidate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_processValidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, %struct.TYPE_36__*, i32*, i32, i32 }
%struct.TYPE_36__ = type { i32 }
%struct.val_qstate = type { i64, %struct.TYPE_35__*, %struct.TYPE_37__*, i32, %struct.TYPE_33__*, i32, i32*, i32 }
%struct.TYPE_35__ = type { i64, i32, i32, i32, i64, i64 }
%struct.TYPE_37__ = type { i32, i32 }
%struct.TYPE_33__ = type { %struct.TYPE_34__* }
%struct.TYPE_34__ = type { i32, i32, i32, i64, i64 }
%struct.val_env = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"validate: no key entry, failed\00", align 1
@VAL_FINISHED_STATE = common dso_local global i32 0, align 4
@VERB_DETAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Verified that %sresponse is INSECURE\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"unsigned \00", align 1
@sec_status_insecure = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [49 x i8] c"Could not establish a chain of trust to keys for\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@sec_status_bogus = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"while building chain of trust\00", align 1
@VAL_MAX_RESTART_COUNT = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [42 x i8] c"processValidate: state has no signer name\00", align 1
@.str.7 = private unnamed_addr constant [72 x i8] c"Could not establish validation of INSECURE status of unsigned response.\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"no signatures\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"Validate: message contains bad rrsets\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Validating a positive response\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"validate(positive): %s\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Validating a nodata response\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"validate(nodata): %s\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"Validating a nxdomain response\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"validate(nxdomain): %s\00", align 1
@.str.16 = private unnamed_addr constant [28 x i8] c"Validating a cname response\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"validate(cname): %s\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"Validating a cname noanswer response\00", align 1
@.str.19 = private unnamed_addr constant [29 x i8] c"validate(cname_noanswer): %s\00", align 1
@.str.20 = private unnamed_addr constant [31 x i8] c"Validating a referral response\00", align 1
@.str.21 = private unnamed_addr constant [23 x i8] c"validate(referral): %s\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"Validating a positive ANY response\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"validate(positive_any): %s\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"validate: unhandled response subtype: %d\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"wildcard\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"proof failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32)* @processValidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processValidate(%struct.module_qstate* %0, %struct.val_qstate* %1, %struct.val_env* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.val_qstate*, align 8
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %7, align 8
  store %struct.val_env* %2, %struct.val_env** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %13 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %12, i32 0, i32 2
  %14 = load %struct.TYPE_37__*, %struct.TYPE_37__** %13, align 8
  %15 = icmp ne %struct.TYPE_37__* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @VERB_ALGO, align 4
  %18 = call i32 (i32, i8*, ...) @verbose(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @val_error(%struct.module_qstate* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %464

22:                                               ; preds = %4
  %23 = load i32, i32* @VAL_FINISHED_STATE, align 4
  %24 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %25 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %27 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %26, i32 0, i32 2
  %28 = load %struct.TYPE_37__*, %struct.TYPE_37__** %27, align 8
  %29 = call i64 @key_entry_isnull(%struct.TYPE_37__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %70

31:                                               ; preds = %22
  %32 = load i32, i32* @VERB_DETAIL, align 4
  %33 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %34 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %33, i32 0, i32 6
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %39 = call i32 (i32, i8*, ...) @verbose(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  %40 = load i64, i64* @sec_status_insecure, align 8
  %41 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %42 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %41, i32 0, i32 1
  %43 = load %struct.TYPE_35__*, %struct.TYPE_35__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %43, i32 0, i32 0
  store i64 %40, i64* %44, align 8
  %45 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %46 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %45, i32 0, i32 1
  %47 = load %struct.TYPE_35__*, %struct.TYPE_35__** %46, align 8
  %48 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %49 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %48, i32 0, i32 2
  %50 = load %struct.TYPE_37__*, %struct.TYPE_37__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %54 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %53, i32 0, i32 1
  %55 = load %struct.TYPE_36__*, %struct.TYPE_36__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %59 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %58, i32 0, i32 1
  %60 = load %struct.TYPE_36__*, %struct.TYPE_36__** %59, align 8
  %61 = call i32 @val_mark_insecure(%struct.TYPE_35__* %47, i32 %52, i32 %57, %struct.TYPE_36__* %60)
  %62 = load %struct.val_env*, %struct.val_env** %8, align 8
  %63 = getelementptr inbounds %struct.val_env, %struct.val_env* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %66 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %65, i32 0, i32 2
  %67 = load %struct.TYPE_37__*, %struct.TYPE_37__** %66, align 8
  %68 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %69 = call i32 @key_cache_insert(i32 %64, %struct.TYPE_37__* %67, %struct.module_qstate* %68)
  store i32 1, i32* %5, align 4
  br label %464

70:                                               ; preds = %22
  %71 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %72 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %71, i32 0, i32 2
  %73 = load %struct.TYPE_37__*, %struct.TYPE_37__** %72, align 8
  %74 = call i64 @key_entry_isbad(%struct.TYPE_37__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %112

76:                                               ; preds = %70
  %77 = load i32, i32* @VERB_DETAIL, align 4
  %78 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %79 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %78, i32 0, i32 2
  %80 = load %struct.TYPE_37__*, %struct.TYPE_37__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %84 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %85 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %84, i32 0, i32 2
  %86 = load %struct.TYPE_37__*, %struct.TYPE_37__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @log_nametypeclass(i32 %77, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %82, i32 %83, i32 %88)
  %90 = load i64, i64* @sec_status_bogus, align 8
  %91 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %92 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %91, i32 0, i32 1
  %93 = load %struct.TYPE_35__*, %struct.TYPE_35__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %93, i32 0, i32 0
  store i64 %90, i64* %94, align 8
  %95 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %96 = call i32 @errinf(%struct.module_qstate* %95, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %98 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @VAL_MAX_RESTART_COUNT, align 8
  %101 = icmp sge i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %76
  %103 = load %struct.val_env*, %struct.val_env** %8, align 8
  %104 = getelementptr inbounds %struct.val_env, %struct.val_env* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %107 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %106, i32 0, i32 2
  %108 = load %struct.TYPE_37__*, %struct.TYPE_37__** %107, align 8
  %109 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %110 = call i32 @key_cache_insert(i32 %105, %struct.TYPE_37__* %108, %struct.module_qstate* %109)
  br label %111

111:                                              ; preds = %102, %76
  store i32 1, i32* %5, align 4
  br label %464

112:                                              ; preds = %70
  %113 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %114 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %136

117:                                              ; preds = %112
  %118 = load i32, i32* @VERB_ALGO, align 4
  %119 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %120 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %119, i32 0, i32 3
  %121 = call i32 @log_query_info(i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32* %120)
  %122 = load i32, i32* @VERB_DETAIL, align 4
  %123 = call i32 (i32, i8*, ...) @verbose(i32 %122, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.7, i64 0, i64 0))
  %124 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %125 = call i32 @errinf(%struct.module_qstate* %124, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %126 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %127 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %128 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @errinf_origin(%struct.module_qstate* %126, i32 %129)
  %131 = load i64, i64* @sec_status_bogus, align 8
  %132 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %133 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %132, i32 0, i32 1
  %134 = load %struct.TYPE_35__*, %struct.TYPE_35__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %134, i32 0, i32 0
  store i64 %131, i64* %135, align 8
  store i32 1, i32* %5, align 4
  br label %464

136:                                              ; preds = %112
  %137 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %138 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %141 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %140, i32 0, i32 3
  %142 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %143 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %142, i32 0, i32 3
  %144 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %145 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %144, i32 0, i32 4
  %146 = load %struct.TYPE_33__*, %struct.TYPE_33__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_34__*, %struct.TYPE_34__** %147, align 8
  %149 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %150 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @val_classify_response(i32 %139, i32* %141, i32* %143, %struct.TYPE_34__* %148, i32 %151)
  store i32 %152, i32* %10, align 4
  %153 = load i32, i32* %10, align 4
  %154 = icmp ne i32 %153, 128
  br i1 %154, label %155, label %165

155:                                              ; preds = %136
  %156 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %157 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %156, i32 0, i32 1
  %158 = load %struct.TYPE_35__*, %struct.TYPE_35__** %157, align 8
  %159 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %160 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %159, i32 0, i32 4
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_34__*, %struct.TYPE_34__** %162, align 8
  %164 = call i32 @remove_spurious_authority(%struct.TYPE_35__* %158, %struct.TYPE_34__* %163)
  br label %165

165:                                              ; preds = %155, %136
  %166 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %167 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %168 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %167, i32 0, i32 1
  %169 = load %struct.TYPE_36__*, %struct.TYPE_36__** %168, align 8
  %170 = load %struct.val_env*, %struct.val_env** %8, align 8
  %171 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %172 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %171, i32 0, i32 3
  %173 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %174 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %173, i32 0, i32 1
  %175 = load %struct.TYPE_35__*, %struct.TYPE_35__** %174, align 8
  %176 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %177 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %176, i32 0, i32 2
  %178 = load %struct.TYPE_37__*, %struct.TYPE_37__** %177, align 8
  %179 = call i32 @validate_msg_signatures(%struct.module_qstate* %166, %struct.TYPE_36__* %169, %struct.val_env* %170, i32* %172, %struct.TYPE_35__* %175, %struct.TYPE_37__* %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %247, label %181

181:                                              ; preds = %165
  %182 = load i32, i32* %10, align 4
  %183 = icmp eq i32 %182, 129
  br i1 %183, label %190, label %184

184:                                              ; preds = %181
  %185 = load i32, i32* %10, align 4
  %186 = icmp eq i32 %185, 134
  br i1 %186, label %190, label %187

187:                                              ; preds = %184
  %188 = load i32, i32* %10, align 4
  %189 = icmp eq i32 %188, 133
  br i1 %189, label %190, label %243

190:                                              ; preds = %187, %184, %181
  %191 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %192 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %191, i32 0, i32 4
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_34__*, %struct.TYPE_34__** %194, align 8
  %196 = call i64 @detect_wrongly_truncated(%struct.TYPE_34__* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %243

198:                                              ; preds = %190
  %199 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %200 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %199, i32 0, i32 4
  %201 = load %struct.TYPE_33__*, %struct.TYPE_33__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %203, i32 0, i32 4
  store i64 0, i64* %204, align 8
  %205 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %206 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %205, i32 0, i32 4
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %207, i32 0, i32 0
  %209 = load %struct.TYPE_34__*, %struct.TYPE_34__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %209, i32 0, i32 3
  store i64 0, i64* %210, align 8
  %211 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %212 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %211, i32 0, i32 4
  %213 = load %struct.TYPE_33__*, %struct.TYPE_33__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_34__*, %struct.TYPE_34__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %219 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %218, i32 0, i32 4
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 0
  %222 = load %struct.TYPE_34__*, %struct.TYPE_34__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %222, i32 0, i32 2
  store i32 %217, i32* %223, align 8
  %224 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %225 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %224, i32 0, i32 1
  %226 = load %struct.TYPE_35__*, %struct.TYPE_35__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %226, i32 0, i32 5
  store i64 0, i64* %227, align 8
  %228 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %229 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %228, i32 0, i32 1
  %230 = load %struct.TYPE_35__*, %struct.TYPE_35__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %230, i32 0, i32 4
  store i64 0, i64* %231, align 8
  %232 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %233 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %232, i32 0, i32 1
  %234 = load %struct.TYPE_35__*, %struct.TYPE_35__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %238 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %237, i32 0, i32 1
  %239 = load %struct.TYPE_35__*, %struct.TYPE_35__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %239, i32 0, i32 3
  store i32 %236, i32* %240, align 8
  %241 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %242 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %241, i32 0, i32 2
  store i32* null, i32** %242, align 8
  br label %246

243:                                              ; preds = %190, %187
  %244 = load i32, i32* @VERB_DETAIL, align 4
  %245 = call i32 (i32, i8*, ...) @verbose(i32 %244, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %464

246:                                              ; preds = %198
  br label %247

247:                                              ; preds = %246, %165
  %248 = load i32, i32* %10, align 4
  switch i32 %248, label %433 [
    i32 129, label %249
    i32 130, label %273
    i32 131, label %297
    i32 133, label %346
    i32 132, label %370
    i32 128, label %394
    i32 134, label %409
  ]

249:                                              ; preds = %247
  %250 = load i32, i32* @VERB_ALGO, align 4
  %251 = call i32 (i32, i8*, ...) @verbose(i32 %250, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  %252 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %253 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %252, i32 0, i32 1
  %254 = load %struct.TYPE_36__*, %struct.TYPE_36__** %253, align 8
  %255 = load %struct.val_env*, %struct.val_env** %8, align 8
  %256 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %257 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %256, i32 0, i32 3
  %258 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %259 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %258, i32 0, i32 1
  %260 = load %struct.TYPE_35__*, %struct.TYPE_35__** %259, align 8
  %261 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %262 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %261, i32 0, i32 2
  %263 = load %struct.TYPE_37__*, %struct.TYPE_37__** %262, align 8
  %264 = call i32 @validate_positive_response(%struct.TYPE_36__* %254, %struct.val_env* %255, i32* %257, %struct.TYPE_35__* %260, %struct.TYPE_37__* %263)
  %265 = load i32, i32* @VERB_DETAIL, align 4
  %266 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %267 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %266, i32 0, i32 1
  %268 = load %struct.TYPE_35__*, %struct.TYPE_35__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = call i8* @sec_status_to_string(i64 %270)
  %272 = call i32 (i32, i8*, ...) @verbose(i32 %265, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i8* %271)
  br label %436

273:                                              ; preds = %247
  %274 = load i32, i32* @VERB_ALGO, align 4
  %275 = call i32 (i32, i8*, ...) @verbose(i32 %274, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %276 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %277 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %276, i32 0, i32 1
  %278 = load %struct.TYPE_36__*, %struct.TYPE_36__** %277, align 8
  %279 = load %struct.val_env*, %struct.val_env** %8, align 8
  %280 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %281 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %280, i32 0, i32 3
  %282 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %283 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %282, i32 0, i32 1
  %284 = load %struct.TYPE_35__*, %struct.TYPE_35__** %283, align 8
  %285 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %286 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %285, i32 0, i32 2
  %287 = load %struct.TYPE_37__*, %struct.TYPE_37__** %286, align 8
  %288 = call i32 @validate_nodata_response(%struct.TYPE_36__* %278, %struct.val_env* %279, i32* %281, %struct.TYPE_35__* %284, %struct.TYPE_37__* %287)
  %289 = load i32, i32* @VERB_DETAIL, align 4
  %290 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %291 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %290, i32 0, i32 1
  %292 = load %struct.TYPE_35__*, %struct.TYPE_35__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = call i8* @sec_status_to_string(i64 %294)
  %296 = call i32 (i32, i8*, ...) @verbose(i32 %289, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i8* %295)
  br label %436

297:                                              ; preds = %247
  %298 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %299 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %298, i32 0, i32 4
  %300 = load %struct.TYPE_33__*, %struct.TYPE_33__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %300, i32 0, i32 0
  %302 = load %struct.TYPE_34__*, %struct.TYPE_34__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i64 @FLAGS_GET_RCODE(i32 %304)
  %306 = trunc i64 %305 to i32
  store i32 %306, i32* %11, align 4
  %307 = load i32, i32* @VERB_ALGO, align 4
  %308 = call i32 (i32, i8*, ...) @verbose(i32 %307, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i64 0, i64 0))
  %309 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %310 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %309, i32 0, i32 1
  %311 = load %struct.TYPE_36__*, %struct.TYPE_36__** %310, align 8
  %312 = load %struct.val_env*, %struct.val_env** %8, align 8
  %313 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %314 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %313, i32 0, i32 3
  %315 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %316 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %315, i32 0, i32 1
  %317 = load %struct.TYPE_35__*, %struct.TYPE_35__** %316, align 8
  %318 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %319 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %318, i32 0, i32 2
  %320 = load %struct.TYPE_37__*, %struct.TYPE_37__** %319, align 8
  %321 = call i32 @validate_nameerror_response(%struct.TYPE_36__* %311, %struct.val_env* %312, i32* %314, %struct.TYPE_35__* %317, %struct.TYPE_37__* %320, i32* %11)
  %322 = load i32, i32* @VERB_DETAIL, align 4
  %323 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %324 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %323, i32 0, i32 1
  %325 = load %struct.TYPE_35__*, %struct.TYPE_35__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = call i8* @sec_status_to_string(i64 %327)
  %329 = call i32 (i32, i8*, ...) @verbose(i32 %322, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.15, i64 0, i64 0), i8* %328)
  %330 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %331 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %330, i32 0, i32 4
  %332 = load %struct.TYPE_33__*, %struct.TYPE_33__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %332, i32 0, i32 0
  %334 = load %struct.TYPE_34__*, %struct.TYPE_34__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %334, i32 0, i32 0
  %336 = load i32, i32* %335, align 8
  %337 = load i32, i32* %11, align 4
  %338 = call i32 @FLAGS_SET_RCODE(i32 %336, i32 %337)
  %339 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %340 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %339, i32 0, i32 1
  %341 = load %struct.TYPE_35__*, %struct.TYPE_35__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %341, i32 0, i32 1
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* %11, align 4
  %345 = call i32 @FLAGS_SET_RCODE(i32 %343, i32 %344)
  br label %436

346:                                              ; preds = %247
  %347 = load i32, i32* @VERB_ALGO, align 4
  %348 = call i32 (i32, i8*, ...) @verbose(i32 %347, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.16, i64 0, i64 0))
  %349 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %350 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %349, i32 0, i32 1
  %351 = load %struct.TYPE_36__*, %struct.TYPE_36__** %350, align 8
  %352 = load %struct.val_env*, %struct.val_env** %8, align 8
  %353 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %354 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %353, i32 0, i32 3
  %355 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %356 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %355, i32 0, i32 1
  %357 = load %struct.TYPE_35__*, %struct.TYPE_35__** %356, align 8
  %358 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %359 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %358, i32 0, i32 2
  %360 = load %struct.TYPE_37__*, %struct.TYPE_37__** %359, align 8
  %361 = call i32 @validate_cname_response(%struct.TYPE_36__* %351, %struct.val_env* %352, i32* %354, %struct.TYPE_35__* %357, %struct.TYPE_37__* %360)
  %362 = load i32, i32* @VERB_DETAIL, align 4
  %363 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %364 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %363, i32 0, i32 1
  %365 = load %struct.TYPE_35__*, %struct.TYPE_35__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %365, i32 0, i32 0
  %367 = load i64, i64* %366, align 8
  %368 = call i8* @sec_status_to_string(i64 %367)
  %369 = call i32 (i32, i8*, ...) @verbose(i32 %362, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i8* %368)
  br label %436

370:                                              ; preds = %247
  %371 = load i32, i32* @VERB_ALGO, align 4
  %372 = call i32 (i32, i8*, ...) @verbose(i32 %371, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i64 0, i64 0))
  %373 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %374 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %373, i32 0, i32 1
  %375 = load %struct.TYPE_36__*, %struct.TYPE_36__** %374, align 8
  %376 = load %struct.val_env*, %struct.val_env** %8, align 8
  %377 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %378 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %377, i32 0, i32 3
  %379 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %380 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %379, i32 0, i32 1
  %381 = load %struct.TYPE_35__*, %struct.TYPE_35__** %380, align 8
  %382 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %383 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %382, i32 0, i32 2
  %384 = load %struct.TYPE_37__*, %struct.TYPE_37__** %383, align 8
  %385 = call i32 @validate_cname_noanswer_response(%struct.TYPE_36__* %375, %struct.val_env* %376, i32* %378, %struct.TYPE_35__* %381, %struct.TYPE_37__* %384)
  %386 = load i32, i32* @VERB_DETAIL, align 4
  %387 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %388 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %387, i32 0, i32 1
  %389 = load %struct.TYPE_35__*, %struct.TYPE_35__** %388, align 8
  %390 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = call i8* @sec_status_to_string(i64 %391)
  %393 = call i32 (i32, i8*, ...) @verbose(i32 %386, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.19, i64 0, i64 0), i8* %392)
  br label %436

394:                                              ; preds = %247
  %395 = load i32, i32* @VERB_ALGO, align 4
  %396 = call i32 (i32, i8*, ...) @verbose(i32 %395, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.20, i64 0, i64 0))
  %397 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %398 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %397, i32 0, i32 1
  %399 = load %struct.TYPE_35__*, %struct.TYPE_35__** %398, align 8
  %400 = call i32 @validate_referral_response(%struct.TYPE_35__* %399)
  %401 = load i32, i32* @VERB_DETAIL, align 4
  %402 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %403 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %402, i32 0, i32 1
  %404 = load %struct.TYPE_35__*, %struct.TYPE_35__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = call i8* @sec_status_to_string(i64 %406)
  %408 = call i32 (i32, i8*, ...) @verbose(i32 %401, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.21, i64 0, i64 0), i8* %407)
  br label %436

409:                                              ; preds = %247
  %410 = load i32, i32* @VERB_ALGO, align 4
  %411 = call i32 (i32, i8*, ...) @verbose(i32 %410, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0))
  %412 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %413 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %412, i32 0, i32 1
  %414 = load %struct.TYPE_36__*, %struct.TYPE_36__** %413, align 8
  %415 = load %struct.val_env*, %struct.val_env** %8, align 8
  %416 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %417 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %416, i32 0, i32 3
  %418 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %419 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %418, i32 0, i32 1
  %420 = load %struct.TYPE_35__*, %struct.TYPE_35__** %419, align 8
  %421 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %422 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %421, i32 0, i32 2
  %423 = load %struct.TYPE_37__*, %struct.TYPE_37__** %422, align 8
  %424 = call i32 @validate_any_response(%struct.TYPE_36__* %414, %struct.val_env* %415, i32* %417, %struct.TYPE_35__* %420, %struct.TYPE_37__* %423)
  %425 = load i32, i32* @VERB_DETAIL, align 4
  %426 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %427 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %426, i32 0, i32 1
  %428 = load %struct.TYPE_35__*, %struct.TYPE_35__** %427, align 8
  %429 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %428, i32 0, i32 0
  %430 = load i64, i64* %429, align 8
  %431 = call i8* @sec_status_to_string(i64 %430)
  %432 = call i32 (i32, i8*, ...) @verbose(i32 %425, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0), i8* %431)
  br label %436

433:                                              ; preds = %247
  %434 = load i32, i32* %10, align 4
  %435 = call i32 @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i32 %434)
  br label %436

436:                                              ; preds = %433, %409, %394, %370, %346, %297, %273, %249
  %437 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %438 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %437, i32 0, i32 1
  %439 = load %struct.TYPE_35__*, %struct.TYPE_35__** %438, align 8
  %440 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @sec_status_bogus, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %444, label %463

444:                                              ; preds = %436
  %445 = load i32, i32* %10, align 4
  %446 = icmp eq i32 %445, 129
  br i1 %446, label %447, label %450

447:                                              ; preds = %444
  %448 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %449 = call i32 @errinf(%struct.module_qstate* %448, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  br label %455

450:                                              ; preds = %444
  %451 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %452 = load i32, i32* %10, align 4
  %453 = call i8* @val_classification_to_string(i32 %452)
  %454 = call i32 @errinf(%struct.module_qstate* %451, i8* %453)
  br label %455

455:                                              ; preds = %450, %447
  %456 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %457 = call i32 @errinf(%struct.module_qstate* %456, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.26, i64 0, i64 0))
  %458 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %459 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %460 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = call i32 @errinf_origin(%struct.module_qstate* %458, i32 %461)
  br label %463

463:                                              ; preds = %455, %436
  store i32 1, i32* %5, align 4
  br label %464

464:                                              ; preds = %463, %243, %117, %111, %31, %16
  %465 = load i32, i32* %5, align 4
  ret i32 %465
}

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @val_error(%struct.module_qstate*, i32) #1

declare dso_local i64 @key_entry_isnull(%struct.TYPE_37__*) #1

declare dso_local i32 @val_mark_insecure(%struct.TYPE_35__*, i32, i32, %struct.TYPE_36__*) #1

declare dso_local i32 @key_cache_insert(i32, %struct.TYPE_37__*, %struct.module_qstate*) #1

declare dso_local i64 @key_entry_isbad(%struct.TYPE_37__*) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @log_query_info(i32, i8*, i32*) #1

declare dso_local i32 @errinf_origin(%struct.module_qstate*, i32) #1

declare dso_local i32 @val_classify_response(i32, i32*, i32*, %struct.TYPE_34__*, i32) #1

declare dso_local i32 @remove_spurious_authority(%struct.TYPE_35__*, %struct.TYPE_34__*) #1

declare dso_local i32 @validate_msg_signatures(%struct.module_qstate*, %struct.TYPE_36__*, %struct.val_env*, i32*, %struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i64 @detect_wrongly_truncated(%struct.TYPE_34__*) #1

declare dso_local i32 @validate_positive_response(%struct.TYPE_36__*, %struct.val_env*, i32*, %struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i8* @sec_status_to_string(i64) #1

declare dso_local i32 @validate_nodata_response(%struct.TYPE_36__*, %struct.val_env*, i32*, %struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i64 @FLAGS_GET_RCODE(i32) #1

declare dso_local i32 @validate_nameerror_response(%struct.TYPE_36__*, %struct.val_env*, i32*, %struct.TYPE_35__*, %struct.TYPE_37__*, i32*) #1

declare dso_local i32 @FLAGS_SET_RCODE(i32, i32) #1

declare dso_local i32 @validate_cname_response(%struct.TYPE_36__*, %struct.val_env*, i32*, %struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i32 @validate_cname_noanswer_response(%struct.TYPE_36__*, %struct.val_env*, i32*, %struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i32 @validate_referral_response(%struct.TYPE_35__*) #1

declare dso_local i32 @validate_any_response(%struct.TYPE_36__*, %struct.val_env*, i32*, %struct.TYPE_35__*, %struct.TYPE_37__*) #1

declare dso_local i32 @log_err(i8*, i32) #1

declare dso_local i8* @val_classification_to_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
