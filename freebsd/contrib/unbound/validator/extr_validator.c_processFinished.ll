; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_processFinished.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_processFinished.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, i32*, %struct.TYPE_19__*, i32, %struct.TYPE_23__*, i32, i32, %struct.TYPE_22__, i32*, i32*, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i64, i64, i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_17__*, %struct.TYPE_18__*, i32 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { i32, i64, i64, i64, i32, i64 }
%struct.TYPE_22__ = type { i64, i64*, i32 }
%struct.val_qstate = type { i64, i32, i32, %struct.TYPE_19__*, %struct.TYPE_22__, i8*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.val_env = type { i64 }

@sec_status_insecure = common dso_local global i64 0, align 8
@sec_status_indeterminate = common dso_local global i64 0, align 8
@VAL_CLASS_REFERRAL = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"validator: go to next rrset\00", align 1
@sec_status_unchecked = common dso_local global i8* null, align 8
@VAL_INIT_STATE = common dso_local global i8* null, align 8
@sec_status_bogus = common dso_local global i64 0, align 8
@VAL_CLASS_CNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"validator: failed to chase CNAME\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"validator: chased to\00", align 1
@sec_status_secure = common dso_local global i64 0, align 8
@VERB_DETAIL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"validation success\00", align 1
@VAL_MAX_RESTART_COUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"validation failed, blacklist and retry to fetch data\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"pass back to next module\00", align 1
@module_restart_next = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"validation failure\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@LDNS_RR_TYPE_A = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_AAAA = common dso_local global i64 0, align 8
@SENTINEL_IS = common dso_local global i32 0, align 4
@SENTINEL_KEYTAG_LEN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@sec_status_secure_sentinel_fail = common dso_local global i8* null, align 8
@SENTINEL_NOT = common dso_local global i32 0, align 4
@BIT_RD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"out of memory caching validator results\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@module_finished = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32)* @processFinished to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processFinished(%struct.module_qstate* %0, %struct.val_qstate* %1, %struct.val_env* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.val_qstate*, align 8
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %7, align 8
  store %struct.val_env* %2, %struct.val_env** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %16 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %19 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %18, i32 0, i32 7
  %20 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %21 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %20, i32 0, i32 4
  %22 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %23 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %22, i32 0, i32 3
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %25, align 8
  %27 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %28 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @val_classify_response(i32 %17, %struct.TYPE_22__* %19, %struct.TYPE_22__* %21, %struct.TYPE_21__* %26, i64 %29)
  store i32 %30, i32* %10, align 4
  %31 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %32 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %31, i32 0, i32 6
  %33 = load %struct.TYPE_20__*, %struct.TYPE_20__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @sec_status_insecure, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %46, label %38

38:                                               ; preds = %4
  %39 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %40 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %39, i32 0, i32 6
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @sec_status_indeterminate, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %71

46:                                               ; preds = %38, %4
  %47 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %48 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %47, i32 0, i32 4
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %46
  %56 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %57 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %71, label %60

60:                                               ; preds = %55
  %61 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %62 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %61, i32 0, i32 1
  store i32 1, i32* %62, align 8
  %63 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %64 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %65 = load %struct.val_env*, %struct.val_env** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @val_dlv_init(%struct.module_qstate* %63, %struct.val_qstate* %64, %struct.val_env* %65, i32 %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %662

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %55, %46, %38
  %72 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %73 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %78 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %77, i32 0, i32 6
  %79 = load %struct.TYPE_20__*, %struct.TYPE_20__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %83 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %82, i32 0, i32 3
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 0
  store i64 %81, i64* %87, align 8
  br label %140

88:                                               ; preds = %71
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @VAL_CLASS_REFERRAL, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %112, label %92

92:                                               ; preds = %88
  %93 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %94 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %97 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %96, i32 0, i32 3
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_21__*, %struct.TYPE_21__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %104 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %103, i32 0, i32 3
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %102, %109
  %111 = icmp slt i64 %95, %110
  br i1 %111, label %112, label %139

112:                                              ; preds = %92, %88
  %113 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %114 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %113, i32 0, i32 6
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %119 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %118, i32 0, i32 3
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp slt i64 %117, %124
  br i1 %125, label %126, label %138

126:                                              ; preds = %112
  %127 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %128 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %127, i32 0, i32 6
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %133 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %132, i32 0, i32 3
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_21__*, %struct.TYPE_21__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  store i64 %131, i64* %137, align 8
  br label %138

138:                                              ; preds = %126, %112
  br label %139

139:                                              ; preds = %138, %92
  br label %140

140:                                              ; preds = %139, %76
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @VAL_CLASS_REFERRAL, align 4
  %143 = icmp eq i32 %141, %142
  br i1 %143, label %144, label %182

144:                                              ; preds = %140
  %145 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %146 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %145, i32 0, i32 3
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %148, align 8
  %150 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %151 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = call i64 @val_next_unchecked(%struct.TYPE_21__* %149, i64 %152)
  %154 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %155 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %157 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %160 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %159, i32 0, i32 3
  %161 = load %struct.TYPE_19__*, %struct.TYPE_19__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  %166 = icmp slt i64 %158, %165
  br i1 %166, label %167, label %181

167:                                              ; preds = %144
  %168 = load i32, i32* @VERB_ALGO, align 4
  %169 = call i32 @verbose(i32 %168, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %170 = load i8*, i8** @sec_status_unchecked, align 8
  %171 = ptrtoint i8* %170 to i64
  %172 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %173 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %172, i32 0, i32 6
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 0
  store i64 %171, i64* %175, align 8
  %176 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %177 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %176, i32 0, i32 1
  store i32 0, i32* %177, align 8
  %178 = load i8*, i8** @VAL_INIT_STATE, align 8
  %179 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %180 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %179, i32 0, i32 5
  store i8* %178, i8** %180, align 8
  store i32 1, i32* %5, align 4
  br label %662

181:                                              ; preds = %144
  br label %182

182:                                              ; preds = %181, %140
  %183 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %184 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %183, i32 0, i32 6
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @sec_status_bogus, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %190, label %233

190:                                              ; preds = %182
  %191 = load i32, i32* %10, align 4
  %192 = load i32, i32* @VAL_CLASS_CNAME, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %233

194:                                              ; preds = %190
  %195 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %196 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %195, i32 0, i32 4
  %197 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %198 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %197, i32 0, i32 3
  %199 = load %struct.TYPE_19__*, %struct.TYPE_19__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %199, i32 0, i32 0
  %201 = load %struct.TYPE_21__*, %struct.TYPE_21__** %200, align 8
  %202 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %203 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %202, i32 0, i32 0
  %204 = call i32 @val_chase_cname(%struct.TYPE_22__* %196, %struct.TYPE_21__* %201, i64* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %216, label %206

206:                                              ; preds = %194
  %207 = load i32, i32* @VERB_ALGO, align 4
  %208 = call i32 @verbose(i32 %207, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %209 = load i64, i64* @sec_status_bogus, align 8
  %210 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %211 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %210, i32 0, i32 3
  %212 = load %struct.TYPE_19__*, %struct.TYPE_19__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_21__*, %struct.TYPE_21__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 0
  store i64 %209, i64* %215, align 8
  br label %232

216:                                              ; preds = %194
  %217 = load i32, i32* @VERB_ALGO, align 4
  %218 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %219 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %218, i32 0, i32 4
  %220 = call i32 @log_query_info(i32 %217, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_22__* %219)
  %221 = load i8*, i8** @sec_status_unchecked, align 8
  %222 = ptrtoint i8* %221 to i64
  %223 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %224 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %223, i32 0, i32 6
  %225 = load %struct.TYPE_20__*, %struct.TYPE_20__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  store i64 %222, i64* %226, align 8
  %227 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %228 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %227, i32 0, i32 1
  store i32 0, i32* %228, align 8
  %229 = load i8*, i8** @VAL_INIT_STATE, align 8
  %230 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %231 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %230, i32 0, i32 5
  store i8* %229, i8** %231, align 8
  store i32 1, i32* %5, align 4
  br label %662

232:                                              ; preds = %206
  br label %233

233:                                              ; preds = %232, %190, %182
  %234 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %235 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %234, i32 0, i32 3
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @sec_status_secure, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %285

243:                                              ; preds = %233
  %244 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %245 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %244, i32 0, i32 4
  %246 = load %struct.TYPE_23__*, %struct.TYPE_23__** %245, align 8
  %247 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %248 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %247, i32 0, i32 3
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  %251 = load %struct.TYPE_21__*, %struct.TYPE_21__** %250, align 8
  %252 = call i32 @val_check_nonsecure(%struct.TYPE_23__* %246, %struct.TYPE_21__* %251)
  %253 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %254 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %253, i32 0, i32 3
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %255, i32 0, i32 0
  %257 = load %struct.TYPE_21__*, %struct.TYPE_21__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @sec_status_secure, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %284

262:                                              ; preds = %243
  %263 = load i32, i32* @VERB_DETAIL, align 4
  %264 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %265 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %264, i32 0, i32 7
  %266 = call i32 @log_query_info(i32 %263, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_22__* %265)
  %267 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %268 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %283, label %271

271:                                              ; preds = %262
  %272 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %273 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %272, i32 0, i32 4
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %274, i32 0, i32 2
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %278 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %277, i32 0, i32 3
  %279 = load %struct.TYPE_19__*, %struct.TYPE_19__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %279, i32 0, i32 0
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %280, align 8
  %282 = call i32 @val_neg_addreply(i32 %276, %struct.TYPE_21__* %281)
  br label %283

283:                                              ; preds = %271, %262
  br label %284

284:                                              ; preds = %283, %243
  br label %285

285:                                              ; preds = %284, %233
  %286 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %287 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %286, i32 0, i32 3
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %287, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 0
  %290 = load %struct.TYPE_21__*, %struct.TYPE_21__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @sec_status_bogus, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %461

295:                                              ; preds = %285
  %296 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %297 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @VAL_MAX_RESTART_COUNT, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %338

301:                                              ; preds = %295
  %302 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %303 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %302, i32 0, i32 2
  %304 = load i32, i32* %303, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %11, align 4
  %306 = load i32, i32* @VERB_ALGO, align 4
  %307 = call i32 @verbose(i32 %306, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  %308 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %309 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %308, i32 0, i32 11
  %310 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %311 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %310, i32 0, i32 10
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %314 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %313, i32 0, i32 9
  %315 = load i32*, i32** %314, align 8
  %316 = call i32 @val_blacklist(i32* %309, i32 %312, i32* %315, i32 0)
  %317 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %318 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %317, i32 0, i32 9
  store i32* null, i32** %318, align 8
  %319 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %320 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %319, i32 0, i32 8
  store i32* null, i32** %320, align 8
  %321 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %322 = call i32 @memset(%struct.val_qstate* %321, i32 0, i32 64)
  %323 = load i32, i32* %11, align 4
  %324 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %325 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %324, i32 0, i32 2
  store i32 %323, i32* %325, align 4
  %326 = load i8*, i8** @VAL_INIT_STATE, align 8
  %327 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %328 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %327, i32 0, i32 5
  store i8* %326, i8** %328, align 8
  %329 = load i32, i32* @VERB_ALGO, align 4
  %330 = call i32 @verbose(i32 %329, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %331 = load i32, i32* @module_restart_next, align 4
  %332 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %333 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %9, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  store i32 %331, i32* %337, align 4
  store i32 0, i32* %5, align 4
  br label %662

338:                                              ; preds = %295
  %339 = load %struct.val_env*, %struct.val_env** %8, align 8
  %340 = getelementptr inbounds %struct.val_env, %struct.val_env* %339, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %343 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %342, i32 0, i32 3
  %344 = load %struct.TYPE_19__*, %struct.TYPE_19__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_21__*, %struct.TYPE_21__** %345, align 8
  %347 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %346, i32 0, i32 4
  store i64 %341, i64* %347, align 8
  %348 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %349 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %348, i32 0, i32 3
  %350 = load %struct.TYPE_19__*, %struct.TYPE_19__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %350, i32 0, i32 0
  %352 = load %struct.TYPE_21__*, %struct.TYPE_21__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %352, i32 0, i32 4
  %354 = load i64, i64* %353, align 8
  %355 = call i32 @PREFETCH_TTL_CALC(i64 %354)
  %356 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %357 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %356, i32 0, i32 3
  %358 = load %struct.TYPE_19__*, %struct.TYPE_19__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %358, i32 0, i32 0
  %360 = load %struct.TYPE_21__*, %struct.TYPE_21__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %360, i32 0, i32 6
  store i32 %355, i32* %361, align 8
  %362 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %363 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %362, i32 0, i32 3
  %364 = load %struct.TYPE_19__*, %struct.TYPE_19__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %364, i32 0, i32 0
  %366 = load %struct.TYPE_21__*, %struct.TYPE_21__** %365, align 8
  %367 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %366, i32 0, i32 4
  %368 = load i64, i64* %367, align 8
  %369 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %370 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %369, i32 0, i32 4
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 1
  %373 = load %struct.TYPE_18__*, %struct.TYPE_18__** %372, align 8
  %374 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %373, i32 0, i32 5
  %375 = load i64, i64* %374, align 8
  %376 = add nsw i64 %368, %375
  %377 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %378 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %377, i32 0, i32 3
  %379 = load %struct.TYPE_19__*, %struct.TYPE_19__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_21__*, %struct.TYPE_21__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %381, i32 0, i32 5
  store i64 %376, i64* %382, align 8
  %383 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %384 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %383, i32 0, i32 4
  %385 = load %struct.TYPE_23__*, %struct.TYPE_23__** %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %385, i32 0, i32 1
  %387 = load %struct.TYPE_18__*, %struct.TYPE_18__** %386, align 8
  %388 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = icmp sge i32 %389, 1
  br i1 %390, label %400, label %391

391:                                              ; preds = %338
  %392 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %393 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %392, i32 0, i32 4
  %394 = load %struct.TYPE_23__*, %struct.TYPE_23__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %394, i32 0, i32 1
  %396 = load %struct.TYPE_18__*, %struct.TYPE_18__** %395, align 8
  %397 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %396, i32 0, i32 3
  %398 = load i64, i64* %397, align 8
  %399 = icmp ne i64 %398, 0
  br i1 %399, label %400, label %443

400:                                              ; preds = %391, %338
  %401 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %402 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %401, i32 0, i32 4
  %403 = load %struct.TYPE_23__*, %struct.TYPE_23__** %402, align 8
  %404 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %403, i32 0, i32 1
  %405 = load %struct.TYPE_18__*, %struct.TYPE_18__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %405, i32 0, i32 4
  %407 = load i32, i32* %406, align 8
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %443, label %409

409:                                              ; preds = %400
  %410 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %411 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %410, i32 0, i32 4
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** %411, align 8
  %413 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %412, i32 0, i32 1
  %414 = load %struct.TYPE_18__*, %struct.TYPE_18__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 8
  %417 = icmp slt i32 %416, 2
  br i1 %417, label %418, label %431

418:                                              ; preds = %409
  %419 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %420 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %419, i32 0, i32 4
  %421 = load %struct.TYPE_23__*, %struct.TYPE_23__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 1
  %423 = load %struct.TYPE_18__*, %struct.TYPE_18__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %423, i32 0, i32 3
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %431, label %427

427:                                              ; preds = %418
  %428 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %429 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %428, i32 0, i32 7
  %430 = call i32 @log_query_info(i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_22__* %429)
  br label %442

431:                                              ; preds = %418, %409
  %432 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %433 = call i8* @errinf_to_str_bogus(%struct.module_qstate* %432)
  store i8* %433, i8** %12, align 8
  %434 = load i8*, i8** %12, align 8
  %435 = icmp ne i8* %434, null
  br i1 %435, label %436, label %439

436:                                              ; preds = %431
  %437 = load i8*, i8** %12, align 8
  %438 = call i32 @log_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %437)
  br label %439

439:                                              ; preds = %436, %431
  %440 = load i8*, i8** %12, align 8
  %441 = call i32 @free(i8* %440)
  br label %442

442:                                              ; preds = %439, %427
  br label %443

443:                                              ; preds = %442, %400, %391
  %444 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %445 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %444, i32 0, i32 4
  %446 = load %struct.TYPE_23__*, %struct.TYPE_23__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %446, i32 0, i32 1
  %448 = load %struct.TYPE_18__*, %struct.TYPE_18__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %448, i32 0, i32 2
  %450 = load i64, i64* %449, align 8
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %460

452:                                              ; preds = %443
  %453 = load i64, i64* @sec_status_indeterminate, align 8
  %454 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %455 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %454, i32 0, i32 3
  %456 = load %struct.TYPE_19__*, %struct.TYPE_19__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %456, i32 0, i32 0
  %458 = load %struct.TYPE_21__*, %struct.TYPE_21__** %457, align 8
  %459 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %458, i32 0, i32 0
  store i64 %453, i64* %459, align 8
  br label %460

460:                                              ; preds = %452, %443
  br label %461

461:                                              ; preds = %460, %285
  %462 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %463 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %462, i32 0, i32 3
  %464 = load %struct.TYPE_19__*, %struct.TYPE_19__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %464, i32 0, i32 0
  %466 = load %struct.TYPE_21__*, %struct.TYPE_21__** %465, align 8
  %467 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = load i64, i64* @sec_status_secure, align 8
  %470 = icmp eq i64 %468, %469
  br i1 %470, label %471, label %588

471:                                              ; preds = %461
  %472 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %473 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %472, i32 0, i32 4
  %474 = load %struct.TYPE_23__*, %struct.TYPE_23__** %473, align 8
  %475 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %474, i32 0, i32 1
  %476 = load %struct.TYPE_18__*, %struct.TYPE_18__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %476, i32 0, i32 1
  %478 = load i64, i64* %477, align 8
  %479 = icmp ne i64 %478, 0
  br i1 %479, label %480, label %588

480:                                              ; preds = %471
  %481 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %482 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %481, i32 0, i32 7
  %483 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @LDNS_RR_TYPE_A, align 8
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %494, label %487

487:                                              ; preds = %480
  %488 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %489 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %488, i32 0, i32 7
  %490 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %489, i32 0, i32 0
  %491 = load i64, i64* %490, align 8
  %492 = load i64, i64* @LDNS_RR_TYPE_AAAA, align 8
  %493 = icmp eq i64 %491, %492
  br i1 %493, label %494, label %588

494:                                              ; preds = %487, %480
  %495 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %496 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %495, i32 0, i32 7
  %497 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %496, i32 0, i32 1
  %498 = load i64*, i64** %497, align 8
  %499 = load i64, i64* %498, align 8
  %500 = load i32, i32* @SENTINEL_IS, align 4
  %501 = call i64 @strlen(i32 %500)
  %502 = load i64, i64* @SENTINEL_KEYTAG_LEN, align 8
  %503 = add nsw i64 %501, %502
  %504 = icmp eq i64 %499, %503
  br i1 %504, label %505, label %540

505:                                              ; preds = %494
  %506 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %507 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %506, i32 0, i32 7
  %508 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %507, i32 0, i32 1
  %509 = load i64*, i64** %508, align 8
  %510 = load i32, i32* @SENTINEL_IS, align 4
  %511 = call i64 @dname_lab_startswith(i64* %509, i32 %510, i8** %13)
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %540

513:                                              ; preds = %505
  %514 = load i8*, i8** %13, align 8
  %515 = call i64 @sentinel_get_keytag(i8* %514, i32* %14)
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %539

517:                                              ; preds = %513
  %518 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %519 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %518, i32 0, i32 4
  %520 = load %struct.TYPE_23__*, %struct.TYPE_23__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %520, i32 0, i32 0
  %522 = load %struct.TYPE_17__*, %struct.TYPE_17__** %521, align 8
  %523 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %524 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %523, i32 0, i32 4
  %525 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %524, i32 0, i32 2
  %526 = load i32, i32* %525, align 8
  %527 = load i32, i32* %14, align 4
  %528 = call i64 @anchor_has_keytag(%struct.TYPE_17__* %522, i32* bitcast ([1 x i8]* @.str.8 to i32*), i32 1, i32 0, i32 %526, i32 %527)
  %529 = icmp ne i64 %528, 0
  br i1 %529, label %539, label %530

530:                                              ; preds = %517
  %531 = load i8*, i8** @sec_status_secure_sentinel_fail, align 8
  %532 = ptrtoint i8* %531 to i64
  %533 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %534 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %533, i32 0, i32 3
  %535 = load %struct.TYPE_19__*, %struct.TYPE_19__** %534, align 8
  %536 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %535, i32 0, i32 0
  %537 = load %struct.TYPE_21__*, %struct.TYPE_21__** %536, align 8
  %538 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %537, i32 0, i32 0
  store i64 %532, i64* %538, align 8
  br label %539

539:                                              ; preds = %530, %517, %513
  br label %587

540:                                              ; preds = %505, %494
  %541 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %542 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %541, i32 0, i32 7
  %543 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %542, i32 0, i32 1
  %544 = load i64*, i64** %543, align 8
  %545 = load i64, i64* %544, align 8
  %546 = load i32, i32* @SENTINEL_NOT, align 4
  %547 = call i64 @strlen(i32 %546)
  %548 = load i64, i64* @SENTINEL_KEYTAG_LEN, align 8
  %549 = add nsw i64 %547, %548
  %550 = icmp eq i64 %545, %549
  br i1 %550, label %551, label %586

551:                                              ; preds = %540
  %552 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %553 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %552, i32 0, i32 7
  %554 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %553, i32 0, i32 1
  %555 = load i64*, i64** %554, align 8
  %556 = load i32, i32* @SENTINEL_NOT, align 4
  %557 = call i64 @dname_lab_startswith(i64* %555, i32 %556, i8** %13)
  %558 = icmp ne i64 %557, 0
  br i1 %558, label %559, label %586

559:                                              ; preds = %551
  %560 = load i8*, i8** %13, align 8
  %561 = call i64 @sentinel_get_keytag(i8* %560, i32* %14)
  %562 = icmp ne i64 %561, 0
  br i1 %562, label %563, label %585

563:                                              ; preds = %559
  %564 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %565 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %564, i32 0, i32 4
  %566 = load %struct.TYPE_23__*, %struct.TYPE_23__** %565, align 8
  %567 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %566, i32 0, i32 0
  %568 = load %struct.TYPE_17__*, %struct.TYPE_17__** %567, align 8
  %569 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %570 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %569, i32 0, i32 4
  %571 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %570, i32 0, i32 2
  %572 = load i32, i32* %571, align 8
  %573 = load i32, i32* %14, align 4
  %574 = call i64 @anchor_has_keytag(%struct.TYPE_17__* %568, i32* bitcast ([1 x i8]* @.str.8 to i32*), i32 1, i32 0, i32 %572, i32 %573)
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %576, label %585

576:                                              ; preds = %563
  %577 = load i8*, i8** @sec_status_secure_sentinel_fail, align 8
  %578 = ptrtoint i8* %577 to i64
  %579 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %580 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %579, i32 0, i32 3
  %581 = load %struct.TYPE_19__*, %struct.TYPE_19__** %580, align 8
  %582 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %581, i32 0, i32 0
  %583 = load %struct.TYPE_21__*, %struct.TYPE_21__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %583, i32 0, i32 0
  store i64 %578, i64* %584, align 8
  br label %585

585:                                              ; preds = %576, %563, %559
  br label %586

586:                                              ; preds = %585, %551, %540
  br label %587

587:                                              ; preds = %586, %539
  br label %588

588:                                              ; preds = %587, %487, %471, %461
  %589 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %590 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %589, i32 0, i32 0
  %591 = load i32, i32* %590, align 8
  %592 = load i32, i32* @BIT_RD, align 4
  %593 = and i32 %591, %592
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %625

595:                                              ; preds = %588
  %596 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %597 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %596, i32 0, i32 6
  %598 = load i32, i32* %597, align 4
  %599 = icmp ne i32 %598, 0
  br i1 %599, label %624, label %600

600:                                              ; preds = %595
  %601 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %602 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %601, i32 0, i32 4
  %603 = load %struct.TYPE_23__*, %struct.TYPE_23__** %602, align 8
  %604 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %605 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %604, i32 0, i32 3
  %606 = load %struct.TYPE_19__*, %struct.TYPE_19__** %605, align 8
  %607 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %606, i32 0, i32 1
  %608 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %609 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %608, i32 0, i32 3
  %610 = load %struct.TYPE_19__*, %struct.TYPE_19__** %609, align 8
  %611 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %610, i32 0, i32 0
  %612 = load %struct.TYPE_21__*, %struct.TYPE_21__** %611, align 8
  %613 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %614 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %613, i32 0, i32 5
  %615 = load i32, i32* %614, align 8
  %616 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %617 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %616, i32 0, i32 0
  %618 = load i32, i32* %617, align 8
  %619 = call i32 @dns_cache_store(%struct.TYPE_23__* %603, i32* %607, %struct.TYPE_21__* %612, i32 0, i32 %615, i32 0, i32* null, i32 %618)
  %620 = icmp ne i32 %619, 0
  br i1 %620, label %623, label %621

621:                                              ; preds = %600
  %622 = call i32 @log_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %623

623:                                              ; preds = %621, %600
  br label %624

624:                                              ; preds = %623, %595
  br label %646

625:                                              ; preds = %588
  %626 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %627 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %626, i32 0, i32 4
  %628 = load %struct.TYPE_23__*, %struct.TYPE_23__** %627, align 8
  %629 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %630 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %629, i32 0, i32 3
  %631 = load %struct.TYPE_19__*, %struct.TYPE_19__** %630, align 8
  %632 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %631, i32 0, i32 1
  %633 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %634 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %633, i32 0, i32 3
  %635 = load %struct.TYPE_19__*, %struct.TYPE_19__** %634, align 8
  %636 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %635, i32 0, i32 0
  %637 = load %struct.TYPE_21__*, %struct.TYPE_21__** %636, align 8
  %638 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %639 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 8
  %641 = call i32 @dns_cache_store(%struct.TYPE_23__* %628, i32* %632, %struct.TYPE_21__* %637, i32 1, i32 0, i32 0, i32* null, i32 %640)
  %642 = icmp ne i32 %641, 0
  br i1 %642, label %645, label %643

643:                                              ; preds = %625
  %644 = call i32 @log_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  br label %645

645:                                              ; preds = %643, %625
  br label %646

646:                                              ; preds = %645, %624
  %647 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %648 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %649 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %648, i32 0, i32 3
  store i32 %647, i32* %649, align 8
  %650 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %651 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %650, i32 0, i32 3
  %652 = load %struct.TYPE_19__*, %struct.TYPE_19__** %651, align 8
  %653 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %654 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %653, i32 0, i32 2
  store %struct.TYPE_19__* %652, %struct.TYPE_19__** %654, align 8
  %655 = load i32, i32* @module_finished, align 4
  %656 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %657 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %656, i32 0, i32 1
  %658 = load i32*, i32** %657, align 8
  %659 = load i32, i32* %9, align 4
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds i32, i32* %658, i64 %660
  store i32 %655, i32* %661, align 4
  store i32 0, i32* %5, align 4
  br label %662

662:                                              ; preds = %646, %301, %216, %167, %69
  %663 = load i32, i32* %5, align 4
  ret i32 %663
}

declare dso_local i32 @val_classify_response(i32, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_21__*, i64) #1

declare dso_local i32 @val_dlv_init(%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32) #1

declare dso_local i64 @val_next_unchecked(%struct.TYPE_21__*, i64) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @val_chase_cname(%struct.TYPE_22__*, %struct.TYPE_21__*, i64*) #1

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_22__*) #1

declare dso_local i32 @val_check_nonsecure(%struct.TYPE_23__*, %struct.TYPE_21__*) #1

declare dso_local i32 @val_neg_addreply(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @val_blacklist(i32*, i32, i32*, i32) #1

declare dso_local i32 @memset(%struct.val_qstate*, i32, i32) #1

declare dso_local i32 @PREFETCH_TTL_CALC(i64) #1

declare dso_local i8* @errinf_to_str_bogus(%struct.module_qstate*) #1

declare dso_local i32 @log_info(i8*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i64 @dname_lab_startswith(i64*, i32, i8**) #1

declare dso_local i64 @sentinel_get_keytag(i8*, i32*) #1

declare dso_local i64 @anchor_has_keytag(%struct.TYPE_17__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @dns_cache_store(%struct.TYPE_23__*, i32*, %struct.TYPE_21__*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @log_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
