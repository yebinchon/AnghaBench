; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_getresponse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdc/extr_ntpdc.c_getresponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_timeval = type { i64, i64 }
%struct.resp_pkt = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@MAXSEQ = common dso_local global i32 0, align 4
@pktdata = common dso_local global i8* null, align 8
@tvout = common dso_local global %struct.sock_timeval zeroinitializer, align 8
@tvsout = common dso_local global %struct.sock_timeval zeroinitializer, align 8
@sockfd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"select fails\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: timed out, nothing received\0A\00", align 1
@currenthost = common dso_local global i8* null, align 8
@ERR_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"%s: timed out with incomplete data\0A\00", align 1
@debug = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"Received sequence numbers\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" %zd,\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c" last frame received\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c" last frame not received\0A\00", align 1
@ERR_INCOMPLETE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@RESP_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [34 x i8] c"Short (%zd byte) packet received\0A\00", align 1
@NTP_VERSION = common dso_local global i32 0, align 4
@NTP_OLDVERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [33 x i8] c"Packet received with version %d\0A\00", align 1
@MODE_PRIVATE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"Packet received with mode %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Encrypted packet received\0A\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"Received request packet, wanted response\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"Received packet with nonzero MBZ field!\0A\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Received implementation/request of %d/%d, wanted %d/%d\00", align 1
@INFO_OKAY = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [44 x i8] c"Error code %d received on not-final packet\0A\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"Received items %zu, size %zu (total %zu), data in packet is %zu\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Received itemsize %zu, previous %zu\0A\00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"Received duplicate sequence number %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Received second end sequence packet\0A\00", align 1
@pktdatasize = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64*, i64*, i8**, i64)* @getresponse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getresponse(i32 %0, i32 %1, i64* %2, i64* %3, i8** %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.resp_pkt, align 8
  %15 = alloca %struct.sock_timeval, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i64 %5, i64* %13, align 8
  %36 = load i32, i32* @MAXSEQ, align 4
  %37 = add nsw i32 %36, 1
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %22, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %23, align 8
  %41 = load i64*, i64** %10, align 8
  store i64 0, i64* %41, align 8
  %42 = load i64*, i64** %11, align 8
  store i64 0, i64* %42, align 8
  store i32 1, i32* %24, align 4
  store i32 0, i32* %26, align 4
  %43 = load i8*, i8** @pktdata, align 8
  store i8* %43, i8** %20, align 8
  %44 = load i8**, i8*** %12, align 8
  store i8* %43, i8** %44, align 8
  store i32 999, i32* %25, align 4
  %45 = call i32 @ZERO(i8* %40)
  %46 = call i32 @FD_ZERO(i32* %28)
  %47 = call i64 @time(i32* null)
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %31, align 4
  br label %49

49:                                               ; preds = %438, %356, %344, %328, %311, %250, %228, %217, %206, %195, %180, %159, %6
  %50 = load i32, i32* %24, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = bitcast %struct.sock_timeval* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %53, i8* align 8 bitcast (%struct.sock_timeval* @tvout to i8*), i64 16, i1 false)
  br label %56

54:                                               ; preds = %49
  %55 = bitcast %struct.sock_timeval* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 bitcast (%struct.sock_timeval* @tvsout to i8*), i64 16, i1 false)
  br label %56

