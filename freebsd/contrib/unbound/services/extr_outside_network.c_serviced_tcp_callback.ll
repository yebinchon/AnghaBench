; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_tcp_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_tcp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32 }
%struct.comm_reply = type { i32, i32, %struct.comm_point* }
%struct.serviced_query = type { i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_6__, i64, i64, i32, i32, i32, i32* }
%struct.TYPE_4__ = type { i32, %struct.timeval*, i32*, %struct.TYPE_5__* }
%struct.timeval = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@VERB_QUERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"tcp error for address\00", align 1
@serviced_query_TCP_EDNS = common dso_local global i64 0, align 8
@LDNS_RCODE_FORMERR = common dso_local global i64 0, align 8
@LDNS_RCODE_NOTIMPL = common dso_local global i64 0, align 8
@serviced_query_TCP_EDNS_fallback = common dso_local global i64 0, align 8
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@LDNS_RCODE_YXDOMAIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Out of memory caching no edns for host\00", align 1
@serviced_query_TCP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"out of memory in TCP exponential backoff.\00", align 1
@VERB_ALGO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"measured TCP-time at %d msec\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"out of memory noting rtt.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serviced_tcp_callback(%struct.comm_point* %0, i8* %1, i32 %2, %struct.comm_reply* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comm_reply*, align 8
  %10 = alloca %struct.serviced_query*, align 8
  %11 = alloca %struct.comm_reply, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  store %struct.comm_point* %0, %struct.comm_point** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.comm_reply* %3, %struct.comm_reply** %9, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = bitcast i8* %14 to %struct.serviced_query*
  store %struct.serviced_query* %15, %struct.serviced_query** %10, align 8
  %16 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %17 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %16, i32 0, i32 14
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @NETEVENT_NOERROR, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i32, i32* @VERB_QUERY, align 4
  %23 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %24 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %23, i32 0, i32 2
  %25 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %26 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @log_addr(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @NETEVENT_NOERROR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %35 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %34, i32 0, i32 7
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %40 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %39, i32 0, i32 2
  %41 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %42 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %45 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %48 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @infra_update_tcp_works(i32 %38, i32* %40, i32 %43, i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %33, %29
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @NETEVENT_NOERROR, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %86

55:                                               ; preds = %51
  %56 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %57 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @serviced_query_TCP_EDNS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %55
  %62 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %63 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @sldns_buffer_begin(i32 %64)
  %66 = call i64 @LDNS_RCODE_WIRE(i32 %65)
  %67 = load i64, i64* @LDNS_RCODE_FORMERR, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %61
  %70 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %71 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @sldns_buffer_begin(i32 %72)
  %74 = call i64 @LDNS_RCODE_WIRE(i32 %73)
  %75 = load i64, i64* @LDNS_RCODE_NOTIMPL, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %69, %61
  %78 = load i64, i64* @serviced_query_TCP_EDNS_fallback, align 8
  %79 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %80 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  %81 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %82 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %83 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @serviced_tcp_initiate(%struct.serviced_query* %81, i32 %84)
  store i32 0, i32* %5, align 4
  br label %324

86:                                               ; preds = %69, %55, %51
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @NETEVENT_NOERROR, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %157

90:                                               ; preds = %86
  %91 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %92 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @serviced_query_TCP_EDNS_fallback, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %157

96:                                               ; preds = %90
  %97 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %98 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @sldns_buffer_begin(i32 %99)
  %101 = call i64 @LDNS_RCODE_WIRE(i32 %100)
  %102 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %120, label %104

104:                                              ; preds = %96
  %105 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %106 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @sldns_buffer_begin(i32 %107)
  %109 = call i64 @LDNS_RCODE_WIRE(i32 %108)
  %110 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %104
  %113 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %114 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @sldns_buffer_begin(i32 %115)
  %117 = call i64 @LDNS_RCODE_WIRE(i32 %116)
  %118 = load i64, i64* @LDNS_RCODE_YXDOMAIN, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %157

120:                                              ; preds = %112, %104, %96
  %121 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %122 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %153, label %125

125:                                              ; preds = %120
  %126 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %127 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %126, i32 0, i32 7
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %132 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %131, i32 0, i32 2
  %133 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %134 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %137 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %140 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %139, i32 0, i32 5
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %143 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %142, i32 0, i32 7
  %144 = load %struct.TYPE_4__*, %struct.TYPE_4__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @infra_edns_update(i32 %130, i32* %132, i32 %135, i32 %138, i32 %141, i32 -1, i32 %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %125
  %151 = call i32 @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %125
  br label %153

153:                                              ; preds = %152, %120
  %154 = load i64, i64* @serviced_query_TCP, align 8
  %155 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %156 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  br label %157

157:                                              ; preds = %153, %112, %90, %86
  br label %158

158:                                              ; preds = %157
  %159 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %160 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %159, i32 0, i32 10
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %158
  %164 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %165 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %164, i32 0, i32 9
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %299

168:                                              ; preds = %163, %158
  %169 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %170 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %169, i32 0, i32 7
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load %struct.timeval*, %struct.timeval** %172, align 8
  %174 = bitcast %struct.timeval* %12 to i8*
  %175 = bitcast %struct.timeval* %173 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %174, i8* align 8 %175, i64 16, i1 false)
  %176 = load i32, i32* %8, align 4
  %177 = load i32, i32* @NETEVENT_NOERROR, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %179, label %210

179:                                              ; preds = %168
  %180 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %181 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %180, i32 0, i32 7
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %186 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %185, i32 0, i32 2
  %187 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %188 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %191 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %190, i32 0, i32 6
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %194 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %197 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %200 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = trunc i64 %203 to i32
  %205 = call i32 @infra_rtt_update(i32 %184, i32* %186, i32 %189, i32 %192, i32 %195, i32 %198, i32 -1, i32 %201, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %179
  %208 = call i32 @log_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207, %179
  br label %298

210:                                              ; preds = %168
  %211 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %214 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %213, i32 0, i32 8
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp sgt i64 %212, %216
  br i1 %217, label %234, label %218

218:                                              ; preds = %210
  %219 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %222 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %221, i32 0, i32 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = icmp eq i64 %220, %224
  br i1 %225, label %226, label %297

226:                                              ; preds = %218
  %227 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %230 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %229, i32 0, i32 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = icmp sgt i64 %228, %232
  br i1 %233, label %234, label %297

234:                                              ; preds = %226, %210
  %235 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %238 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %237, i32 0, i32 8
  %239 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = sub nsw i64 %236, %240
  %242 = trunc i64 %241 to i32
  %243 = mul nsw i32 %242, 1000
  %244 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = trunc i64 %245 to i32
  %247 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %248 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %247, i32 0, i32 8
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 1
  %250 = load i64, i64* %249, align 8
  %251 = trunc i64 %250 to i32
  %252 = sub nsw i32 %246, %251
  %253 = sdiv i32 %252, 1000
  %254 = add nsw i32 %243, %253
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* @VERB_ALGO, align 4
  %256 = load i32, i32* %13, align 4
  %257 = call i32 @verbose(i32 %255, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %256)
  %258 = load i32, i32* %13, align 4
  %259 = icmp sge i32 %258, 0
  %260 = zext i1 %259 to i32
  %261 = call i32 @log_assert(i32 %260)
  %262 = load i32, i32* %13, align 4
  %263 = icmp slt i32 %262, 60000
  br i1 %263, label %264, label %296

264:                                              ; preds = %234
  %265 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %266 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %265, i32 0, i32 7
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %271 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %270, i32 0, i32 2
  %272 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %273 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %276 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %275, i32 0, i32 6
  %277 = load i32, i32* %276, align 4
  %278 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %279 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %278, i32 0, i32 5
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %282 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %281, i32 0, i32 4
  %283 = load i32, i32* %282, align 4
  %284 = load i32, i32* %13, align 4
  %285 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %286 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  %288 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = trunc i64 %289 to i32
  %291 = call i32 @infra_rtt_update(i32 %269, i32* %271, i32 %274, i32 %277, i32 %280, i32 %283, i32 %284, i32 %287, i32 %290)
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %295, label %293

293:                                              ; preds = %264
  %294 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %295

295:                                              ; preds = %293, %264
  br label %296

296:                                              ; preds = %295, %234
  br label %297

297:                                              ; preds = %296, %226, %218
  br label %298

298:                                              ; preds = %297, %209
  br label %299

299:                                              ; preds = %298, %163
  %300 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %301 = icmp ne %struct.comm_reply* %300, null
  br i1 %301, label %305, label %302

302:                                              ; preds = %299
  store %struct.comm_reply* %11, %struct.comm_reply** %9, align 8
  %303 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %304 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %11, i32 0, i32 2
  store %struct.comm_point* %303, %struct.comm_point** %304, align 8
  br label %305

305:                                              ; preds = %302, %299
  %306 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %307 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %306, i32 0, i32 1
  %308 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %309 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %308, i32 0, i32 2
  %310 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %311 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @memcpy(i32* %307, i32* %309, i32 %312)
  %314 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %315 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %318 = getelementptr inbounds %struct.comm_reply, %struct.comm_reply* %317, i32 0, i32 0
  store i32 %316, i32* %318, align 8
  %319 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %320 = load i32, i32* %8, align 4
  %321 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %322 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %323 = call i32 @serviced_callbacks(%struct.serviced_query* %319, i32 %320, %struct.comm_point* %321, %struct.comm_reply* %322)
  store i32 0, i32* %5, align 4
  br label %324

324:                                              ; preds = %305, %77
  %325 = load i32, i32* %5, align 4
  ret i32 %325
}

declare dso_local i32 @log_addr(i32, i8*, i32*, i32) #1

declare dso_local i32 @infra_update_tcp_works(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @LDNS_RCODE_WIRE(i32) #1

declare dso_local i32 @sldns_buffer_begin(i32) #1

declare dso_local i32 @serviced_tcp_initiate(%struct.serviced_query*, i32) #1

declare dso_local i32 @infra_edns_update(i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @log_err(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @infra_rtt_update(i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @verbose(i32, i8*, i32) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @serviced_callbacks(%struct.serviced_query*, i32, %struct.comm_point*, %struct.comm_reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
