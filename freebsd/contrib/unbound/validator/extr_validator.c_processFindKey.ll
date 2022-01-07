; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_processFindKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_validator.c_processFindKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.module_qstate = type { i32, i32, i32, i32 }
%struct.val_qstate = type { i64, %struct.TYPE_10__, %struct.TYPE_9__*, %struct.TYPE_11__*, i32, i8*, %struct.TYPE_7__*, i32*, i32* }
%struct.TYPE_10__ = type { i64, i32, i32* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_7__ = type { i8* }
%struct.dns_msg = type { i32 }

@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"validator: FindKey\00", align 1
@LDNS_RR_TYPE_DNSKEY = common dso_local global i32 0, align 4
@BIT_CD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error generating DNSKEY request\00", align 1
@VAL_VALIDATE_STATE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Cannot retrieve DS for signature\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"no signatures\00", align 1
@sec_status_bogus = common dso_local global i8* null, align 8
@VAL_FINISHED_STATE = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [16 x i8] c"current keyname\00", align 1
@LDNS_RR_CLASS_IN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"target keyname\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"bad signer name\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"striplab %d\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"next keyname\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"DS RRset\00", align 1
@LDNS_RR_TYPE_DS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"No DS RRset\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Process cached DS response\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [28 x i8] c"error generating DS request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.module_qstate*, %struct.val_qstate*, i32)* @processFindKey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @processFindKey(%struct.module_qstate* %0, %struct.val_qstate* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.module_qstate*, align 8
  %6 = alloca %struct.val_qstate*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.module_qstate*, align 8
  %13 = alloca %struct.dns_msg*, align 8
  store %struct.module_qstate* %0, %struct.module_qstate** %5, align 8
  store %struct.val_qstate* %1, %struct.val_qstate** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.module_qstate* null, %struct.module_qstate** %12, align 8
  %14 = load i32, i32* @VERB_ALGO, align 4
  %15 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %16 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %15, i32 0, i32 1
  %17 = call i32 @log_query_info(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_10__* %16)
  %18 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %19 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %18, i32 0, i32 3
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %21 = icmp ne %struct.TYPE_11__* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %24 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %23, i32 0, i32 3
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = call i32 @key_entry_isbad(%struct.TYPE_11__* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br label %29

29:                                               ; preds = %22, %3
  %30 = phi i1 [ false, %3 ], [ %28, %22 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @log_assert(i32 %31)
  %33 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %34 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %33, i32 0, i32 3
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = call i64 @key_entry_isnull(%struct.TYPE_11__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %68

38:                                               ; preds = %29
  %39 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %42 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %41, i32 0, i32 2
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %48 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %47, i32 0, i32 2
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %54 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %55 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @BIT_CD, align 4
  %59 = call i32 @generate_request(%struct.module_qstate* %39, i32 %40, i32* %46, i64 %52, i32 %53, i32 %57, i32 %58, %struct.module_qstate** %12, i32 0)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %38
  %62 = load i32, i32* @VERB_ALGO, align 4
  %63 = call i32 (i32, i8*, ...) @verbose(i32 %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @val_error(%struct.module_qstate* %64, i32 %65)
  store i32 %66, i32* %4, align 4
  br label %358

67:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %358

68:                                               ; preds = %29
  %69 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %70 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %69, i32 0, i32 8
  %71 = load i32*, i32** %70, align 8
  store i32* %71, i32** %8, align 8
  %72 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %73 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %10, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %86, label %77

77:                                               ; preds = %68
  %78 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %79 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %8, align 8
  %82 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %83 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %10, align 8
  br label %86

86:                                               ; preds = %77, %68
  %87 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %88 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %87, i32 0, i32 3
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  store i32* %91, i32** %9, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i64 @query_dname_compare(i32* %92, i32* %93)
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  %97 = load i8*, i8** @VAL_VALIDATE_STATE, align 8
  %98 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %99 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %98, i32 0, i32 5
  store i8* %97, i8** %99, align 8
  store i32 1, i32* %4, align 4
  br label %358

100:                                              ; preds = %86
  %101 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %102 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %101, i32 0, i32 7
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %134

105:                                              ; preds = %100
  %106 = load i32*, i32** %8, align 8
  %107 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %108 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %107, i32 0, i32 7
  %109 = load i32*, i32** %108, align 8
  %110 = call i64 @query_dname_compare(i32* %106, i32* %109)
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %112, label %130

112:                                              ; preds = %105
  %113 = load i32, i32* @VERB_ALGO, align 4
  %114 = call i32 (i32, i8*, ...) @verbose(i32 %113, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %115 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %116 = call i32 @errinf(%struct.module_qstate* %115, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %117 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %118 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %119 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @errinf_origin(%struct.module_qstate* %117, i32 %120)
  %122 = load i8*, i8** @sec_status_bogus, align 8
  %123 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %124 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %123, i32 0, i32 6
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  store i8* %122, i8** %126, align 8
  %127 = load i8*, i8** @VAL_FINISHED_STATE, align 8
  %128 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %129 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %128, i32 0, i32 5
  store i8* %127, i8** %129, align 8
  store i32 1, i32* %4, align 4
  br label %358

130:                                              ; preds = %105
  %131 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %132 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %131, i32 0, i32 7
  %133 = load i32*, i32** %132, align 8
  store i32* %133, i32** %9, align 8
  br label %134

134:                                              ; preds = %130, %100
  %135 = load i32, i32* @VERB_ALGO, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %138 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %139 = call i32 @log_nametypeclass(i32 %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i32* %136, i32 %137, i32 %138)
  %140 = load i32, i32* @VERB_ALGO, align 4
  %141 = load i32*, i32** %8, align 8
  %142 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %143 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %144 = call i32 @log_nametypeclass(i32 %140, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32* %141, i32 %142, i32 %143)
  %145 = load i32*, i32** %8, align 8
  %146 = load i32*, i32** %9, align 8
  %147 = call i32 @dname_subdomain_c(i32* %145, i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %134
  %150 = load i32, i32* @VERB_ALGO, align 4
  %151 = call i32 (i32, i8*, ...) @verbose(i32 %150, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %152 = load i8*, i8** @sec_status_bogus, align 8
  %153 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %154 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %153, i32 0, i32 6
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  store i8* %152, i8** %156, align 8
  %157 = load i8*, i8** @VAL_FINISHED_STATE, align 8
  %158 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %159 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %158, i32 0, i32 5
  store i8* %157, i8** %159, align 8
  store i32 1, i32* %4, align 4
  br label %358

160:                                              ; preds = %134
  %161 = load i32*, i32** %8, align 8
  %162 = call i32 @dname_count_labels(i32* %161)
  %163 = load i32*, i32** %9, align 8
  %164 = call i32 @dname_count_labels(i32* %163)
  %165 = sub nsw i32 %162, %164
  %166 = sub nsw i32 %165, 1
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp sge i32 %167, -1
  %169 = zext i1 %168 to i32
  %170 = call i32 @log_assert(i32 %169)
  %171 = load i32, i32* @VERB_ALGO, align 4
  %172 = load i32, i32* %11, align 4
  %173 = call i32 (i32, i8*, ...) @verbose(i32 %171, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %172)
  %174 = load i32, i32* %11, align 4
  %175 = icmp sgt i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %160
  %177 = load i32, i32* %11, align 4
  %178 = call i32 @dname_remove_labels(i32** %8, i64* %10, i32 %177)
  br label %179

179:                                              ; preds = %176, %160
  %180 = load i32, i32* @VERB_ALGO, align 4
  %181 = load i32*, i32** %8, align 8
  %182 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %183 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %184 = call i32 @log_nametypeclass(i32 %180, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32* %181, i32 %182, i32 %183)
  %185 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %186 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %185, i32 0, i32 2
  %187 = load %struct.TYPE_9__*, %struct.TYPE_9__** %186, align 8
  %188 = icmp ne %struct.TYPE_9__* %187, null
  br i1 %188, label %189, label %200

189:                                              ; preds = %179
  %190 = load i32, i32* @VERB_ALGO, align 4
  %191 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %192 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %191, i32 0, i32 2
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %198 = load i32, i32* @LDNS_RR_CLASS_IN, align 4
  %199 = call i32 @log_nametypeclass(i32 %190, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32* %196, i32 %197, i32 %198)
  br label %203

200:                                              ; preds = %179
  %201 = load i32, i32* @VERB_ALGO, align 4
  %202 = call i32 (i32, i8*, ...) @verbose(i32 %201, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0))
  br label %203

203:                                              ; preds = %200, %189
  %204 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %205 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %204, i32 0, i32 2
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %205, align 8
  %207 = icmp ne %struct.TYPE_9__* %206, null
  br i1 %207, label %208, label %252

208:                                              ; preds = %203
  %209 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %210 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %209, i32 0, i32 2
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %216 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %215, i32 0, i32 3
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = load i32*, i32** %218, align 8
  %220 = call i64 @query_dname_compare(i32* %214, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %252

222:                                              ; preds = %208
  %223 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %224 = load i32, i32* %7, align 4
  %225 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %226 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %225, i32 0, i32 2
  %227 = load %struct.TYPE_9__*, %struct.TYPE_9__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %232 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %231, i32 0, i32 2
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %238 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %239 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @BIT_CD, align 4
  %243 = call i32 @generate_request(%struct.module_qstate* %223, i32 %224, i32* %230, i64 %236, i32 %237, i32 %241, i32 %242, %struct.module_qstate** %12, i32 0)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %251, label %245

245:                                              ; preds = %222
  %246 = load i32, i32* @VERB_ALGO, align 4
  %247 = call i32 (i32, i8*, ...) @verbose(i32 %246, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %248 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %249 = load i32, i32* %7, align 4
  %250 = call i32 @val_error(%struct.module_qstate* %248, i32 %249)
  store i32 %250, i32* %4, align 4
  br label %358

251:                                              ; preds = %222
  store i32 0, i32* %4, align 4
  br label %358

252:                                              ; preds = %208, %203
  %253 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %254 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %253, i32 0, i32 2
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %254, align 8
  %256 = icmp ne %struct.TYPE_9__* %255, null
  br i1 %256, label %257, label %267

257:                                              ; preds = %252
  %258 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %259 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %258, i32 0, i32 2
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = load i32*, i32** %8, align 8
  %265 = call i64 @query_dname_compare(i32* %263, i32* %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %328

267:                                              ; preds = %257, %252
  %268 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %269 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %268, i32 0, i32 2
  %270 = load i32, i32* %269, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %308, label %272

272:                                              ; preds = %267
  %273 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %274 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %273, i32 0, i32 4
  %275 = load i32, i32* %274, align 8
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %308, label %277

277:                                              ; preds = %272
  %278 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %279 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32*, i32** %8, align 8
  %282 = load i64, i64* %10, align 8
  %283 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %284 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 8
  %287 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %288 = getelementptr inbounds %struct.module_qstate, %struct.module_qstate* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %291 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %290, i32 0, i32 3
  %292 = load %struct.TYPE_11__*, %struct.TYPE_11__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = call %struct.dns_msg* @val_find_DS(i32 %280, i32* %281, i64 %282, i32 %286, i32 %289, i32* %294)
  store %struct.dns_msg* %295, %struct.dns_msg** %13, align 8
  %296 = icmp ne %struct.dns_msg* %295, null
  br i1 %296, label %297, label %308

297:                                              ; preds = %277
  %298 = load i32, i32* @VERB_ALGO, align 4
  %299 = call i32 (i32, i8*, ...) @verbose(i32 %298, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %300 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %301 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %302 = load i32, i32* %7, align 4
  %303 = load i32, i32* @LDNS_RCODE_NOERROR, align 4
  %304 = load %struct.dns_msg*, %struct.dns_msg** %13, align 8
  %305 = load %struct.dns_msg*, %struct.dns_msg** %13, align 8
  %306 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %305, i32 0, i32 0
  %307 = call i32 @process_ds_response(%struct.module_qstate* %300, %struct.val_qstate* %301, i32 %302, i32 %303, %struct.dns_msg* %304, i32* %306, i32* null)
  store i32 1, i32* %4, align 4
  br label %358

308:                                              ; preds = %277, %272, %267
  %309 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %310 = load i32, i32* %7, align 4
  %311 = load i32*, i32** %8, align 8
  %312 = load i64, i64* %10, align 8
  %313 = load i32, i32* @LDNS_RR_TYPE_DS, align 4
  %314 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %315 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %314, i32 0, i32 1
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* @BIT_CD, align 4
  %319 = call i32 @generate_request(%struct.module_qstate* %309, i32 %310, i32* %311, i64 %312, i32 %313, i32 %317, i32 %318, %struct.module_qstate** %12, i32 0)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %327, label %321

321:                                              ; preds = %308
  %322 = load i32, i32* @VERB_ALGO, align 4
  %323 = call i32 (i32, i8*, ...) @verbose(i32 %322, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.12, i64 0, i64 0))
  %324 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %325 = load i32, i32* %7, align 4
  %326 = call i32 @val_error(%struct.module_qstate* %324, i32 %325)
  store i32 %326, i32* %4, align 4
  br label %358

327:                                              ; preds = %308
  store i32 0, i32* %4, align 4
  br label %358

328:                                              ; preds = %257
  %329 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %330 = load i32, i32* %7, align 4
  %331 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %332 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %331, i32 0, i32 2
  %333 = load %struct.TYPE_9__*, %struct.TYPE_9__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %334, i32 0, i32 1
  %336 = load i32*, i32** %335, align 8
  %337 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %338 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %337, i32 0, i32 2
  %339 = load %struct.TYPE_9__*, %struct.TYPE_9__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %339, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load i32, i32* @LDNS_RR_TYPE_DNSKEY, align 4
  %344 = load %struct.val_qstate*, %struct.val_qstate** %6, align 8
  %345 = getelementptr inbounds %struct.val_qstate, %struct.val_qstate* %344, i32 0, i32 1
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 8
  %348 = load i32, i32* @BIT_CD, align 4
  %349 = call i32 @generate_request(%struct.module_qstate* %329, i32 %330, i32* %336, i64 %342, i32 %343, i32 %347, i32 %348, %struct.module_qstate** %12, i32 0)
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %357, label %351

351:                                              ; preds = %328
  %352 = load i32, i32* @VERB_ALGO, align 4
  %353 = call i32 (i32, i8*, ...) @verbose(i32 %352, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %354 = load %struct.module_qstate*, %struct.module_qstate** %5, align 8
  %355 = load i32, i32* %7, align 4
  %356 = call i32 @val_error(%struct.module_qstate* %354, i32 %355)
  store i32 %356, i32* %4, align 4
  br label %358

357:                                              ; preds = %328
  store i32 0, i32* %4, align 4
  br label %358

358:                                              ; preds = %357, %351, %327, %321, %297, %251, %245, %149, %112, %96, %67, %61
  %359 = load i32, i32* %4, align 4
  ret i32 %359
}

declare dso_local i32 @log_query_info(i32, i8*, %struct.TYPE_10__*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @key_entry_isbad(%struct.TYPE_11__*) #1

declare dso_local i64 @key_entry_isnull(%struct.TYPE_11__*) #1

declare dso_local i32 @generate_request(%struct.module_qstate*, i32, i32*, i64, i32, i32, i32, %struct.module_qstate**, i32) #1

declare dso_local i32 @verbose(i32, i8*, ...) #1

declare dso_local i32 @val_error(%struct.module_qstate*, i32) #1

declare dso_local i64 @query_dname_compare(i32*, i32*) #1

declare dso_local i32 @errinf(%struct.module_qstate*, i8*) #1

declare dso_local i32 @errinf_origin(%struct.module_qstate*, i32) #1

declare dso_local i32 @log_nametypeclass(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @dname_subdomain_c(i32*, i32*) #1

declare dso_local i32 @dname_count_labels(i32*) #1

declare dso_local i32 @dname_remove_labels(i32**, i64*, i32) #1

declare dso_local %struct.dns_msg* @val_find_DS(i32, i32*, i64, i32, i32, i32*) #1

declare dso_local i32 @process_ds_response(%struct.module_qstate*, %struct.val_qstate*, i32, i32, %struct.dns_msg*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