56:                                               ; preds = %54, %52
  %57 = getelementptr inbounds %struct.sock_timeval, %struct.sock_timeval* %15, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = getelementptr inbounds %struct.sock_timeval, %struct.sock_timeval* %15, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = add nsw i32 %59, %63
  store i32 %64, i32* %32, align 4
  %65 = load i64, i64* @sockfd, align 8
  %66 = call i32 @FD_SET(i64 %65, i32* %28)
  %67 = load i64, i64* @sockfd, align 8
  %68 = add nsw i64 %67, 1
  %69 = call i32 @select(i64 %68, i32* %28, i32* null, i32* null, %struct.sock_timeval* %15)
  store i32 %69, i32* %29, align 4
  %70 = load i32, i32* %29, align 4
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = call i32 @warning(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %34, align 4
  br label %441

74:                                               ; preds = %56
  %75 = call i64 @time(i32* null)
  %76 = trunc i64 %75 to i32
  %77 = load i32, i32* %31, align 4
  %78 = sub nsw i32 %76, %77
  %79 = and i32 %78, 2147483647
  store i32 %79, i32* %33, align 4
  %80 = load i32, i32* %29, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %74
  %83 = load i32, i32* %33, align 4
  %84 = load i32, i32* %32, align 4
  %85 = icmp sgt i32 %83, %84
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load i64, i64* @sockfd, align 8
  %88 = bitcast %struct.resp_pkt* %14 to i8*
  %89 = call i32 @recv(i64 %87, i8* %88, i32 32, i32 0)
  store i32 %89, i32* %29, align 4
  %90 = load i32, i32* %29, align 4
  %91 = load i32, i32* %29, align 4
  %92 = sub nsw i32 %91, %90
  store i32 %92, i32* %29, align 4
  br label %93

93:                                               ; preds = %86, %82, %74
  %94 = load i32, i32* %29, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %140

96:                                               ; preds = %93
  %97 = load i32, i32* %24, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load i32, i32* @stderr, align 4
  %101 = load i8*, i8** @currenthost, align 8
  %102 = call i32 @fprintf(i32 %100, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %101)
  %103 = load i32, i32* @ERR_TIMEOUT, align 4
  store i32 %103, i32* %7, align 4
  store i32 1, i32* %34, align 4
  br label %441

104:                                              ; preds = %96
  %105 = load i32, i32* @stderr, align 4
  %106 = load i8*, i8** @currenthost, align 8
  %107 = call i32 @fprintf(i32 %105, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i8* %106)
  %108 = load i64, i64* @debug, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %104
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %29, align 4
  br label %112

112:                                              ; preds = %127, %110
  %113 = load i32, i32* %29, align 4
  %114 = load i32, i32* @MAXSEQ, align 4
  %115 = icmp sle i32 %113, %114
  br i1 %115, label %116, label %130

116:                                              ; preds = %112
  %117 = load i32, i32* %29, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %40, i64 %118
  %120 = load i8, i8* %119, align 1
  %121 = icmp ne i8 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32, i32* %29, align 4
  %124 = sext i32 %123 to i64
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %124)
  br label %126

126:                                              ; preds = %122, %116
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %29, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %29, align 4
  br label %112

130:                                              ; preds = %112
  %131 = load i32, i32* %25, align 4
  %132 = icmp ne i32 %131, 999
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %137

135:                                              ; preds = %130
  %136 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %137

137:                                              ; preds = %135, %133
  br label %138

138:                                              ; preds = %137, %104
  %139 = load i32, i32* @ERR_INCOMPLETE, align 4
  store i32 %139, i32* %7, align 4
  store i32 1, i32* %34, align 4
  br label %441

140:                                              ; preds = %93
  %141 = load i64, i64* @sockfd, align 8
  %142 = bitcast %struct.resp_pkt* %14 to i8*
  %143 = call i32 @recv(i64 %141, i8* %142, i32 32, i32 0)
  store i32 %143, i32* %29, align 4
  %144 = load i32, i32* %29, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %146, label %148

146:                                              ; preds = %140
  %147 = call i32 @warning(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %34, align 4
  br label %441

148:                                              ; preds = %140
  %149 = load i32, i32* %29, align 4
  %150 = load i32, i32* @RESP_HEADER_SIZE, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %148
  %153 = load i64, i64* @debug, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %152
  %156 = load i32, i32* %29, align 4
  %157 = sext i32 %156 to i64
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %157)
  br label %159

159:                                              ; preds = %155, %152
  br label %49

160:                                              ; preds = %148
  %161 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @INFO_VERSION(i32 %162)
  %164 = load i32, i32* @NTP_VERSION, align 4
  %165 = icmp sgt i32 %163, %164
  br i1 %165, label %172, label %166

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @INFO_VERSION(i32 %168)
  %170 = load i32, i32* @NTP_OLDVERSION, align 4
  %171 = icmp slt i32 %169, %170
  br i1 %171, label %172, label %181

172:                                              ; preds = %166, %160
  %173 = load i64, i64* @debug, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @INFO_VERSION(i32 %177)
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %178)
  br label %180

