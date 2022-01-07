; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_processDLVLookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_processDLVLookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.val_qstate = type { i64, i64, %struct.TYPE_12__, i64*, i8*, i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64* }
%struct.val_env = type { i32 }

@dlv_error = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"DLV woke up with status dlv_error\00", align 1
@dlv_success = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"DLV woke up with status dlv_success\00", align 1
@dlv_ask_higher = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"DLV woke up with status dlv_ask_higher\00", align 1
@dlv_there_is_no_dlv = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [44 x i8] c"DLV woke up with status dlv_there_is_no_dlv\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"DLV woke up with status unknown\00", align 1
@VERB_QUERY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"failed DLV lookup\00", align 1
@VAL_FINDKEY_STATE = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [25 x i8] c"Out of memory in DLVLook\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"error generating DNSKEY request\00", align 1
@VAL_FINISHED_STATE = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [19 x i8] c"ask above dlv repo\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"ask above insecure endpoint\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"enpt\00", align 1
@LDNS_RR_TYPE_DLV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.val_qstate*, %struct.val_env*, i32)* @processDLVLookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processDLVLookup(%struct.module_qstate* %0, %struct.val_qstate* %1, %struct.val_env* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.module_qstate*, align 8
  %7 = alloca %struct.val_qstate*, align 8
  %8 = alloca %struct.val_env*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.module_qstate*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %6, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %7, align 8
  store %struct.val_env* %2, %struct.val_env** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.module_qstate* null, %struct.module_qstate** %10, align 8
  %13 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %14 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @dlv_error, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @VERB_ALGO, align 4
  %20 = call i32 @verbose(i32 %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %54

21:                                               ; preds = %4
  %22 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %23 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @dlv_success, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @VERB_ALGO, align 4
  %29 = call i32 @verbose(i32 %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %53

30:                                               ; preds = %21
  %31 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %32 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @dlv_ask_higher, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @VERB_ALGO, align 4
  %38 = call i32 @verbose(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %52

39:                                               ; preds = %30
  %40 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %41 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @dlv_there_is_no_dlv, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @VERB_ALGO, align 4
  %47 = call i32 @verbose(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @VERB_ALGO, align 4
  %50 = call i32 @verbose(i32 %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %36
  br label %53

53:                                               ; preds = %52, %27
  br label %54

54:                                               ; preds = %53, %18
  %55 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %56 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @dlv_error, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load i32, i32* @VERB_QUERY, align 4
  %62 = call i32 @verbose(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %64 = call i32 @errinf(%struct.module_qstate* %63, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %65 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @val_error(%struct.module_qstate* %65, i32 %66)
  store i32 %67, i32* %5, align 4
  br label %323

68:                                               ; preds = %54
  %69 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %70 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @dlv_success, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %199

74:                                               ; preds = %68
  %75 = load i8*, i8** @VAL_FINDKEY_STATE, align 8
  %76 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %77 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %79 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %78, i32 0, i32 6
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %85 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %84, i32 0, i32 0
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @dname_subdomain_c(i64* %83, i64 %92)
  %94 = call i32 @log_assert(i32 %93)
  %95 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %96 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %95, i32 0, i32 6
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %102 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %101, i32 0, i32 0
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = sub i64 %100, %110
  %112 = add i64 %111, 1
  store i64 %112, i64* %12, align 8
  %113 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %114 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %117 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %116, i32 0, i32 6
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i64, i64* %12, align 8
  %123 = call i64* @regional_alloc_init(i32 %115, i64* %121, i64 %122)
  store i64* %123, i64** %11, align 8
  %124 = load i64*, i64** %11, align 8
  %125 = icmp ne i64* %124, null
  br i1 %125, label %131, label %126

126:                                              ; preds = %74
  %127 = call i32 @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %128 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %129 = load i32, i32* %9, align 4
  %130 = call i32 @val_error(%struct.module_qstate* %128, i32 %129)
  store i32 %130, i32* %5, align 4
  br label %323

131:                                              ; preds = %74
  %132 = load i64*, i64** %11, align 8
  %133 = load i64, i64* %12, align 8
  %134 = sub i64 %133, 1
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  store i64 0, i64* %135, align 8
  %136 = load i64*, i64** %11, align 8
  %137 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %138 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %137, i32 0, i32 6
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i64* %136, i64** %141, align 8
  %142 = load i64, i64* %12, align 8
  %143 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %144 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %143, i32 0, i32 6
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  store i64 %142, i64* %147, align 8
  %148 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %149 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load i64*, i64** %11, align 8
  %152 = load i64, i64* %12, align 8
  %153 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %154 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @key_entry_create_null(i32 %150, i64* %151, i64 %152, i32 %156, i32 0, i32 0)
  %158 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %159 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %158, i32 0, i32 7
  store i32 %157, i32* %159, align 8
  %160 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %161 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %131
  %165 = call i32 @log_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %166 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %167 = load i32, i32* %9, align 4
  %168 = call i32 @val_error(%struct.module_qstate* %166, i32 %167)
  store i32 %168, i32* %5, align 4
  br label %323

169:                                              ; preds = %131
  %170 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %171 = load i32, i32* %9, align 4
  %172 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %173 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %172, i32 0, i32 6
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i64*, i64** %176, align 8
  %178 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %179 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %178, i32 0, i32 6
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %185 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %186 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %185, i32 0, i32 2
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @BIT_CD, align 4
  %190 = call i32 @generate_request(%struct.module_qstate* %170, i32 %171, i64* %177, i64 %183, i32 %184, i32 %188, i32 %189, %struct.module_qstate** %10, i32 0)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %198, label %192

192:                                              ; preds = %169
  %193 = load i32, i32* @VERB_ALGO, align 4
  %194 = call i32 @verbose(i32 %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %195 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %196 = load i32, i32* %9, align 4
  %197 = call i32 @val_error(%struct.module_qstate* %195, i32 %196)
  store i32 %197, i32* %5, align 4
  br label %323

198:                                              ; preds = %169
  store i32 0, i32* %5, align 4
  br label %323

199:                                              ; preds = %68
  %200 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %201 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @dlv_there_is_no_dlv, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %199
  %206 = load i8*, i8** @VAL_FINISHED_STATE, align 8
  %207 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %208 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %207, i32 0, i32 4
  store i8* %206, i8** %208, align 8
  store i32 1, i32* %5, align 4
  br label %323

209:                                              ; preds = %199
  br label %210

210:                                              ; preds = %209
  br label %211

211:                                              ; preds = %210
  %212 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %213 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @dlv_ask_higher, align 8
  %216 = icmp eq i64 %214, %215
  %217 = zext i1 %216 to i32
  %218 = call i32 @log_assert(i32 %217)
  %219 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %220 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %219, i32 0, i32 3
  %221 = load i64*, i64** %220, align 8
  %222 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %223 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %222, i32 0, i32 0
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 1
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @dname_subdomain_c(i64* %221, i64 %230)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %211
  %234 = load i32, i32* @VERB_ALGO, align 4
  %235 = call i32 @verbose(i32 %234, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %236 = load i8*, i8** @VAL_FINISHED_STATE, align 8
  %237 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %238 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %237, i32 0, i32 4
  store i8* %236, i8** %238, align 8
  store i32 1, i32* %5, align 4
  br label %323

239:                                              ; preds = %211
  %240 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %241 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %240, i32 0, i32 5
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %264

244:                                              ; preds = %239
  %245 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %246 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %245, i32 0, i32 3
  %247 = load i64*, i64** %246, align 8
  %248 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %249 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %248, i32 0, i32 5
  %250 = load i64, i64* %249, align 8
  %251 = call i32 @dname_subdomain_c(i64* %247, i64 %250)
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %264, label %253

253:                                              ; preds = %244
  %254 = load i32, i32* @VERB_ALGO, align 4
  %255 = call i32 @verbose(i32 %254, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  %256 = load i32, i32* @VERB_ALGO, align 4
  %257 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %258 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @log_nametypeclass(i32 %256, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i64 %259, i32 0, i32 0)
  %261 = load i8*, i8** @VAL_FINISHED_STATE, align 8
  %262 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %263 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %262, i32 0, i32 4
  store i8* %261, i8** %263, align 8
  store i32 1, i32* %5, align 4
  br label %323

264:                                              ; preds = %244, %239
  %265 = load %struct.val_env*, %struct.val_env** %8, align 8
  %266 = getelementptr inbounds %struct.val_env, %struct.val_env* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %269 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %268, i32 0, i32 3
  %270 = load i64*, i64** %269, align 8
  %271 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %272 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %271, i32 0, i32 1
  %273 = load i64, i64* %272, align 8
  %274 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %275 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %279 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %278, i32 0, i32 0
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %284 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %283, i32 0, i32 0
  %285 = load %struct.TYPE_11__*, %struct.TYPE_11__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %285, i32 0, i32 0
  %287 = load i32*, i32** %286, align 8
  %288 = load i32, i32* %287, align 4
  %289 = call i64 @val_neg_dlvlookup(i32 %267, i64* %270, i64 %273, i32 %277, i32 %282, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %302

291:                                              ; preds = %264
  %292 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %293 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %292, i32 0, i32 3
  %294 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %295 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %294, i32 0, i32 1
  %296 = call i32 @dname_remove_label(i64** %293, i64* %295)
  %297 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %298 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %299 = load %struct.val_env*, %struct.val_env** %8, align 8
  %300 = load i32, i32* %9, align 4
  %301 = call i32 @processDLVLookup(%struct.module_qstate* %297, %struct.val_qstate* %298, %struct.val_env* %299, i32 %300)
  store i32 %301, i32* %5, align 4
  br label %323

302:                                              ; preds = %264
  %303 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %304 = load i32, i32* %9, align 4
  %305 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %306 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %305, i32 0, i32 3
  %307 = load i64*, i64** %306, align 8
  %308 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %309 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load i32, i32* @LDNS_RR_TYPE_DLV, align 4
  %312 = load %struct.val_qstate*, %struct.val_qstate** %7, align 8
  %313 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %312, i32 0, i32 2
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 8
  %316 = call i32 @generate_request(%struct.module_qstate* %303, i32 %304, i64* %307, i64 %310, i32 %311, i32 %315, i32 0, %struct.module_qstate** %10, i32 0)
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %322, label %318

318:                                              ; preds = %302
  %319 = load %struct.module_qstate*, %struct.module_qstate** %6, align 8
  %320 = load i32, i32* %9, align 4
  %321 = call i32 @val_error(%struct.module_qstate* %319, i32 %320)
  store i32 %321, i32* %5, align 4
  br label %323

322:                                              ; preds = %302
  store i32 0, i32* %5, align 4
  br label %323

323:                                              ; preds = %322, %318, %291, %253, %233, %205, %198, %192, %164, %126, %60
  %324 = load i32, i32* %5, align 4
  ret i32 %324
}

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @val_error(%struct.module_qstate*, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @dname_subdomain_c(i64*, i64) #1

declare dso_local i64* @regional_alloc_init(i32, i64*, i64) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @key_entry_create_null(i32, i64*, i64, i32, i32, i32) #1

declare dso_local i32 @generate_request(%struct.module_qstate*, i32, i64*, i64, i32, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i64, i32, i32) #1

declare dso_local i64 @val_neg_dlvlookup(i32, i64*, i64, i32, i32, i32) #1

declare dso_local i32 @dname_remove_label(i64**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
