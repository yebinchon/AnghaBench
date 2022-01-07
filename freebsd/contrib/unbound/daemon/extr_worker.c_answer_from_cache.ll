; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_answer_from_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_worker.c_answer_from_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worker = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i64*, i32, %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_12__ = type { i32, i64, i32*, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.query_info = type { i32 }
%struct.respip_client_info = type { i32 }
%struct.ub_packed_rrset_key = type { i32 }
%struct.reply_info = type { i64, i64, i64, i64, i32, i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.comm_reply = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }
%struct.edns_data = type { i32, i32, i32*, i64, i8* }

@BIT_CD = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_CNAME = common dso_local global i32 0, align 4
@LDNS_RR_TYPE_DNAME = common dso_local global i32 0, align 4
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Cache reply: cname chain broken\00", align 1
@sec_status_bogus = common dso_local global i64 0, align 8
@sec_status_secure_sentinel_fail = common dso_local global i64 0, align 8
@EDNS_ADVERTISED_VERSION = common dso_local global i8* null, align 8
@EDNS_ADVERTISED_SIZE = common dso_local global i8* null, align 8
@EDNS_DO = common dso_local global i32 0, align 4
@LDNS_RCODE_SERVFAIL = common dso_local global i64 0, align 8
@sec_status_unchecked = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Cache reply: unchecked entry needs validation\00", align 1
@sec_status_secure = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Cache reply: secure entry changed status\00", align 1
@LDNS_RCODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.worker*, %struct.query_info*, %struct.respip_client_info*, i32*, %struct.ub_packed_rrset_key**, %struct.reply_info**, %struct.reply_info*, i32, i32, %struct.comm_reply*, %struct.edns_data*)* @answer_from_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @answer_from_cache(%struct.worker* %0, %struct.query_info* %1, %struct.respip_client_info* %2, i32* %3, %struct.ub_packed_rrset_key** %4, %struct.reply_info** %5, %struct.reply_info* %6, i32 %7, i32 %8, %struct.comm_reply* %9, %struct.edns_data* %10) #0 {
  %12 = alloca i32, align 4
  %13 = alloca %struct.worker*, align 8
  %14 = alloca %struct.query_info*, align 8
  %15 = alloca %struct.respip_client_info*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.ub_packed_rrset_key**, align 8
  %18 = alloca %struct.reply_info**, align 8
  %19 = alloca %struct.reply_info*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.comm_reply*, align 8
  %23 = alloca %struct.edns_data*, align 8
  %24 = alloca %struct.edns_data, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca %struct.reply_info*, align 8
  %28 = alloca %struct.reply_info*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  store %struct.worker* %0, %struct.worker** %13, align 8
  store %struct.query_info* %1, %struct.query_info** %14, align 8
  store %struct.respip_client_info* %2, %struct.respip_client_info** %15, align 8
  store i32* %3, i32** %16, align 8
  store %struct.ub_packed_rrset_key** %4, %struct.ub_packed_rrset_key*** %17, align 8
  store %struct.reply_info** %5, %struct.reply_info*** %18, align 8
  store %struct.reply_info* %6, %struct.reply_info** %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store %struct.comm_reply* %9, %struct.comm_reply** %22, align 8
  store %struct.edns_data* %10, %struct.edns_data** %23, align 8
  %31 = load %struct.worker*, %struct.worker** %13, align 8
  %32 = getelementptr inbounds %struct.worker, %struct.worker* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %25, align 8
  %36 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %37 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %26, align 4
  %39 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  store %struct.reply_info* %39, %struct.reply_info** %27, align 8
  %40 = load %struct.reply_info**, %struct.reply_info*** %18, align 8
  %41 = load %struct.reply_info*, %struct.reply_info** %40, align 8
  store %struct.reply_info* %41, %struct.reply_info** %28, align 8
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* @BIT_CD, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %11
  %47 = load %struct.worker*, %struct.worker** %13, align 8
  %48 = getelementptr inbounds %struct.worker, %struct.worker* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %46, %11
  %55 = load %struct.worker*, %struct.worker** %13, align 8
  %56 = getelementptr inbounds %struct.worker, %struct.worker* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br label %60

60:                                               ; preds = %54, %46
  %61 = phi i1 [ false, %46 ], [ %59, %54 ]
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %30, align 4
  %63 = load %struct.reply_info**, %struct.reply_info*** %18, align 8
  store %struct.reply_info* null, %struct.reply_info** %63, align 8
  %64 = load %struct.worker*, %struct.worker** %13, align 8
  %65 = getelementptr inbounds %struct.worker, %struct.worker* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %109