180:                                              ; preds = %175, %172
  br label %49

181:                                              ; preds = %166
  %182 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @INFO_MODE(i32 %183)
  %185 = load i32, i32* @MODE_PRIVATE, align 4
  %186 = icmp ne i32 %184, %185
  br i1 %186, label %187, label %196

187:                                              ; preds = %181
  %188 = load i64, i64* @debug, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %187
  %191 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 3
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @INFO_MODE(i32 %192)
  %194 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i32 %193)
  br label %195

195:                                              ; preds = %190, %187
  br label %49

196:                                              ; preds = %181
  %197 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @INFO_IS_AUTH(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %196
  %202 = load i64, i64* @debug, align 8
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %201
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  br label %206

206:                                              ; preds = %204, %201
  br label %49

207:                                              ; preds = %196
  %208 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 3
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @ISRESPONSE(i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %207
  %213 = load i64, i64* @debug, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %217

215:                                              ; preds = %212
  %216 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %217

217:                                              ; preds = %215, %212
  br label %49

218:                                              ; preds = %207
  %219 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 5
  %220 = load i32, i32* %219, align 8
  %221 = call i64 @INFO_MBZ(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %218
  %224 = load i64, i64* @debug, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %223
  %227 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.13, i64 0, i64 0))
  br label %228

228:                                              ; preds = %226, %223
  br label %49

229:                                              ; preds = %218
  %230 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %8, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %239, label %234

234:                                              ; preds = %229
  %235 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* %9, align 4
  %238 = icmp ne i32 %236, %237
  br i1 %238, label %239, label %251

239:                                              ; preds = %234, %229
  %240 = load i64, i64* @debug, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %250

242:                                              ; preds = %239
  %243 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %8, align 4
  %248 = load i32, i32* %9, align 4
  %249 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.14, i64 0, i64 0), i32 %244, i32 %246, i32 %247, i32 %248)
  br label %250

250:                                              ; preds = %242, %239
  br label %49

251:                                              ; preds = %234
  %252 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 6
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @INFO_ERR(i32 %253)
  %255 = load i32, i32* @INFO_OKAY, align 4
  %256 = icmp ne i32 %254, %255
  br i1 %256, label %257, label %274

257:                                              ; preds = %251
  %258 = load i64, i64* @debug, align 8
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %270

260:                                              ; preds = %257
  %261 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = call i64 @ISMORE(i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %270

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 6
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @INFO_ERR(i32 %267)
  %269 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.15, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %265, %260, %257
  %271 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 6
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @INFO_ERR(i32 %272)
  store i32 %273, i32* %7, align 4
  store i32 1, i32* %34, align 4
  br label %441

274:                                              ; preds = %251
  %275 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 6
  %276 = load i32, i32* %275, align 4
  %277 = call i64 @INFO_NITEMS(i32 %276)
  store i64 %277, i64* %16, align 8
  %278 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 5
  %279 = load i32, i32* %278, align 8
  %280 = call i64 @INFO_ITEMSIZE(i32 %279)
  store i64 %280, i64* %18, align 8
  %281 = load i64, i64* %13, align 8
  %282 = load i64, i64* %18, align 8
  %283 = icmp ugt i64 %281, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %274
  %285 = load i64, i64* %13, align 8
  %286 = load i64, i64* %18, align 8
  %287 = sub i64 %285, %286
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %30, align 4
  br label %290

289:                                              ; preds = %274
  store i32 0, i32* %30, align 4
  br label %290

290:                                              ; preds = %289, %284
  %291 = load i64, i64* %16, align 8
  %292 = load i64, i64* %18, align 8
  %293 = mul i64 %291, %292
  store i64 %293, i64* %19, align 8
  %294 = load i64, i64* %19, align 8
  %295 = load i32, i32* %29, align 4
  %296 = load i32, i32* @RESP_HEADER_SIZE, align 4
  %297 = sub nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = icmp ugt i64 %294, %298
  br i1 %299, label %300, label %312

300:                                              ; preds = %290
  %301 = load i64, i64* @debug, align 8
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %311

303:                                              ; preds = %300
  %304 = load i64, i64* %16, align 8
  %305 = load i64, i64* %18, align 8
  %306 = load i64, i64* %19, align 8
  %307 = load i32, i32* %29, align 4
  %308 = load i32, i32* @RESP_HEADER_SIZE, align 4
  %309 = sub nsw i32 %307, %308
  %310 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.16, i64 0, i64 0), i64 %304, i64 %305, i64 %306, i32 %309)
  br label %311

