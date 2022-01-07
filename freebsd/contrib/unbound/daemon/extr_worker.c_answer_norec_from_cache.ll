; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_answer_norec_from_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_answer_norec_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { %struct.TYPE_16__, i32, %struct.TYPE_19__ }
%struct.TYPE_16__ = type { i32, i64, i32*, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_14__*, i64, i32* }
%struct.TYPE_14__ = type { i32, i64 }
%struct.query_info = type { i32, i32, i32, i32, i32 }
%struct.comm_reply = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.edns_data = type { i32, i32, i32*, i64, i8* }
%struct.dns_msg = type { %struct.TYPE_17__, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.delegpt = type { i32 }

@BIT_CD = common dso_local global i32 0, align 4
@EDNS_ADVERTISED_VERSION = common dso_local global i8* null, align 8
@EDNS_ADVERTISED_SIZE = common dso_local global i8* null, align 8
@EDNS_DO = common dso_local global i32 0, align 4
@LDNS_RCODE_SERVFAIL = common dso_local global i64 0, align 8
@LDNS_RCODE_MASK = common dso_local global i32 0, align 4
@BIT_QR = common dso_local global i32 0, align 4
@BIT_RA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.worker*, %struct.query_info*, i32, i32, %struct.comm_reply*, %struct.edns_data*)* @answer_norec_from_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @answer_norec_from_cache(%struct.worker* %0, %struct.query_info* %1, i32 %2, i32 %3, %struct.comm_reply* %4, %struct.edns_data* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.worker*, align 8
  %9 = alloca %struct.query_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.comm_reply*, align 8
  %13 = alloca %struct.edns_data*, align 8
  %14 = alloca %struct.edns_data, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.dns_msg*, align 8
  %20 = alloca %struct.delegpt*, align 8
  store %struct.worker* %0, %struct.worker** %8, align 8
  store %struct.query_info* %1, %struct.query_info** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.comm_reply* %4, %struct.comm_reply** %12, align 8
  store %struct.edns_data* %5, %struct.edns_data** %13, align 8
  %21 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %22 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.worker*, %struct.worker** %8, align 8
  %25 = getelementptr inbounds %struct.worker, %struct.worker* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %17, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @BIT_CD, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %6
  %34 = load %struct.worker*, %struct.worker** %8, align 8
  %35 = getelementptr inbounds %struct.worker, %struct.worker* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %33, %6
  %42 = load %struct.worker*, %struct.worker** %8, align 8
  %43 = getelementptr inbounds %struct.worker, %struct.worker* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %41, %33
  %48 = phi i1 [ false, %33 ], [ %46, %41 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %18, align 4
  store %struct.dns_msg* null, %struct.dns_msg** %19, align 8
  %50 = load %struct.worker*, %struct.worker** %8, align 8
  %51 = getelementptr inbounds %struct.worker, %struct.worker* %50, i32 0, i32 2
  %52 = load %struct.query_info*, %struct.query_info** %9, align 8
  %53 = getelementptr inbounds %struct.query_info, %struct.query_info* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.query_info*, %struct.query_info** %9, align 8
  %56 = getelementptr inbounds %struct.query_info, %struct.query_info* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.query_info*, %struct.query_info** %9, align 8
  %59 = getelementptr inbounds %struct.query_info, %struct.query_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.query_info*, %struct.query_info** %9, align 8
  %62 = getelementptr inbounds %struct.query_info, %struct.query_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.worker*, %struct.worker** %8, align 8
  %65 = getelementptr inbounds %struct.worker, %struct.worker* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %17, align 4
  %68 = call %struct.delegpt* @dns_cache_find_delegation(%struct.TYPE_19__* %51, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66, %struct.dns_msg** %19, i32 %67)
  store %struct.delegpt* %68, %struct.delegpt** %20, align 8
  %69 = load %struct.delegpt*, %struct.delegpt** %20, align 8
  %70 = icmp ne %struct.delegpt* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %304

72:                                               ; preds = %47
  %73 = load %struct.query_info*, %struct.query_info** %9, align 8
  %74 = getelementptr inbounds %struct.query_info, %struct.query_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %77 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 0
  store i32 %75, i32* %78, align 8
  %79 = load i32, i32* %18, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %167

81:                                               ; preds = %72
  %82 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %83 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %82, i32 0, i32 1
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = call i32 @check_delegation_secure(%struct.TYPE_18__* %84)
  switch i32 %85, label %165 [
    i32 128, label %86
    i32 133, label %87
    i32 129, label %87
    i32 130, label %150
    i32 132, label %164
    i32 131, label %164
  ]

86:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %304

87:                                               ; preds = %81, %81
  %88 = load i8*, i8** @EDNS_ADVERTISED_VERSION, align 8
  %89 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %90 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %89, i32 0, i32 4
  store i8* %88, i8** %90, align 8
  %91 = load i8*, i8** @EDNS_ADVERTISED_SIZE, align 8
  %92 = ptrtoint i8* %91 to i32
  %93 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %94 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %96 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @EDNS_DO, align 4
  %98 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %99 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load %struct.worker*, %struct.worker** %8, align 8
  %103 = getelementptr inbounds %struct.worker, %struct.worker* %102, i32 0, i32 2
  %104 = load %struct.query_info*, %struct.query_info** %9, align 8
  %105 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %106 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %105, i32 0, i32 1
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %106, align 8
  %108 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %109 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %110 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %111 = load %struct.worker*, %struct.worker** %8, align 8
  %112 = getelementptr inbounds %struct.worker, %struct.worker* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @inplace_cb_reply_servfail_call(%struct.TYPE_19__* %103, %struct.query_info* %104, i32* null, %struct.TYPE_18__* %107, i64 %108, %struct.edns_data* %109, %struct.comm_reply* %110, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %87
  store i32 0, i32* %7, align 4
  br label %304

117:                                              ; preds = %87
  %118 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %119 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %118, i32 0, i32 0
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %124 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %125 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %124, i32 0, i32 0
  %126 = load i32, i32* %10, align 4
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %129 = call i32 @error_encode(i32 %122, i64 %123, %struct.TYPE_17__* %125, i32 %126, i32 %127, %struct.edns_data* %128)
  %130 = load %struct.worker*, %struct.worker** %8, align 8
  %131 = getelementptr inbounds %struct.worker, %struct.worker* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %117
  %136 = load %struct.worker*, %struct.worker** %8, align 8
  %137 = getelementptr inbounds %struct.worker, %struct.worker* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = load %struct.worker*, %struct.worker** %8, align 8
  %142 = getelementptr inbounds %struct.worker, %struct.worker* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %135, %117
  store i32 1, i32* %7, align 4
  br label %304

150:                                              ; preds = %81
  %151 = load %struct.worker*, %struct.worker** %8, align 8
  %152 = getelementptr inbounds %struct.worker, %struct.worker* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %163

158:                                              ; preds = %150
  %159 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %160 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %159, i32 0, i32 1
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %160, align 8
  %162 = call i32 @deleg_remove_nonsecure_additional(%struct.TYPE_18__* %161)
  br label %163

163:                                              ; preds = %158, %150
  store i32 1, i32* %16, align 4
  br label %166

164:                                              ; preds = %81, %81
  br label %165

165:                                              ; preds = %81, %164
  store i32 0, i32* %16, align 4
  br label %166

166:                                              ; preds = %165, %163
  br label %167

167:                                              ; preds = %166, %72
  %168 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %169 = bitcast %struct.edns_data* %14 to i8*
  %170 = bitcast %struct.edns_data* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %169, i8* align 8 %170, i64 32, i1 false)
  %171 = load i8*, i8** @EDNS_ADVERTISED_VERSION, align 8
  %172 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %173 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  %174 = load i8*, i8** @EDNS_ADVERTISED_SIZE, align 8
  %175 = ptrtoint i8* %174 to i32
  %176 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %177 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 8
  %178 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %179 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %178, i32 0, i32 3
  store i64 0, i64* %179, align 8
  %180 = load i32, i32* @EDNS_DO, align 4
  %181 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %182 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, %180
  store i32 %184, i32* %182, align 4
  %185 = load %struct.worker*, %struct.worker** %8, align 8
  %186 = getelementptr inbounds %struct.worker, %struct.worker* %185, i32 0, i32 2
  %187 = load %struct.query_info*, %struct.query_info** %9, align 8
  %188 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %189 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %188, i32 0, i32 1
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %189, align 8
  %191 = load i32, i32* %11, align 4
  %192 = load i32, i32* @LDNS_RCODE_MASK, align 4
  %193 = and i32 %191, %192
  %194 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %195 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %196 = load %struct.worker*, %struct.worker** %8, align 8
  %197 = getelementptr inbounds %struct.worker, %struct.worker* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @inplace_cb_reply_cache_call(%struct.TYPE_19__* %186, %struct.query_info* %187, i32* null, %struct.TYPE_18__* %190, i32 %193, %struct.edns_data* %194, %struct.comm_reply* %195, i32 %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %202, label %201

201:                                              ; preds = %167
  store i32 0, i32* %7, align 4
  br label %304

202:                                              ; preds = %167
  %203 = load i32, i32* @BIT_QR, align 4
  %204 = load i32, i32* @BIT_RA, align 4
  %205 = or i32 %203, %204
  %206 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %207 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %206, i32 0, i32 1
  %208 = load %struct.TYPE_18__*, %struct.TYPE_18__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = or i32 %210, %205
  store i32 %211, i32* %209, align 4
  %212 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %213 = load %struct.worker*, %struct.worker** %8, align 8
  %214 = getelementptr inbounds %struct.worker, %struct.worker* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %218 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %217, i32 0, i32 0
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %218, align 8
  %220 = load %struct.worker*, %struct.worker** %8, align 8
  %221 = getelementptr inbounds %struct.worker, %struct.worker* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 8
  %223 = call i32 @apply_edns_options(%struct.edns_data* %212, %struct.edns_data* %14, %struct.TYPE_14__* %216, %struct.TYPE_15__* %219, i32 %222)
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %251

225:                                              ; preds = %202
  %226 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %227 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %226, i32 0, i32 0
  %228 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %229 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %228, i32 0, i32 1
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %229, align 8
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %11, align 4
  %233 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %234 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %233, i32 0, i32 0
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.worker*, %struct.worker** %8, align 8
  %239 = getelementptr inbounds %struct.worker, %struct.worker* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %15, align 4
  %242 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %243 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %244 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @EDNS_DO, align 4
  %247 = and i32 %245, %246
  %248 = load i32, i32* %16, align 4
  %249 = call i32 @reply_info_answer_encode(%struct.TYPE_17__* %227, %struct.TYPE_18__* %230, i32 %231, i32 %232, i32 %237, i32 0, i32 1, i32 %240, i32 %241, %struct.edns_data* %242, i32 %247, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %279, label %251

251:                                              ; preds = %225, %202
  %252 = load %struct.worker*, %struct.worker** %8, align 8
  %253 = getelementptr inbounds %struct.worker, %struct.worker* %252, i32 0, i32 2
  %254 = load %struct.query_info*, %struct.query_info** %9, align 8
  %255 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %256 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %257 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %258 = load %struct.worker*, %struct.worker** %8, align 8
  %259 = getelementptr inbounds %struct.worker, %struct.worker* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @inplace_cb_reply_servfail_call(%struct.TYPE_19__* %253, %struct.query_info* %254, i32* null, %struct.TYPE_18__* null, i64 %255, %struct.edns_data* %256, %struct.comm_reply* %257, i32 %260)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %266, label %263

263:                                              ; preds = %251
  %264 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %265 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %264, i32 0, i32 2
  store i32* null, i32** %265, align 8
  br label %266

266:                                              ; preds = %263, %251
  %267 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %268 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %267, i32 0, i32 0
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 4
  %272 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %273 = load %struct.dns_msg*, %struct.dns_msg** %19, align 8
  %274 = getelementptr inbounds %struct.dns_msg, %struct.dns_msg* %273, i32 0, i32 0
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* %11, align 4
  %277 = load %struct.edns_data*, %struct.edns_data** %13, align 8
  %278 = call i32 @error_encode(i32 %271, i64 %272, %struct.TYPE_17__* %274, i32 %275, i32 %276, %struct.edns_data* %277)
  br label %279

279:                                              ; preds = %266, %225
  %280 = load %struct.worker*, %struct.worker** %8, align 8
  %281 = getelementptr inbounds %struct.worker, %struct.worker* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %303

285:                                              ; preds = %279
  %286 = load i32, i32* %16, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %285
  %289 = load %struct.worker*, %struct.worker** %8, align 8
  %290 = getelementptr inbounds %struct.worker, %struct.worker* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %291, align 8
  br label %294

294:                                              ; preds = %288, %285
  %295 = load %struct.worker*, %struct.worker** %8, align 8
  %296 = getelementptr inbounds %struct.worker, %struct.worker* %295, i32 0, i32 0
  %297 = load %struct.comm_reply*, %struct.comm_reply** %12, align 8
  %298 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %297, i32 0, i32 0
  %299 = load %struct.TYPE_15__*, %struct.TYPE_15__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @server_stats_insrcode(%struct.TYPE_16__* %296, i32 %301)
  br label %303

303:                                              ; preds = %294, %279
  store i32 1, i32* %7, align 4
  br label %304

304:                                              ; preds = %303, %201, %149, %116, %86, %71
  %305 = load i32, i32* %7, align 4
  ret i32 %305
}

declare dso_local %struct.delegpt* @dns_cache_find_delegation(%struct.TYPE_19__*, i32, i32, i32, i32, i32, %struct.dns_msg**, i32) #1

declare dso_local i32 @check_delegation_secure(%struct.TYPE_18__*) #1

declare dso_local i32 @inplace_cb_reply_servfail_call(%struct.TYPE_19__*, %struct.query_info*, i32*, %struct.TYPE_18__*, i64, %struct.edns_data*, %struct.comm_reply*, i32) #1

declare dso_local i32 @error_encode(i32, i64, %struct.TYPE_17__*, i32, i32, %struct.edns_data*) #1

declare dso_local i32 @deleg_remove_nonsecure_additional(%struct.TYPE_18__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @inplace_cb_reply_cache_call(%struct.TYPE_19__*, %struct.query_info*, i32*, %struct.TYPE_18__*, i32, %struct.edns_data*, %struct.comm_reply*, i32) #1

declare dso_local i32 @apply_edns_options(%struct.edns_data*, %struct.edns_data*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @reply_info_answer_encode(%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32, i32, i32, i32, i32, i32, %struct.edns_data*, i32, i32) #1

declare dso_local i32 @server_stats_insrcode(%struct.TYPE_16__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
