; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_processInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_processInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_27__*, i32, %struct.TYPE_21__, i32 }
%struct.TYPE_27__ = type { i32, i32*, i32 }
%struct.TYPE_21__ = type { i64, i32 }
%struct.val_qstate = type { i64, i64, i64, i32, i8*, %struct.TYPE_26__*, %struct.TYPE_22__*, %struct.TYPE_28__, i32*, %struct.TYPE_25__*, i64, i32* }
%struct.TYPE_26__ = type { i8* }
%struct.TYPE_22__ = type { i32* }
%struct.TYPE_28__ = type { i64, i64, i64, i32* }
%struct.TYPE_25__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64, %struct.TYPE_24__** }
%struct.TYPE_24__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32* }
%struct.val_env = type { i32 }
%struct.trust_anchor = type { i64, i64, i32, i32* }

@VAL_MAX_RESTART_COUNT = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"restart count exceeded\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"validator classification %s\00", align 1
@VAL_CLASS_REFERRAL = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DS = common dso_local global i64 0, align 8
@LDNS_RR_TYPE_NSEC = common dso_local global i64 0, align 8
@PACKED_RRSET_NSEC_AT_APEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"this signer name is not a parent of lookupname, omitted\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"no signer, using\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"signer is\00", align 1
@VAL_CLASS_NAMEERROR = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"unsigned parent zone denies trust anchor, indeterminate\00", align 1
@sec_status_indeterminate = common dso_local global i8* null, align 8
@VAL_FINISHED_STATE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [39 x i8] c"trust anchor NXDOMAIN by signed parent\00", align 1
@VAL_CLASS_POSITIVE = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNSKEY = common dso_local global i64 0, align 8
@VAL_CLASS_CNAME = common dso_local global i32 0, align 4
@verbosity = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"chased extract\00", align 1
@sec_status_insecure = common dso_local global i8* null, align 8
@VERB_DETAIL = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"prime trust anchor\00", align 1
@VAL_FINDKEY_STATE = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [19 x i8] c"key for validation\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"is marked as invalid\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"because of a previous\00", align 1
@sec_status_bogus = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32)* @processInit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processInit(%struct.module_qstate* %0, %struct.val_qstate* %1, %struct.val_env* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.val_qstate*, align 8
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.trust_anchor*, align 8
  %13 = alloca i32, align 4
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %7, align 8
  store %struct.val_env* %2, %struct.val_env** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %15 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %18 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %17, i32 0, i32 2
  %19 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %20 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %19, i32 0, i32 7
  %21 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %22 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %21, i32 0, i32 9
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_29__*, %struct.TYPE_29__** %24, align 8
  %26 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %27 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @val_classify_response(i32 %16, %struct.TYPE_21__* %18, %struct.TYPE_28__* %20, %struct.TYPE_29__* %25, i64 %28)
  store i32 %29, i32* %13, align 4
  %30 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %31 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @VAL_MAX_RESTART_COUNT, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %41

35:                                               ; preds = %4
  %36 = load i64, i64* @VERB_ALGO, align 8
  %37 = call i32 (i64, i8*, ...) @verbose(i64 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @val_error(%struct.module_qstate* %38, i32 %39)
  store i32 %40, i32* %5, align 4
  br label %624

41:                                               ; preds = %4
  %42 = load i64, i64* @VERB_ALGO, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @val_classification_to_string(i32 %43)
  %45 = call i32 (i64, i8*, ...) @verbose(i64 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @VAL_CLASS_REFERRAL, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %136

49:                                               ; preds = %41
  %50 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %51 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %54 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %53, i32 0, i32 9
  %55 = load %struct.TYPE_25__*, %struct.TYPE_25__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_29__*, %struct.TYPE_29__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp slt i64 %52, %59
  br i1 %60, label %61, label %136

61:                                               ; preds = %49
  %62 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %63 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %62, i32 0, i32 9
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_29__*, %struct.TYPE_29__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %67, align 8
  %69 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %70 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %68, i64 %71
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %78 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %77, i32 0, i32 7
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 3
  store i32* %76, i32** %79, align 8
  %80 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %81 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %80, i32 0, i32 9
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_29__*, %struct.TYPE_29__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %85, align 8
  %87 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %88 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %86, i64 %89
  %91 = load %struct.TYPE_24__*, %struct.TYPE_24__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %96 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  %98 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %99 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %98, i32 0, i32 9
  %100 = load %struct.TYPE_25__*, %struct.TYPE_25__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_29__*, %struct.TYPE_29__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %103, align 8
  %105 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %106 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %104, i64 %107
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @ntohs(i32 %112)
  %114 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %115 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %114, i32 0, i32 7
  %116 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %115, i32 0, i32 1
  store i64 %113, i64* %116, align 8
  %117 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %118 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %117, i32 0, i32 9
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_29__*, %struct.TYPE_29__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %122, align 8
  %124 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %125 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %123, i64 %126
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @ntohs(i32 %131)
  %133 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %134 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %134, i32 0, i32 2
  store i64 %132, i64* %135, align 8
  br label %136

136:                                              ; preds = %61, %49, %41
  %137 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %138 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  store i32* %140, i32** %10, align 8
  %141 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %142 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %141, i32 0, i32 7
  %143 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %11, align 8
  %145 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %146 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %145, i32 0, i32 7
  %147 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @LDNS_RR_TYPE_DS, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %208, label %151

151:                                              ; preds = %136
  %152 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %153 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %152, i32 0, i32 7
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %210

158:                                              ; preds = %151
  %159 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %160 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %159, i32 0, i32 9
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_29__*, %struct.TYPE_29__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %167 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %165, %168
  br i1 %169, label %170, label %210

170:                                              ; preds = %158
  %171 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %172 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %171, i32 0, i32 9
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = load %struct.TYPE_29__*, %struct.TYPE_29__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %176, align 8
  %178 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %179 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %177, i64 %180
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = call i64 @ntohs(i32 %185)
  %187 = load i64, i64* @LDNS_RR_TYPE_NSEC, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %210

189:                                              ; preds = %170
  %190 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %191 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %190, i32 0, i32 9
  %192 = load %struct.TYPE_25__*, %struct.TYPE_25__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_29__*, %struct.TYPE_29__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %195, align 8
  %197 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %198 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %196, i64 %199
  %201 = load %struct.TYPE_24__*, %struct.TYPE_24__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @PACKED_RRSET_NSEC_AT_APEX, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %210, label %208

208:                                              ; preds = %189, %136
  %209 = call i32 @dname_remove_label(i32** %10, i64* %11)
  br label %210

210:                                              ; preds = %208, %189, %170, %158, %151
  %211 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %212 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %211, i32 0, i32 5
  %213 = load %struct.TYPE_26__*, %struct.TYPE_26__** %212, align 8
  %214 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %215 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %214, i32 0, i32 0
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %220 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %219, i32 0, i32 0
  %221 = load %struct.TYPE_27__*, %struct.TYPE_27__** %220, align 8
  %222 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %225 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %224, i32 0, i32 0
  %226 = load %struct.TYPE_27__*, %struct.TYPE_27__** %225, align 8
  %227 = call i32 @val_mark_indeterminate(%struct.TYPE_26__* %213, i32 %218, i32 %223, %struct.TYPE_27__* %226)
  %228 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %229 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %228, i32 0, i32 6
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %229, align 8
  %230 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %231 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %230, i32 0, i32 11
  store i32* null, i32** %231, align 8
  %232 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %233 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %232, i32 0, i32 10
  store i64 0, i64* %233, align 8
  %234 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %235 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %234, i32 0, i32 0
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32*, i32** %10, align 8
  %240 = load i64, i64* %11, align 8
  %241 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %242 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %241, i32 0, i32 7
  %243 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = call %struct.trust_anchor* @anchors_lookup(i32 %238, i32* %239, i64 %240, i64 %244)
  store %struct.trust_anchor* %245, %struct.trust_anchor** %12, align 8
  %246 = load i32, i32* %13, align 4
  %247 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %248 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %247, i32 0, i32 7
  %249 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %250 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %249, i32 0, i32 9
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_29__*, %struct.TYPE_29__** %252, align 8
  %254 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %255 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %258 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %257, i32 0, i32 8
  %259 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %260 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %259, i32 0, i32 2
  %261 = call i32 @val_find_signer(i32 %246, %struct.TYPE_28__* %248, %struct.TYPE_29__* %253, i64 %256, i32** %258, i64* %260)
  %262 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %263 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %262, i32 0, i32 8
  %264 = load i32*, i32** %263, align 8
  %265 = icmp ne i32* %264, null
  br i1 %265, label %266, label %281

266:                                              ; preds = %210
  %267 = load i32*, i32** %10, align 8
  %268 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %269 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %268, i32 0, i32 8
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @dname_subdomain_c(i32* %267, i32* %270)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %281, label %273

273:                                              ; preds = %266
  %274 = load i64, i64* @VERB_ALGO, align 8
  %275 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %276 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %275, i32 0, i32 8
  %277 = load i32*, i32** %276, align 8
  %278 = call i32 @log_nametypeclass(i64 %274, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32* %277, i32 0, i32 0)
  %279 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %280 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %279, i32 0, i32 8
  store i32* null, i32** %280, align 8
  br label %281

281:                                              ; preds = %273, %266, %210
  %282 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %283 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %282, i32 0, i32 8
  %284 = load i32*, i32** %283, align 8
  %285 = icmp eq i32* %284, null
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load i64, i64* @VERB_ALGO, align 8
  %288 = load i32*, i32** %10, align 8
  %289 = call i32 @log_nametypeclass(i64 %287, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %288, i32 0, i32 0)
  br label %300

290:                                              ; preds = %281
  %291 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %292 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %291, i32 0, i32 8
  %293 = load i32*, i32** %292, align 8
  store i32* %293, i32** %10, align 8
  %294 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %295 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %294, i32 0, i32 2
  %296 = load i64, i64* %295, align 8
  store i64 %296, i64* %11, align 8
  %297 = load i64, i64* @VERB_ALGO, align 8
  %298 = load i32*, i32** %10, align 8
  %299 = call i32 @log_nametypeclass(i64 %297, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %298, i32 0, i32 0)
  br label %300

300:                                              ; preds = %290, %286
  %301 = load i32, i32* %13, align 4
  %302 = load i32, i32* @VAL_CLASS_NAMEERROR, align 4
  %303 = icmp eq i32 %301, %302
  br i1 %303, label %304, label %351

304:                                              ; preds = %300
  %305 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %306 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %305, i32 0, i32 8
  %307 = load i32*, i32** %306, align 8
  %308 = icmp ne i32* %307, null
  br i1 %308, label %309, label %351

309:                                              ; preds = %304
  %310 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %311 = icmp ne %struct.trust_anchor* %310, null
  br i1 %311, label %312, label %351

312:                                              ; preds = %309
  %313 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %314 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %313, i32 0, i32 3
  %315 = load i32*, i32** %314, align 8
  %316 = load i32*, i32** %10, align 8
  %317 = call i64 @dname_strict_subdomain_c(i32* %315, i32* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %319, label %351

319:                                              ; preds = %312
  %320 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %321 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %320, i32 0, i32 2
  %322 = call i32 @lock_basic_unlock(i32* %321)
  %323 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %324 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %323, i32 0, i32 0
  %325 = load %struct.TYPE_27__*, %struct.TYPE_27__** %324, align 8
  %326 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %325, i32 0, i32 2
  %327 = load i32, i32* %326, align 8
  %328 = load i32*, i32** %10, align 8
  %329 = load i64, i64* %11, align 8
  %330 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %331 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %330, i32 0, i32 7
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 2
  %333 = load i64, i64* %332, align 8
  %334 = call %struct.trust_anchor* @anchors_lookup(i32 %327, i32* %328, i64 %329, i64 %333)
  store %struct.trust_anchor* %334, %struct.trust_anchor** %12, align 8
  %335 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %336 = icmp ne %struct.trust_anchor* %335, null
  br i1 %336, label %348, label %337

337:                                              ; preds = %319
  %338 = load i64, i64* @VERB_QUERY, align 8
  %339 = call i32 (i64, i8*, ...) @verbose(i64 %338, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  %340 = load i8*, i8** @sec_status_indeterminate, align 8
  %341 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %342 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %341, i32 0, i32 5
  %343 = load %struct.TYPE_26__*, %struct.TYPE_26__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %343, i32 0, i32 0
  store i8* %340, i8** %344, align 8
  %345 = load i8*, i8** @VAL_FINISHED_STATE, align 8
  %346 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %347 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %346, i32 0, i32 4
  store i8* %345, i8** %347, align 8
  store i32 1, i32* %5, align 4
  br label %624

348:                                              ; preds = %319
  %349 = load i64, i64* @VERB_ALGO, align 8
  %350 = call i32 (i64, i8*, ...) @verbose(i64 %349, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0))
  br label %373

351:                                              ; preds = %312, %309, %304, %300
  %352 = load i32, i32* %13, align 4
  %353 = load i32, i32* @VAL_CLASS_POSITIVE, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %372

355:                                              ; preds = %351
  %356 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %357 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @LDNS_RR_TYPE_DNSKEY, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %372

362:                                              ; preds = %355
  %363 = load i32*, i32** %10, align 8
  %364 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %365 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %364, i32 0, i32 2
  %366 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 8
  %368 = call i64 @query_dname_compare(i32* %363, i32 %367)
  %369 = icmp eq i64 %368, 0
  br i1 %369, label %370, label %372

370:                                              ; preds = %362
  %371 = call i32 @dname_remove_label(i32** %10, i64* %11)
  br label %372

372:                                              ; preds = %370, %362, %355, %351
  br label %373

373:                                              ; preds = %372, %348
  %374 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %375 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = icmp sgt i64 %376, 0
  br i1 %377, label %386, label %378

378:                                              ; preds = %373
  %379 = load i32, i32* %13, align 4
  %380 = load i32, i32* @VAL_CLASS_CNAME, align 4
  %381 = icmp eq i32 %379, %380
  br i1 %381, label %386, label %382

382:                                              ; preds = %378
  %383 = load i32, i32* %13, align 4
  %384 = load i32, i32* @VAL_CLASS_REFERRAL, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %415

386:                                              ; preds = %382, %378, %373
  %387 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %388 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %387, i32 0, i32 5
  %389 = load %struct.TYPE_26__*, %struct.TYPE_26__** %388, align 8
  %390 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %391 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %390, i32 0, i32 9
  %392 = load %struct.TYPE_25__*, %struct.TYPE_25__** %391, align 8
  %393 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_29__*, %struct.TYPE_29__** %393, align 8
  %395 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %396 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i32*, i32** %10, align 8
  %399 = load i64, i64* %11, align 8
  %400 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %401 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %400, i32 0, i32 8
  %402 = load i32*, i32** %401, align 8
  %403 = call i32 @val_fill_reply(%struct.TYPE_26__* %389, %struct.TYPE_29__* %394, i64 %397, i32* %398, i64 %399, i32* %402)
  %404 = load i64, i64* @verbosity, align 8
  %405 = load i64, i64* @VERB_ALGO, align 8
  %406 = icmp sge i64 %404, %405
  br i1 %406, label %407, label %414

407:                                              ; preds = %386
  %408 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %409 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %408, i32 0, i32 7
  %410 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %411 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %410, i32 0, i32 5
  %412 = load %struct.TYPE_26__*, %struct.TYPE_26__** %411, align 8
  %413 = call i32 @log_dns_msg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_28__* %409, %struct.TYPE_26__* %412)
  br label %414

414:                                              ; preds = %407, %386
  br label %415

415:                                              ; preds = %414, %382
  %416 = load %struct.val_env*, %struct.val_env** %8, align 8
  %417 = getelementptr inbounds %struct.val_env, %struct.val_env* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 4
  %419 = load i32*, i32** %10, align 8
  %420 = load i64, i64* %11, align 8
  %421 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %422 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %421, i32 0, i32 7
  %423 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %422, i32 0, i32 2
  %424 = load i64, i64* %423, align 8
  %425 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %426 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %425, i32 0, i32 1
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %429 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %428, i32 0, i32 0
  %430 = load %struct.TYPE_27__*, %struct.TYPE_27__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %430, i32 0, i32 1
  %432 = load i32*, i32** %431, align 8
  %433 = load i32, i32* %432, align 4
  %434 = call %struct.TYPE_22__* @key_cache_obtain(i32 %418, i32* %419, i64 %420, i64 %424, i32 %427, i32 %433)
  %435 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %436 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %435, i32 0, i32 6
  store %struct.TYPE_22__* %434, %struct.TYPE_22__** %436, align 8
  %437 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %438 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %437, i32 0, i32 6
  %439 = load %struct.TYPE_22__*, %struct.TYPE_22__** %438, align 8
  %440 = icmp eq %struct.TYPE_22__* %439, null
  br i1 %440, label %441, label %453

441:                                              ; preds = %415
  %442 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %443 = icmp eq %struct.trust_anchor* %442, null
  br i1 %443, label %444, label %453

444:                                              ; preds = %441
  %445 = load i8*, i8** @sec_status_indeterminate, align 8
  %446 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %447 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %446, i32 0, i32 5
  %448 = load %struct.TYPE_26__*, %struct.TYPE_26__** %447, align 8
  %449 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %448, i32 0, i32 0
  store i8* %445, i8** %449, align 8
  %450 = load i8*, i8** @VAL_FINISHED_STATE, align 8
  %451 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %452 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %451, i32 0, i32 4
  store i8* %450, i8** %452, align 8
  store i32 1, i32* %5, align 4
  br label %624

453:                                              ; preds = %441, %415
  %454 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %455 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %454, i32 0, i32 6
  %456 = load %struct.TYPE_22__*, %struct.TYPE_22__** %455, align 8
  %457 = icmp eq %struct.TYPE_22__* %456, null
  br i1 %457, label %472, label %458

458:                                              ; preds = %453
  %459 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %460 = icmp ne %struct.trust_anchor* %459, null
  br i1 %460, label %461, label %537

461:                                              ; preds = %458
  %462 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %463 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %462, i32 0, i32 3
  %464 = load i32*, i32** %463, align 8
  %465 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %466 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %465, i32 0, i32 6
  %467 = load %struct.TYPE_22__*, %struct.TYPE_22__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %467, i32 0, i32 0
  %469 = load i32*, i32** %468, align 8
  %470 = call i64 @dname_strict_subdomain_c(i32* %464, i32* %469)
  %471 = icmp ne i64 %470, 0
  br i1 %471, label %472, label %537

472:                                              ; preds = %461, %453
  %473 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %474 = icmp ne %struct.trust_anchor* %473, null
  br i1 %474, label %475, label %514

475:                                              ; preds = %472
  %476 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %477 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %476, i32 0, i32 0
  %478 = load i64, i64* %477, align 8
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %480, label %514

480:                                              ; preds = %475
  %481 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %482 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = icmp eq i64 %483, 0
  br i1 %484, label %485, label %514

485:                                              ; preds = %480
  %486 = load i8*, i8** @sec_status_insecure, align 8
  %487 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %488 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %487, i32 0, i32 5
  %489 = load %struct.TYPE_26__*, %struct.TYPE_26__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %489, i32 0, i32 0
  store i8* %486, i8** %490, align 8
  %491 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %492 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %491, i32 0, i32 5
  %493 = load %struct.TYPE_26__*, %struct.TYPE_26__** %492, align 8
  %494 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %495 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %494, i32 0, i32 3
  %496 = load i32*, i32** %495, align 8
  %497 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %498 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %497, i32 0, i32 0
  %499 = load %struct.TYPE_27__*, %struct.TYPE_27__** %498, align 8
  %500 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %499, i32 0, i32 0
  %501 = load i32, i32* %500, align 8
  %502 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %503 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %502, i32 0, i32 0
  %504 = load %struct.TYPE_27__*, %struct.TYPE_27__** %503, align 8
  %505 = call i32 @val_mark_insecure(%struct.TYPE_26__* %493, i32* %496, i32 %501, %struct.TYPE_27__* %504)
  %506 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %507 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %506, i32 0, i32 2
  %508 = call i32 @lock_basic_unlock(i32* %507)
  %509 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %510 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %509, i32 0, i32 3
  store i32 1, i32* %510, align 8
  %511 = load i8*, i8** @VAL_FINISHED_STATE, align 8
  %512 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %513 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %512, i32 0, i32 4
  store i8* %511, i8** %513, align 8
  store i32 1, i32* %5, align 4
  br label %624

514:                                              ; preds = %480, %475, %472
  %515 = load i64, i64* @VERB_DETAIL, align 8
  %516 = call i32 (i64, i8*, ...) @verbose(i64 %515, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %517 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %518 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %519 = load i32, i32* %9, align 4
  %520 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %521 = call i32 @prime_trust_anchor(%struct.module_qstate* %517, %struct.val_qstate* %518, i32 %519, %struct.trust_anchor* %520)
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %530, label %523

523:                                              ; preds = %514
  %524 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %525 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %524, i32 0, i32 2
  %526 = call i32 @lock_basic_unlock(i32* %525)
  %527 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %528 = load i32, i32* %9, align 4
  %529 = call i32 @val_error(%struct.module_qstate* %527, i32 %528)
  store i32 %529, i32* %5, align 4
  br label %624

530:                                              ; preds = %514
  %531 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %532 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %531, i32 0, i32 2
  %533 = call i32 @lock_basic_unlock(i32* %532)
  %534 = load i8*, i8** @VAL_FINDKEY_STATE, align 8
  %535 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %536 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %535, i32 0, i32 4
  store i8* %534, i8** %536, align 8
  store i32 0, i32* %5, align 4
  br label %624

537:                                              ; preds = %461, %458
  br label %538

538:                                              ; preds = %537
  %539 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %540 = icmp ne %struct.trust_anchor* %539, null
  br i1 %540, label %541, label %545

541:                                              ; preds = %538
  %542 = load %struct.trust_anchor*, %struct.trust_anchor** %12, align 8
  %543 = getelementptr inbounds %struct.trust_anchor, %struct.trust_anchor* %542, i32 0, i32 2
  %544 = call i32 @lock_basic_unlock(i32* %543)
  br label %545

545:                                              ; preds = %541, %538
  %546 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %547 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %546, i32 0, i32 6
  %548 = load %struct.TYPE_22__*, %struct.TYPE_22__** %547, align 8
  %549 = call i64 @key_entry_isnull(%struct.TYPE_22__* %548)
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %577

551:                                              ; preds = %545
  %552 = load i8*, i8** @sec_status_insecure, align 8
  %553 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %554 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %553, i32 0, i32 5
  %555 = load %struct.TYPE_26__*, %struct.TYPE_26__** %554, align 8
  %556 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %555, i32 0, i32 0
  store i8* %552, i8** %556, align 8
  %557 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %558 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %557, i32 0, i32 5
  %559 = load %struct.TYPE_26__*, %struct.TYPE_26__** %558, align 8
  %560 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %561 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %560, i32 0, i32 6
  %562 = load %struct.TYPE_22__*, %struct.TYPE_22__** %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %562, i32 0, i32 0
  %564 = load i32*, i32** %563, align 8
  %565 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %566 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %565, i32 0, i32 0
  %567 = load %struct.TYPE_27__*, %struct.TYPE_27__** %566, align 8
  %568 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %567, i32 0, i32 0
  %569 = load i32, i32* %568, align 8
  %570 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %571 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %570, i32 0, i32 0
  %572 = load %struct.TYPE_27__*, %struct.TYPE_27__** %571, align 8
  %573 = call i32 @val_mark_insecure(%struct.TYPE_26__* %559, i32* %564, i32 %569, %struct.TYPE_27__* %572)
  %574 = load i8*, i8** @VAL_FINISHED_STATE, align 8
  %575 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %576 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %575, i32 0, i32 4
  store i8* %574, i8** %576, align 8
  store i32 1, i32* %5, align 4
  br label %624

577:                                              ; preds = %545
  %578 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %579 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %578, i32 0, i32 6
  %580 = load %struct.TYPE_22__*, %struct.TYPE_22__** %579, align 8
  %581 = call i64 @key_entry_isbad(%struct.TYPE_22__* %580)
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %619

583:                                              ; preds = %577
  %584 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %585 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %586 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %585, i32 0, i32 6
  %587 = load %struct.TYPE_22__*, %struct.TYPE_22__** %586, align 8
  %588 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %587, i32 0, i32 0
  %589 = load i32*, i32** %588, align 8
  %590 = call i32 @errinf_dname(%struct.module_qstate* %584, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32* %589)
  %591 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %592 = call i32 @errinf(%struct.module_qstate* %591, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %593 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %594 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %593, i32 0, i32 6
  %595 = load %struct.TYPE_22__*, %struct.TYPE_22__** %594, align 8
  %596 = call i8* @key_entry_get_reason(%struct.TYPE_22__* %595)
  %597 = icmp ne i8* %596, null
  br i1 %597, label %598, label %607

598:                                              ; preds = %583
  %599 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %600 = call i32 @errinf(%struct.module_qstate* %599, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %601 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %602 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %603 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %602, i32 0, i32 6
  %604 = load %struct.TYPE_22__*, %struct.TYPE_22__** %603, align 8
  %605 = call i8* @key_entry_get_reason(%struct.TYPE_22__* %604)
  %606 = call i32 @errinf(%struct.module_qstate* %601, i8* %605)
  br label %607

607:                                              ; preds = %598, %583
  %608 = load i64, i64* @VAL_MAX_RESTART_COUNT, align 8
  %609 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %610 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %609, i32 0, i32 1
  store i64 %608, i64* %610, align 8
  %611 = load i8*, i8** @sec_status_bogus, align 8
  %612 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %613 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %612, i32 0, i32 5
  %614 = load %struct.TYPE_26__*, %struct.TYPE_26__** %613, align 8
  %615 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %614, i32 0, i32 0
  store i8* %611, i8** %615, align 8
  %616 = load i8*, i8** @VAL_FINISHED_STATE, align 8
  %617 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %618 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %617, i32 0, i32 4
  store i8* %616, i8** %618, align 8
  store i32 1, i32* %5, align 4
  br label %624

619:                                              ; preds = %577
  br label %620

620:                                              ; preds = %619
  %621 = load i8*, i8** @VAL_FINDKEY_STATE, align 8
  %622 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %623 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %622, i32 0, i32 4
  store i8* %621, i8** %623, align 8
  store i32 1, i32* %5, align 4
  br label %624

624:                                              ; preds = %620, %607, %551, %530, %523, %485, %444, %337, %35
  %625 = load i32, i32* %5, align 4
  ret i32 %625
}

declare dso_local i32 @val_classify_response(i32, %struct.TYPE_21__*, %struct.TYPE_28__*, %struct.TYPE_29__*, i64) #1

declare dso_local i32 @verbose(i64, i8*, ...) #1

declare dso_local i32 @val_error(%struct.module_qstate*, i32) #1

declare dso_local i32 @val_classification_to_string(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @dname_remove_label(i32**, i64*) #1

declare dso_local i32 @val_mark_indeterminate(%struct.TYPE_26__*, i32, i32, %struct.TYPE_27__*) #1

declare dso_local %struct.trust_anchor* @anchors_lookup(i32, i32*, i64, i64) #1

declare dso_local i32 @val_find_signer(i32, %struct.TYPE_28__*, %struct.TYPE_29__*, i64, i32**, i64*) #1

declare dso_local i32 @dname_subdomain_c(i32*, i32*) #1

declare dso_local i32 @log_nametypeclass(i64, i8*, i32*, i32, i32) #1

declare dso_local i64 @dname_strict_subdomain_c(i32*, i32*) #1

declare dso_local i32 @lock_basic_unlock(i32*) #1

declare dso_local i64 @query_dname_compare(i32*, i32) #1

declare dso_local i32 @val_fill_reply(%struct.TYPE_26__*, %struct.TYPE_29__*, i64, i32*, i64, i32*) #1

declare dso_local i32 @log_dns_msg(i8*, %struct.TYPE_28__*, %struct.TYPE_26__*) #1

declare dso_local %struct.TYPE_22__* @key_cache_obtain(i32, i32*, i64, i64, i32, i32) #1

declare dso_local i32 @val_mark_insecure(%struct.TYPE_26__*, i32*, i32, %struct.TYPE_27__*) #1

declare dso_local i32 @prime_trust_anchor(%struct.module_qstate*, %struct.val_qstate*, i32, %struct.trust_anchor*) #1

declare dso_local i64 @key_entry_isnull(%struct.TYPE_22__*) #1

declare dso_local i64 @key_entry_isbad(%struct.TYPE_22__*) #1

declare dso_local i32 @errinf_dname(%struct.module_qstate*, i8*, i32*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i8* @key_entry_get_reason(%struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