311:                                              ; preds = %303, %300
  br label %49

312:                                              ; preds = %290
  %313 = load i32, i32* %24, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %329, label %315

315:                                              ; preds = %312
  %316 = load i64, i64* %18, align 8
  %317 = load i64*, i64** %11, align 8
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %316, %318
  br i1 %319, label %320, label %329

320:                                              ; preds = %315
  %321 = load i64, i64* @debug, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = load i64, i64* %18, align 8
  %325 = load i64*, i64** %11, align 8
  %326 = load i64, i64* %325, align 8
  %327 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.17, i64 0, i64 0), i64 %324, i64 %326)
  br label %328

328:                                              ; preds = %323, %320
  br label %49

329:                                              ; preds = %315, %312
  %330 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 4
  %331 = load i32, i32* %330, align 4
  %332 = call i32 @INFO_SEQ(i32 %331)
  store i32 %332, i32* %27, align 4
  %333 = load i32, i32* %27, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i8, i8* %40, i64 %334
  %336 = load i8, i8* %335, align 1
  %337 = icmp ne i8 %336, 0
  br i1 %337, label %338, label %345

338:                                              ; preds = %329
  %339 = load i64, i64* @debug, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %344

341:                                              ; preds = %338
  %342 = load i32, i32* %27, align 4
  %343 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.18, i64 0, i64 0), i32 %342)
  br label %344

344:                                              ; preds = %341, %338
  br label %49

345:                                              ; preds = %329
  %346 = load i32, i32* %27, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* %40, i64 %347
  store i8 1, i8* %348, align 1
  %349 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 3
  %350 = load i32, i32* %349, align 8
  %351 = call i64 @ISMORE(i32 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %360, label %353

353:                                              ; preds = %345
  %354 = load i32, i32* %25, align 4
  %355 = icmp ne i32 %354, 999
  br i1 %355, label %356, label %358

356:                                              ; preds = %353
  %357 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.19, i64 0, i64 0))
  br label %49

358:                                              ; preds = %353
  %359 = load i32, i32* %27, align 4
  store i32 %359, i32* %25, align 4
  br label %360

360:                                              ; preds = %358, %345
  %361 = call i64 @time(i32* null)
  %362 = trunc i64 %361 to i32
  store i32 %362, i32* %31, align 4
  %363 = load i8*, i8** %20, align 8
  %364 = load i64, i64* %19, align 8
  %365 = getelementptr inbounds i8, i8* %363, i64 %364
  %366 = load i32, i32* %30, align 4
  %367 = sext i32 %366 to i64
  %368 = load i64, i64* %16, align 8
  %369 = mul i64 %367, %368
  %370 = getelementptr inbounds i8, i8* %365, i64 %369
  %371 = load i8*, i8** @pktdata, align 8
  %372 = load i32, i32* @pktdatasize, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i8, i8* %371, i64 %373
  %375 = icmp ugt i8* %370, %374
  br i1 %375, label %376, label %388

376:                                              ; preds = %360
  %377 = load i8*, i8** %20, align 8
  %378 = load i8*, i8** @pktdata, align 8
  %379 = ptrtoint i8* %377 to i64
  %380 = ptrtoint i8* %378 to i64
  %381 = sub i64 %379, %380
  store i64 %381, i64* %35, align 8
  %382 = call i32 (...) @growpktdata()
  %383 = load i8*, i8** @pktdata, align 8
  %384 = load i8**, i8*** %12, align 8
  store i8* %383, i8** %384, align 8
  %385 = load i8*, i8** @pktdata, align 8
  %386 = load i64, i64* %35, align 8
  %387 = getelementptr inbounds i8, i8* %385, i64 %386
  store i8* %387, i8** %20, align 8
  br label %388