71:                                               ; preds = %60
  %72 = load %struct.worker*, %struct.worker** %13, align 8
  %73 = getelementptr inbounds %struct.worker, %struct.worker* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %71
  %80 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %81 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %25, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i32 0, i32* %12, align 4
  br label %521

86:                                               ; preds = %79, %71
  %87 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %88 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %91 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @rrset_array_lock(i32 %89, i32 %92, i64 0)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %86
  store i32 0, i32* %12, align 4
  br label %521

96:                                               ; preds = %86
  %97 = load i64, i64* %25, align 8
  %98 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %99 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load %struct.worker*, %struct.worker** %13, align 8
  %104 = getelementptr inbounds %struct.worker, %struct.worker* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %96
  br label %128

109:                                              ; preds = %60
  %110 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %111 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %25, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 0, i32* %12, align 4
  br label %521

116:                                              ; preds = %109
  %117 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %118 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %117, i32 0, i32 5
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %121 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %25, align 8
  %124 = call i32 @rrset_array_lock(i32 %119, i32 %122, i64 %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %116
  store i32 0, i32* %12, align 4
  br label %521

127:                                              ; preds = %116
  br label %128

128:                                              ; preds = %127, %108
  %129 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %130 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp sgt i64 %131, 0
  br i1 %132, label %133, label %166

133:                                              ; preds = %128
  %134 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %135 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %134, i32 0, i32 6
  %136 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %136, i64 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @LDNS_RR_TYPE_CNAME, align 4
  %143 = call i64 @htons(i32 %142)
  %144 = icmp eq i64 %141, %143
  br i1 %144, label %157, label %145

145:                                              ; preds = %133
  %146 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %147 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %146, i32 0, i32 6
  %148 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %148, i64 0
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* @LDNS_RR_TYPE_DNAME, align 4
  %155 = call i64 @htons(i32 %154)
  %156 = icmp eq i64 %153, %155
  br i1 %156, label %157, label %166

157:                                              ; preds = %145, %133
  %158 = load %struct.query_info*, %struct.query_info** %14, align 8
  %159 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %160 = call i32 @reply_check_cname_chain(%struct.query_info* %158, %struct.reply_info* %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @VERB_ALGO, align 4
  %164 = call i32 @verbose(i32 %163, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %506

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165, %145, %128
  %167 = load i32, i32* %30, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %255

169:                                              ; preds = %166
  %170 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %171 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = load i64, i64* @sec_status_bogus, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %177 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = load i64, i64* @sec_status_secure_sentinel_fail, align 8
  %180 = icmp eq i64 %178, %179
  br i1 %180, label %181, label %255

181:                                              ; preds = %175, %169
  %182 = load i8*, i8** @EDNS_ADVERTISED_VERSION, align 8
  %183 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %184 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %183, i32 0, i32 4
  store i8* %182, i8** %184, align 8
  %185 = load i8*, i8** @EDNS_ADVERTISED_SIZE, align 8
  %186 = ptrtoint i8* %185 to i32
  %187 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %188 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %187, i32 0, i32 0
  store i32 %186, i32* %188, align 8
  %189 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %190 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %189, i32 0, i32 3
  store i64 0, i64* %190, align 8
  %191 = load i32, i32* @EDNS_DO, align 4
  %192 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %193 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = and i32 %194, %191
  store i32 %195, i32* %193, align 4
  %196 = load %struct.worker*, %struct.worker** %13, align 8
  %197 = getelementptr inbounds %struct.worker, %struct.worker* %196, i32 0, i32 1
  %198 = load %struct.query_info*, %struct.query_info** %14, align 8
  %199 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %200 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %201 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %202 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %203 = load %struct.worker*, %struct.worker** %13, align 8
  %204 = getelementptr inbounds %struct.worker, %struct.worker* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 @inplace_cb_reply_servfail_call(%struct.TYPE_13__* %197, %struct.query_info* %198, i32* null, %struct.reply_info* %199, i64 %200, %struct.edns_data* %201, %struct.comm_reply* %202, i32 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %181
  br label %506

209:                                              ; preds = %181
  %210 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %211 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %210, i32 0, i32 0
  %212 = load %struct.TYPE_15__*, %struct.TYPE_15__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %216 = load %struct.query_info*, %struct.query_info** %14, align 8
  %217 = load i32, i32* %20, align 4
  %218 = load i32, i32* %21, align 4
  %219 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %220 = call i32 @error_encode(i32 %214, i64 %215, %struct.query_info* %216, i32 %217, i32 %218, %struct.edns_data* %219)
  %221 = load %struct.worker*, %struct.worker** %13, align 8
  %222 = getelementptr inbounds %struct.worker, %struct.worker* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load %struct.worker*, %struct.worker** %13, align 8
  %226 = getelementptr inbounds %struct.worker, %struct.worker* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %229 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %232 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @rrset_array_unlock_touch(i32 %224, i32 %227, i32 %230, i32 %233)
  %235 = load %struct.worker*, %struct.worker** %13, align 8
  %236 = getelementptr inbounds %struct.worker, %struct.worker* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %254

240:                                              ; preds = %209
  %241 = load %struct.worker*, %struct.worker** %13, align 8
  %242 = getelementptr inbounds %struct.worker, %struct.worker* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %243, align 8
  %246 = load %struct.worker*, %struct.worker** %13, align 8
  %247 = getelementptr inbounds %struct.worker, %struct.worker* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %251 = getelementptr inbounds i32, i32* %249, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %240, %209
  store i32 1, i32* %12, align 4
  br label %521

255:                                              ; preds = %175, %166
  %256 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %257 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @sec_status_unchecked, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %267

261:                                              ; preds = %255
  %262 = load i32, i32* %30, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* @VERB_ALGO, align 4
  %266 = call i32 @verbose(i32 %265, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %506

267:                                              ; preds = %261, %255
  %268 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %269 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @sec_status_secure, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %286

273:                                              ; preds = %267
  %274 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %275 = call i64 @reply_all_rrsets_secure(%struct.reply_info* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %273
  store i32 1, i32* %29, align 4
  br label %285

278:                                              ; preds = %273
  %279 = load i32, i32* %30, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load i32, i32* @VERB_ALGO, align 4
  %283 = call i32 @verbose(i32 %282, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %506

284:                                              ; preds = %278
  store i32 0, i32* %29, align 4
  br label %285

285:                                              ; preds = %284, %277
  br label %287

286:                                              ; preds = %267
  store i32 0, i32* %29, align 4
  br label %287

287:                                              ; preds = %286, %285
  br label %288

288:                                              ; preds = %287
  br label %289

289:                                              ; preds = %288
  %290 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %291 = bitcast %struct.edns_data* %24 to i8*
  %292 = bitcast %struct.edns_data* %290 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %291, i8* align 8 %292, i64 32, i1 false)
  %293 = load i8*, i8** @EDNS_ADVERTISED_VERSION, align 8
  %294 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %295 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %294, i32 0, i32 4
  store i8* %293, i8** %295, align 8
  %296 = load i8*, i8** @EDNS_ADVERTISED_SIZE, align 8
  %297 = ptrtoint i8* %296 to i32
  %298 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %299 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 8
  %300 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %301 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %300, i32 0, i32 3
  store i64 0, i64* %301, align 8
  %302 = load i32, i32* @EDNS_DO, align 4
  %303 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %304 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, %302
  store i32 %306, i32* %304, align 4
  %307 = load %struct.worker*, %struct.worker** %13, align 8
  %308 = getelementptr inbounds %struct.worker, %struct.worker* %307, i32 0, i32 1
  %309 = load %struct.query_info*, %struct.query_info** %14, align 8
  %310 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %311 = load i32, i32* %21, align 4
  %312 = load i32, i32* @LDNS_RCODE_MASK, align 4
  %313 = and i32 %311, %312
  %314 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %315 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %316 = load %struct.worker*, %struct.worker** %13, align 8
  %317 = getelementptr inbounds %struct.worker, %struct.worker* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = call i32 @inplace_cb_reply_cache_call(%struct.TYPE_13__* %308, %struct.query_info* %309, i32* null, %struct.reply_info* %310, i32 %313, %struct.edns_data* %314, %struct.comm_reply* %315, i32 %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %322, label %321

321:                                              ; preds = %289
  br label %506

322:                                              ; preds = %289
  %323 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %17, align 8
  store %struct.ub_packed_rrset_key* null, %struct.ub_packed_rrset_key** %323, align 8
  %324 = load %struct.worker*, %struct.worker** %13, align 8
  %325 = getelementptr inbounds %struct.worker, %struct.worker* %324, i32 0, i32 3
  %326 = load %struct.TYPE_11__*, %struct.TYPE_11__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %343

330:                                              ; preds = %322
  %331 = load %struct.reply_info*, %struct.reply_info** %28, align 8
  %332 = icmp ne %struct.reply_info* %331, null
  br i1 %332, label %343, label %333

333:                                              ; preds = %330
  %334 = load %struct.worker*, %struct.worker** %13, align 8
  %335 = load %struct.query_info*, %struct.query_info** %14, align 8
  %336 = load %struct.respip_client_info*, %struct.respip_client_info** %15, align 8
  %337 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %338 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %339 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %17, align 8
  %340 = call i32 @apply_respip_action(%struct.worker* %334, %struct.query_info* %335, %struct.respip_client_info* %336, %struct.reply_info* %337, %struct.comm_reply* %338, %struct.ub_packed_rrset_key** %339, %struct.reply_info** %27)
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %343, label %342

342:                                              ; preds = %333
  br label %506

343:                                              ; preds = %333, %330, %322
  %344 = load %struct.reply_info*, %struct.reply_info** %28, align 8
  %345 = icmp ne %struct.reply_info* %344, null
  br i1 %345, label %346, label %358

346:                                              ; preds = %343
  %347 = load %struct.reply_info*, %struct.reply_info** %28, align 8
  %348 = load %struct.query_info*, %struct.query_info** %14, align 8
  %349 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %350 = load %struct.respip_client_info*, %struct.respip_client_info** %15, align 8
  %351 = load i32, i32* %30, align 4
  %352 = load %struct.worker*, %struct.worker** %13, align 8
  %353 = getelementptr inbounds %struct.worker, %struct.worker* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = call i32 @respip_merge_cname(%struct.reply_info* %347, %struct.query_info* %348, %struct.reply_info* %349, %struct.respip_client_info* %350, i32 %351, %struct.reply_info** %27, i32 %354)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %358, label %357

357:                                              ; preds = %346
  br label %506

358:                                              ; preds = %346, %343
  br label %359

359:                                              ; preds = %358
  %360 = load %struct.reply_info*, %struct.reply_info** %27, align 8
  %361 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %362 = icmp ne %struct.reply_info* %360, %361
  br i1 %362, label %363, label %364

363:                                              ; preds = %359
  store i32 0, i32* %29, align 4
  br label %364

364:                                              ; preds = %363, %359
  %365 = load %struct.reply_info*, %struct.reply_info** %27, align 8
  %366 = icmp ne %struct.reply_info* %365, null
  br i1 %366, label %367, label %371

367:                                              ; preds = %364
  %368 = load %struct.ub_packed_rrset_key**, %struct.ub_packed_rrset_key*** %17, align 8
  %369 = load %struct.ub_packed_rrset_key*, %struct.ub_packed_rrset_key** %368, align 8
  %370 = icmp ne %struct.ub_packed_rrset_key* %369, null
  br i1 %370, label %371, label %401

371:                                              ; preds = %367, %364
  %372 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %373 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %372, i32 0, i32 0
  %374 = load %struct.TYPE_15__*, %struct.TYPE_15__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %374, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @sldns_buffer_clear(i32 %376)
  %378 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %379 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %378, i32 0, i32 0
  %380 = load %struct.TYPE_15__*, %struct.TYPE_15__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 4
  %383 = call i32 @sldns_buffer_flip(i32 %382)
  %384 = load %struct.reply_info*, %struct.reply_info** %27, align 8
  %385 = icmp ne %struct.reply_info* %384, null
  br i1 %385, label %388, label %386

386:                                              ; preds = %371
  %387 = load i32*, i32** %16, align 8
  store i32 1, i32* %387, align 4
  br label %400

388:                                              ; preds = %371
  %389 = load %struct.reply_info*, %struct.reply_info** %27, align 8
  %390 = load %struct.worker*, %struct.worker** %13, align 8
  %391 = getelementptr inbounds %struct.worker, %struct.worker* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = call %struct.reply_info* @reply_info_copy(%struct.reply_info* %389, i32* null, i32 %392)
  %394 = load %struct.reply_info**, %struct.reply_info*** %18, align 8
  store %struct.reply_info* %393, %struct.reply_info** %394, align 8
  %395 = load %struct.reply_info**, %struct.reply_info*** %18, align 8
  %396 = load %struct.reply_info*, %struct.reply_info** %395, align 8
  %397 = icmp ne %struct.reply_info* %396, null
  br i1 %397, label %399, label %398

398:                                              ; preds = %388
  br label %506

399:                                              ; preds = %388
  br label %400

400:                                              ; preds = %399, %386
  br label %467

401:                                              ; preds = %367
  %402 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %403 = load %struct.worker*, %struct.worker** %13, align 8
  %404 = getelementptr inbounds %struct.worker, %struct.worker* %403, i32 0, i32 1
  %405 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %404, i32 0, i32 2
  %406 = load %struct.TYPE_14__*, %struct.TYPE_14__** %405, align 8
  %407 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %408 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %407, i32 0, i32 0
  %409 = load %struct.TYPE_15__*, %struct.TYPE_15__** %408, align 8
  %410 = load %struct.worker*, %struct.worker** %13, align 8
  %411 = getelementptr inbounds %struct.worker, %struct.worker* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = call i32 @apply_edns_options(%struct.edns_data* %402, %struct.edns_data* %24, %struct.TYPE_14__* %406, %struct.TYPE_15__* %409, i32 %412)
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %439

415:                                              ; preds = %401
  %416 = load %struct.query_info*, %struct.query_info** %14, align 8
  %417 = load %struct.reply_info*, %struct.reply_info** %27, align 8
  %418 = load i32, i32* %20, align 4
  %419 = load i32, i32* %21, align 4
  %420 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %421 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %420, i32 0, i32 0
  %422 = load %struct.TYPE_15__*, %struct.TYPE_15__** %421, align 8
  %423 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load i64, i64* %25, align 8
  %426 = load %struct.worker*, %struct.worker** %13, align 8
  %427 = getelementptr inbounds %struct.worker, %struct.worker* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = load i32, i32* %26, align 4
  %430 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %431 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %432 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @EDNS_DO, align 4
  %435 = and i32 %433, %434
  %436 = load i32, i32* %29, align 4
  %437 = call i32 @reply_info_answer_encode(%struct.query_info* %416, %struct.reply_info* %417, i32 %418, i32 %419, i32 %424, i64 %425, i32 1, i32 %428, i32 %429, %struct.edns_data* %430, i32 %435, i32 %436)
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %466, label %439

439:                                              ; preds = %415, %401
  %440 = load %struct.worker*, %struct.worker** %13, align 8
  %441 = getelementptr inbounds %struct.worker, %struct.worker* %440, i32 0, i32 1
  %442 = load %struct.query_info*, %struct.query_info** %14, align 8
  %443 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %444 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %445 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %446 = load %struct.worker*, %struct.worker** %13, align 8
  %447 = getelementptr inbounds %struct.worker, %struct.worker* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = call i32 @inplace_cb_reply_servfail_call(%struct.TYPE_13__* %441, %struct.query_info* %442, i32* null, %struct.reply_info* null, i64 %443, %struct.edns_data* %444, %struct.comm_reply* %445, i32 %448)
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %454, label %451

451:                                              ; preds = %439
  %452 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %453 = getelementptr inbounds %struct.edns_data, %struct.edns_data* %452, i32 0, i32 2
  store i32* null, i32** %453, align 8
  br label %454

454:                                              ; preds = %451, %439
  %455 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %456 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %455, i32 0, i32 0
  %457 = load %struct.TYPE_15__*, %struct.TYPE_15__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load i64, i64* @LDNS_RCODE_SERVFAIL, align 8
  %461 = load %struct.query_info*, %struct.query_info** %14, align 8
  %462 = load i32, i32* %20, align 4
  %463 = load i32, i32* %21, align 4
  %464 = load %struct.edns_data*, %struct.edns_data** %23, align 8
  %465 = call i32 @error_encode(i32 %459, i64 %460, %struct.query_info* %461, i32 %462, i32 %463, %struct.edns_data* %464)
  br label %466

466:                                              ; preds = %454, %415
  br label %467

467:                                              ; preds = %466, %400
  %468 = load %struct.worker*, %struct.worker** %13, align 8
  %469 = getelementptr inbounds %struct.worker, %struct.worker* %468, i32 0, i32 1
  %470 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %469, i32 0, i32 1
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.worker*, %struct.worker** %13, align 8
  %473 = getelementptr inbounds %struct.worker, %struct.worker* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %476 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %475, i32 0, i32 5
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %479 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %478, i32 0, i32 4
  %480 = load i32, i32* %479, align 8
  %481 = call i32 @rrset_array_unlock_touch(i32 %471, i32 %474, i32 %477, i32 %480)
  %482 = load %struct.worker*, %struct.worker** %13, align 8
  %483 = getelementptr inbounds %struct.worker, %struct.worker* %482, i32 0, i32 2
  %484 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %483, i32 0, i32 1
  %485 = load i64, i64* %484, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %505

487:                                              ; preds = %467
  %488 = load i32, i32* %29, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %490, label %496

490:                                              ; preds = %487
  %491 = load %struct.worker*, %struct.worker** %13, align 8
  %492 = getelementptr inbounds %struct.worker, %struct.worker* %491, i32 0, i32 2
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 8
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %493, align 8
  br label %496

496:                                              ; preds = %490, %487
  %497 = load %struct.worker*, %struct.worker** %13, align 8
  %498 = getelementptr inbounds %struct.worker, %struct.worker* %497, i32 0, i32 2
  %499 = load %struct.comm_reply*, %struct.comm_reply** %22, align 8
  %500 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %499, i32 0, i32 0
  %501 = load %struct.TYPE_15__*, %struct.TYPE_15__** %500, align 8
  %502 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = call i32 @server_stats_insrcode(%struct.TYPE_12__* %498, i32 %503)
  br label %505

505:                                              ; preds = %496, %467
  store i32 1, i32* %12, align 4
  br label %521

506:                                              ; preds = %398, %357, %342, %321, %281, %264, %208, %162
  %507 = load %struct.worker*, %struct.worker** %13, align 8
  %508 = getelementptr inbounds %struct.worker, %struct.worker* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %508, i32 0, i32 1
  %510 = load i32, i32* %509, align 8
  %511 = load %struct.worker*, %struct.worker** %13, align 8
  %512 = getelementptr inbounds %struct.worker, %struct.worker* %511, i32 0, i32 0
  %513 = load i32, i32* %512, align 8
  %514 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %515 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %514, i32 0, i32 5
  %516 = load i32, i32* %515, align 4
  %517 = load %struct.reply_info*, %struct.reply_info** %19, align 8
  %518 = getelementptr inbounds %struct.reply_info, %struct.reply_info* %517, i32 0, i32 4
  %519 = load i32, i32* %518, align 8
  %520 = call i32 @rrset_array_unlock_touch(i32 %510, i32 %513, i32 %516, i32 %519)
  store i32 0, i32* %12, align 4
  br label %521

521:                                              ; preds = %506, %505, %254, %126, %115, %95, %85
  %522 = load i32, i32* %12, align 4
  ret i32 %522
}

declare dso_local i32 @rrset_array_lock(i32, i32, i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @reply_check_cname_chain(%struct.query_info*, %struct.reply_info*) #1

declare dso_local i32 @verbose(i32, i8*) #1

declare dso_local i32 @inplace_cb_reply_servfail_call(%struct.TYPE_13__*, %struct.query_info*, i32*, %struct.reply_info*, i64, %struct.edns_data*, %struct.comm_reply*, i32) #1

declare dso_local i32 @error_encode(i32, i64, %struct.query_info*, i32, i32, %struct.edns_data*) #1

declare dso_local i32 @rrset_array_unlock_touch(i32, i32, i32, i32) #1

declare dso_local i64 @reply_all_rrsets_secure(%struct.reply_info*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @inplace_cb_reply_cache_call(%struct.TYPE_13__*, %struct.query_info*, i32*, %struct.reply_info*, i32, %struct.edns_data*, %struct.comm_reply*, i32) #1

declare dso_local i32 @apply_respip_action(%struct.worker*, %struct.query_info*, %struct.respip_client_info*, %struct.reply_info*, %struct.comm_reply*, %struct.ub_packed_rrset_key**, %struct.reply_info**) #1

declare dso_local i32 @respip_merge_cname(%struct.reply_info*, %struct.query_info*, %struct.reply_info*, %struct.respip_client_info*, i32, %struct.reply_info**, i32) #1

declare dso_local i32 @sldns_buffer_clear(i32) #1

declare dso_local i32 @sldns_buffer_flip(i32) #1

declare dso_local %struct.reply_info* @reply_info_copy(%struct.reply_info*, i32*, i32) #1

declare dso_local i32 @apply_edns_options(%struct.edns_data*, %struct.edns_data*, %struct.TYPE_14__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @reply_info_answer_encode(%struct.query_info*, %struct.reply_info*, i32, i32, i32, i64, i32, i32, i32, %struct.edns_data*, i32, i32) #1

declare dso_local i32 @server_stats_insrcode(%struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
