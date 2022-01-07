; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_udp_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_serviced_udp_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comm_point = type { i32, i32 }
%struct.comm_reply = type { i32 }
%struct.serviced_query = type { i64, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, %struct.outside_network*, i32, i64, i32* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.outside_network = type { i32, %struct.timeval*, %struct.TYPE_3__* }
%struct.timeval = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@NETEVENT_TIMEOUT = common dso_local global i32 0, align 4
@serviced_query_UDP_EDNS = common dso_local global i64 0, align 8
@serviced_query_UDP_EDNS_FRAG = common dso_local global i64 0, align 8
@VERB_ALGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"try edns1xx0\00", align 1
@NETEVENT_CLOSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"out of memory in UDP exponential backoff\00", align 1
@OUTBOUND_UDP_RETRY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"retry query\00", align 1
@NETEVENT_NOERROR = common dso_local global i32 0, align 4
@LDNS_RCODE_FORMERR = common dso_local global i64 0, align 8
@LDNS_RCODE_NOTIMPL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"serviced query: attempt without EDNS\00", align 1
@serviced_query_UDP_EDNS_fallback = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"serviced query: EDNS works for\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"Out of memory caching edns works\00", align 1
@LDNS_RCODE_NOERROR = common dso_local global i64 0, align 8
@LDNS_RCODE_NXDOMAIN = common dso_local global i64 0, align 8
@LDNS_RCODE_YXDOMAIN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"serviced query: EDNS fails for\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Out of memory caching no edns for host\00", align 1
@.str.8 = private unnamed_addr constant [67 x i8] c"serviced query: EDNS fails, but not stored because need DNSSEC for\00", align 1
@serviced_query_UDP = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [30 x i8] c"measured roundtrip at %d msec\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"out of memory noting rtt.\00", align 1
@serviced_query_TCP_EDNS = common dso_local global i64 0, align 8
@serviced_query_TCP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serviced_udp_callback(%struct.comm_point* %0, i8* %1, i32 %2, %struct.comm_reply* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comm_point*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.comm_reply*, align 8
  %10 = alloca %struct.serviced_query*, align 8
  %11 = alloca %struct.outside_network*, align 8
  %12 = alloca %struct.timeval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comm_point* %0, %struct.comm_point** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.comm_reply* %3, %struct.comm_reply** %9, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.serviced_query*
  store %struct.serviced_query* %16, %struct.serviced_query** %10, align 8
  %17 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %18 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %17, i32 0, i32 11
  %19 = load %struct.outside_network*, %struct.outside_network** %18, align 8
  store %struct.outside_network* %19, %struct.outside_network** %11, align 8
  %20 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %21 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %20, i32 0, i32 11
  %22 = load %struct.outside_network*, %struct.outside_network** %21, align 8
  %23 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %22, i32 0, i32 1
  %24 = load %struct.timeval*, %struct.timeval** %23, align 8
  %25 = bitcast %struct.timeval* %12 to i8*
  %26 = bitcast %struct.timeval* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 16, i1 false)
  %27 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %28 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %27, i32 0, i32 14
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @NETEVENT_TIMEOUT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %145

32:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  %33 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %34 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @serviced_query_UDP_EDNS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %32
  %39 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %40 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %41, 5000
  br i1 %42, label %43, label %71

43:                                               ; preds = %38
  %44 = load i64, i64* @serviced_query_UDP_EDNS_FRAG, align 8
  %45 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %46 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @VERB_ALGO, align 4
  %48 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %49 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %48, i32 0, i32 13
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %50, 10
  %52 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %53 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %52, i32 0, i32 8
  %54 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %55 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @log_name_addr(i32 %47, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %51, i32* %53, i32 %56)
  %58 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %59 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %60 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @serviced_udp_send(%struct.serviced_query* %58, i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %43
  %65 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %66 = load i32, i32* @NETEVENT_CLOSED, align 4
  %67 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %68 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %69 = call i32 @serviced_callbacks(%struct.serviced_query* %65, i32 %66, %struct.comm_point* %67, %struct.comm_reply* %68)
  br label %70

70:                                               ; preds = %64, %43
  store i32 0, i32* %5, align 4
  br label %470

71:                                               ; preds = %38, %32
  %72 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %73 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @serviced_query_UDP_EDNS_FRAG, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i64, i64* @serviced_query_UDP_EDNS, align 8
  %79 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %80 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %83 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %83, align 8
  %86 = load %struct.outside_network*, %struct.outside_network** %11, align 8
  %87 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %90 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %89, i32 0, i32 8
  %91 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %92 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %91, i32 0, i32 7
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %95 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %98 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %101 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %104 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  %109 = call i32 @infra_rtt_update(i32 %88, i32* %90, i32 %93, i32 %96, i32 %99, i32 %102, i32 -1, i32 %105, i32 %108)
  store i32 %109, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %81
  %112 = call i32 @log_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %111, %81
  %114 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %115 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @OUTBOUND_UDP_RETRY, align 8
  %118 = icmp slt i64 %116, %117
  br i1 %118, label %119, label %144

119:                                              ; preds = %113
  %120 = load i32, i32* @VERB_ALGO, align 4
  %121 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %122 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %121, i32 0, i32 13
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 10
  %125 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %126 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %125, i32 0, i32 8
  %127 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %128 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @log_name_addr(i32 %120, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %124, i32* %126, i32 %129)
  %131 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %132 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %133 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @serviced_udp_send(%struct.serviced_query* %131, i32 %134)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %143, label %137

137:                                              ; preds = %119
  %138 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %139 = load i32, i32* @NETEVENT_CLOSED, align 4
  %140 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %141 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %142 = call i32 @serviced_callbacks(%struct.serviced_query* %138, i32 %139, %struct.comm_point* %140, %struct.comm_reply* %141)
  br label %143

143:                                              ; preds = %137, %119
  store i32 0, i32* %5, align 4
  br label %470

144:                                              ; preds = %113
  br label %145

145:                                              ; preds = %144, %4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @NETEVENT_NOERROR, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %155

149:                                              ; preds = %145
  %150 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %151 = load i32, i32* %8, align 4
  %152 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %153 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %154 = call i32 @serviced_callbacks(%struct.serviced_query* %150, i32 %151, %struct.comm_point* %152, %struct.comm_reply* %153)
  store i32 0, i32* %5, align 4
  br label %470

155:                                              ; preds = %145
  %156 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %157 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @serviced_query_UDP_EDNS, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %167, label %161

161:                                              ; preds = %155
  %162 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %163 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @serviced_query_UDP_EDNS_FRAG, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %213

167:                                              ; preds = %161, %155
  %168 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %169 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @sldns_buffer_begin(i32 %170)
  %172 = call i64 @LDNS_RCODE_WIRE(i32 %171)
  %173 = load i64, i64* @LDNS_RCODE_FORMERR, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %192, label %175

175:                                              ; preds = %167
  %176 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %177 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @sldns_buffer_begin(i32 %178)
  %180 = call i64 @LDNS_RCODE_WIRE(i32 %179)
  %181 = load i64, i64* @LDNS_RCODE_NOTIMPL, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %192, label %183

183:                                              ; preds = %175
  %184 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %185 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %188 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @packet_edns_malformed(i32 %186, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %213

192:                                              ; preds = %183, %175, %167
  %193 = load i32, i32* @VERB_ALGO, align 4
  %194 = call i32 (i32, i8*, ...) @verbose(i32 %193, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %195 = load i64, i64* @serviced_query_UDP_EDNS_fallback, align 8
  %196 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %197 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %196, i32 0, i32 0
  store i64 %195, i64* %197, align 8
  %198 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %199 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %198, i32 0, i32 2
  store i64 0, i64* %199, align 8
  %200 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %201 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %202 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @serviced_udp_send(%struct.serviced_query* %200, i32 %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %212, label %206

206:                                              ; preds = %192
  %207 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %208 = load i32, i32* @NETEVENT_CLOSED, align 4
  %209 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %210 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %211 = call i32 @serviced_callbacks(%struct.serviced_query* %207, i32 %208, %struct.comm_point* %209, %struct.comm_reply* %210)
  br label %212

212:                                              ; preds = %206, %192
  store i32 0, i32* %5, align 4
  br label %470

213:                                              ; preds = %183, %161
  %214 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %215 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @serviced_query_UDP_EDNS, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %256

219:                                              ; preds = %213
  %220 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %221 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %256, label %224

224:                                              ; preds = %219
  %225 = load i32, i32* @VERB_ALGO, align 4
  %226 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %227 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %226, i32 0, i32 8
  %228 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %229 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @log_addr(i32 %225, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32* %227, i32 %230)
  %232 = load %struct.outside_network*, %struct.outside_network** %11, align 8
  %233 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %236 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %235, i32 0, i32 8
  %237 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %238 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %241 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %240, i32 0, i32 6
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %244 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %243, i32 0, i32 5
  %245 = load i32, i32* %244, align 8
  %246 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = trunc i64 %247 to i32
  %249 = call i32 @infra_edns_update(i32 %234, i32* %236, i32 %239, i32 %242, i32 %245, i32 0, i32 %248)
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %224
  %252 = call i32 @log_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %253

253:                                              ; preds = %251, %224
  %254 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %255 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %254, i32 0, i32 3
  store i32 1, i32* %255, align 8
  br label %339

256:                                              ; preds = %219, %213
  %257 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %258 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = load i64, i64* @serviced_query_UDP_EDNS_fallback, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %338

262:                                              ; preds = %256
  %263 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %264 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 8
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %338, label %267

267:                                              ; preds = %262
  %268 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %269 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @sldns_buffer_begin(i32 %270)
  %272 = call i64 @LDNS_RCODE_WIRE(i32 %271)
  %273 = load i64, i64* @LDNS_RCODE_NOERROR, align 8
  %274 = icmp eq i64 %272, %273
  br i1 %274, label %291, label %275

275:                                              ; preds = %267
  %276 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %277 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = call i32 @sldns_buffer_begin(i32 %278)
  %280 = call i64 @LDNS_RCODE_WIRE(i32 %279)
  %281 = load i64, i64* @LDNS_RCODE_NXDOMAIN, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %291, label %283

283:                                              ; preds = %275
  %284 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %285 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 4
  %287 = call i32 @sldns_buffer_begin(i32 %286)
  %288 = call i64 @LDNS_RCODE_WIRE(i32 %287)
  %289 = load i64, i64* @LDNS_RCODE_YXDOMAIN, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %338

291:                                              ; preds = %283, %275, %267
  %292 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %293 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %292, i32 0, i32 10
  %294 = load i32, i32* %293, align 8
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %326, label %296

296:                                              ; preds = %291
  %297 = load i32, i32* @VERB_ALGO, align 4
  %298 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %299 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %298, i32 0, i32 8
  %300 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %301 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %300, i32 0, i32 7
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @log_addr(i32 %297, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i32* %299, i32 %302)
  %304 = load %struct.outside_network*, %struct.outside_network** %11, align 8
  %305 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %308 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %307, i32 0, i32 8
  %309 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %310 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %309, i32 0, i32 7
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %313 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %312, i32 0, i32 6
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %316 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 8
  %318 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = trunc i64 %319 to i32
  %321 = call i32 @infra_edns_update(i32 %306, i32* %308, i32 %311, i32 %314, i32 %317, i32 -1, i32 %320)
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %325, label %323

323:                                              ; preds = %296
  %324 = call i32 @log_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %325

325:                                              ; preds = %323, %296
  br label %334

326:                                              ; preds = %291
  %327 = load i32, i32* @VERB_ALGO, align 4
  %328 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %329 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %328, i32 0, i32 8
  %330 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %331 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %330, i32 0, i32 7
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @log_addr(i32 %327, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.8, i64 0, i64 0), i32* %329, i32 %332)
  br label %334

334:                                              ; preds = %326, %325
  %335 = load i64, i64* @serviced_query_UDP, align 8
  %336 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %337 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %336, i32 0, i32 0
  store i64 %335, i64* %337, align 8
  br label %338

338:                                              ; preds = %334, %283, %262, %256
  br label %339

339:                                              ; preds = %338, %253
  br label %340

340:                                              ; preds = %339
  %341 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %344 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %343, i32 0, i32 9
  %345 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = icmp sgt i64 %342, %346
  br i1 %347, label %364, label %348

348:                                              ; preds = %340
  %349 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %350 = load i64, i64* %349, align 8
  %351 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %352 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %351, i32 0, i32 9
  %353 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = icmp eq i64 %350, %354
  br i1 %355, label %356, label %425

356:                                              ; preds = %348
  %357 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %358 = load i64, i64* %357, align 8
  %359 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %360 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %359, i32 0, i32 9
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 1
  %362 = load i64, i64* %361, align 8
  %363 = icmp sgt i64 %358, %362
  br i1 %363, label %364, label %425

364:                                              ; preds = %356, %340
  %365 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %366 = load i64, i64* %365, align 8
  %367 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %368 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %367, i32 0, i32 9
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = sub nsw i64 %366, %370
  %372 = trunc i64 %371 to i32
  %373 = mul nsw i32 %372, 1000
  %374 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 1
  %375 = load i64, i64* %374, align 8
  %376 = trunc i64 %375 to i32
  %377 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %378 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %377, i32 0, i32 9
  %379 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = trunc i64 %380 to i32
  %382 = sub nsw i32 %376, %381
  %383 = sdiv i32 %382, 1000
  %384 = add nsw i32 %373, %383
  store i32 %384, i32* %14, align 4
  %385 = load i32, i32* @VERB_ALGO, align 4
  %386 = load i32, i32* %14, align 4
  %387 = call i32 (i32, i8*, ...) @verbose(i32 %385, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i32 %386)
  %388 = load i32, i32* %14, align 4
  %389 = icmp sge i32 %388, 0
  %390 = zext i1 %389 to i32
  %391 = call i32 @log_assert(i32 %390)
  %392 = load i32, i32* %14, align 4
  %393 = icmp slt i32 %392, 60000
  br i1 %393, label %394, label %424

394:                                              ; preds = %364
  %395 = load %struct.outside_network*, %struct.outside_network** %11, align 8
  %396 = getelementptr inbounds %struct.outside_network, %struct.outside_network* %395, i32 0, i32 0
  %397 = load i32, i32* %396, align 8
  %398 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %399 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %398, i32 0, i32 8
  %400 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %401 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %400, i32 0, i32 7
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %404 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %403, i32 0, i32 6
  %405 = load i32, i32* %404, align 4
  %406 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %407 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 8
  %409 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %410 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %409, i32 0, i32 4
  %411 = load i32, i32* %410, align 4
  %412 = load i32, i32* %14, align 4
  %413 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %414 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = getelementptr inbounds %struct.timeval, %struct.timeval* %12, i32 0, i32 0
  %417 = load i64, i64* %416, align 8
  %418 = trunc i64 %417 to i32
  %419 = call i32 @infra_rtt_update(i32 %397, i32* %399, i32 %402, i32 %405, i32 %408, i32 %411, i32 %412, i32 %415, i32 %418)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %423, label %421

421:                                              ; preds = %394
  %422 = call i32 @log_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  br label %423

423:                                              ; preds = %421, %394
  br label %424

424:                                              ; preds = %423, %364
  br label %425

425:                                              ; preds = %424, %356, %348
  %426 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %427 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 4
  %429 = call i32 @sldns_buffer_begin(i32 %428)
  %430 = call i64 @LDNS_TC_WIRE(i32 %429)
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %432, label %464

432:                                              ; preds = %425
  %433 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %434 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = load i64, i64* @serviced_query_UDP_EDNS, align 8
  %437 = icmp eq i64 %435, %436
  br i1 %437, label %450, label %438

438:                                              ; preds = %432
  %439 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %440 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %439, i32 0, i32 0
  %441 = load i64, i64* %440, align 8
  %442 = load i64, i64* @serviced_query_UDP_EDNS_FRAG, align 8
  %443 = icmp eq i64 %441, %442
  br i1 %443, label %450, label %444

444:                                              ; preds = %438
  %445 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %446 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %445, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = load i64, i64* @serviced_query_UDP_EDNS_fallback, align 8
  %449 = icmp eq i64 %447, %448
  br i1 %449, label %450, label %454

450:                                              ; preds = %444, %438, %432
  %451 = load i64, i64* @serviced_query_TCP_EDNS, align 8
  %452 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %453 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %452, i32 0, i32 0
  store i64 %451, i64* %453, align 8
  br label %458

454:                                              ; preds = %444
  %455 = load i64, i64* @serviced_query_TCP, align 8
  %456 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %457 = getelementptr inbounds %struct.serviced_query, %struct.serviced_query* %456, i32 0, i32 0
  store i64 %455, i64* %457, align 8
  br label %458

458:                                              ; preds = %454, %450
  %459 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %460 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %461 = getelementptr inbounds %struct.comm_point, %struct.comm_point* %460, i32 0, i32 0
  %462 = load i32, i32* %461, align 4
  %463 = call i32 @serviced_tcp_initiate(%struct.serviced_query* %459, i32 %462)
  store i32 0, i32* %5, align 4
  br label %470

464:                                              ; preds = %425
  %465 = load %struct.serviced_query*, %struct.serviced_query** %10, align 8
  %466 = load i32, i32* %8, align 4
  %467 = load %struct.comm_point*, %struct.comm_point** %6, align 8
  %468 = load %struct.comm_reply*, %struct.comm_reply** %9, align 8
  %469 = call i32 @serviced_callbacks(%struct.serviced_query* %465, i32 %466, %struct.comm_point* %467, %struct.comm_reply* %468)
  store i32 0, i32* %5, align 4
  br label %470

470:                                              ; preds = %464, %458, %212, %149, %143, %70
  %471 = load i32, i32* %5, align 4
  ret i32 %471
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @log_name_addr(i32, i8*, i64, i32*, i32) #2

declare dso_local i32 @serviced_udp_send(%struct.serviced_query*, i32) #2

declare dso_local i32 @serviced_callbacks(%struct.serviced_query*, i32, %struct.comm_point*, %struct.comm_reply*) #2

declare dso_local i32 @infra_rtt_update(i32, i32*, i32, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @log_err(i8*) #2

declare dso_local i64 @LDNS_RCODE_WIRE(i32) #2

declare dso_local i32 @sldns_buffer_begin(i32) #2

declare dso_local i64 @packet_edns_malformed(i32, i32) #2

declare dso_local i32 @verbose(i32, i8*, ...) #2

declare dso_local i32 @log_addr(i32, i8*, i32*, i32) #2

declare dso_local i32 @infra_edns_update(i32, i32*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @log_assert(i32) #2

declare dso_local i64 @LDNS_TC_WIRE(i32) #2

declare dso_local i32 @serviced_tcp_initiate(%struct.serviced_query*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