388:                                              ; preds = %376, %360
  %389 = getelementptr inbounds %struct.resp_pkt, %struct.resp_pkt* %14, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 0
  %391 = load i8*, i8** %390, align 8
  store i8* %391, i8** %21, align 8
  store i64 0, i64* %17, align 8
  br label %392

392:                                              ; preds = %416, %388
  %393 = load i64, i64* %17, align 8
  %394 = load i64, i64* %16, align 8
  %395 = icmp ult i64 %393, %394
  br i1 %395, label %396, label %419

396:                                              ; preds = %392
  %397 = load i8*, i8** %20, align 8
  %398 = load i8*, i8** %21, align 8
  %399 = load i64, i64* %18, align 8
  %400 = trunc i64 %399 to i32
  %401 = call i32 @memcpy(i8* %397, i8* %398, i32 %400)
  %402 = load i64, i64* %18, align 8
  %403 = load i8*, i8** %21, align 8
  %404 = getelementptr inbounds i8, i8* %403, i64 %402
  store i8* %404, i8** %21, align 8
  %405 = load i8*, i8** %20, align 8
  %406 = load i64, i64* %18, align 8
  %407 = getelementptr inbounds i8, i8* %405, i64 %406
  %408 = load i32, i32* %30, align 4
  %409 = call i32 @zero_mem(i8* %407, i32 %408)
  %410 = load i64, i64* %18, align 8
  %411 = load i32, i32* %30, align 4
  %412 = sext i32 %411 to i64
  %413 = add i64 %410, %412
  %414 = load i8*, i8** %20, align 8
  %415 = getelementptr inbounds i8, i8* %414, i64 %413
  store i8* %415, i8** %20, align 8
  br label %416

416:                                              ; preds = %396
  %417 = load i64, i64* %17, align 8
  %418 = add i64 %417, 1
  store i64 %418, i64* %17, align 8
  br label %392

419:                                              ; preds = %392
  %420 = load i32, i32* %24, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %419
  store i32 0, i32* %24, align 4
  %423 = load i64, i64* %18, align 8
  %424 = load i32, i32* %30, align 4
  %425 = sext i32 %424 to i64
  %426 = add i64 %423, %425
  %427 = load i64*, i64** %11, align 8
  store i64 %426, i64* %427, align 8
  br label %428

428:                                              ; preds = %422, %419
  %429 = load i64, i64* %16, align 8
  %430 = load i64*, i64** %10, align 8
  %431 = load i64, i64* %430, align 8
  %432 = add i64 %431, %429
  store i64 %432, i64* %430, align 8
  %433 = load i32, i32* %26, align 4
  %434 = add nsw i32 %433, 1
  store i32 %434, i32* %26, align 4
  %435 = load i32, i32* %26, align 4
  %436 = load i32, i32* %25, align 4
  %437 = icmp sle i32 %435, %436
  br i1 %437, label %438, label %439

438:                                              ; preds = %428
  br label %49

439:                                              ; preds = %428
  %440 = load i32, i32* @INFO_OKAY, align 4
  store i32 %440, i32* %7, align 4
  store i32 1, i32* %34, align 4
  br label %441

441:                                              ; preds = %439, %270, %146, %138, %99, %72
  %442 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %442)
  %443 = load i32, i32* %7, align 4
  ret i32 %443
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ZERO(i8*) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i64 @time(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @FD_SET(i64, i32*) #2

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.sock_timeval*) #2

declare dso_local i32 @warning(i8*) #2

declare dso_local i32 @recv(i64, i8*, i32, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @INFO_VERSION(i32) #2

declare dso_local i32 @INFO_MODE(i32) #2

declare dso_local i64 @INFO_IS_AUTH(i32) #2

declare dso_local i32 @ISRESPONSE(i32) #2

declare dso_local i64 @INFO_MBZ(i32) #2

declare dso_local i32 @INFO_ERR(i32) #2

declare dso_local i64 @ISMORE(i32) #2

declare dso_local i64 @INFO_NITEMS(i32) #2

declare dso_local i64 @INFO_ITEMSIZE(i32) #2

declare dso_local i32 @INFO_SEQ(i32) #2

declare dso_local i32 @growpktdata(...) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @zero_mem(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
