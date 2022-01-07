; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_reply_parse.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evdns.c_reply_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_base = type { i32 }
%struct.reply = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.request = type { i32, i32, i32*, i32*, %struct.evdns_base* }

@DNS_ERR_NOTEXIST = common dso_local global i32 0, align 4
@TYPE_A = common dso_local global i32 0, align 4
@CLASS_INET = common dso_local global i32 0, align 4
@MAX_V4_ADDRS = common dso_local global i32 0, align 4
@TYPE_PTR = common dso_local global i32 0, align 4
@TYPE_CNAME = common dso_local global i32 0, align 4
@HOST_NAME_MAX = common dso_local global i32 0, align 4
@TYPE_AAAA = common dso_local global i32 0, align 4
@MAX_V6_ADDRS = common dso_local global i32 0, align 4
@TYPE_SOA = common dso_local global i32 0, align 4
@SKIP_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.evdns_base*, i32*, i32)* @reply_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reply_parse(%struct.evdns_base* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.evdns_base*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  %13 = alloca [256 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.reply, align 8
  %25 = alloca %struct.request*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  store %struct.evdns_base* %0, %struct.evdns_base** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %21, align 4
  store i32 -1, i32* %23, align 4
  store %struct.request* null, %struct.request** %25, align 8
  %43 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %44 = call i32 @ASSERT_LOCKED(%struct.evdns_base* %43)
  %45 = load i32, i32* %15, align 4
  %46 = call i32 @GET16(i32 %45)
  %47 = load i32, i32* %21, align 4
  %48 = call i32 @GET16(i32 %47)
  %49 = load i32, i32* %16, align 4
  %50 = call i32 @GET16(i32 %49)
  %51 = load i32, i32* %17, align 4
  %52 = call i32 @GET16(i32 %51)
  %53 = load i32, i32* %18, align 4
  %54 = call i32 @GET16(i32 %53)
  %55 = load i32, i32* %19, align 4
  %56 = call i32 @GET16(i32 %55)
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* %19, align 4
  %59 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call %struct.request* @request_find_from_trans_id(%struct.evdns_base* %59, i32 %60)
  store %struct.request* %61, %struct.request** %25, align 8
  %62 = load %struct.request*, %struct.request** %25, align 8
  %63 = icmp ne %struct.request* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %522

65:                                               ; preds = %3
  %66 = load %struct.request*, %struct.request** %25, align 8
  %67 = getelementptr inbounds %struct.request, %struct.request* %66, i32 0, i32 4
  %68 = load %struct.evdns_base*, %struct.evdns_base** %67, align 8
  %69 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %70 = icmp eq %struct.evdns_base* %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @EVUTIL_ASSERT(i32 %71)
  %73 = call i32 @memset(%struct.reply* %24, i32 0, i32 48)
  %74 = load i32, i32* %21, align 4
  %75 = and i32 %74, 32768
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %522

78:                                               ; preds = %65
  %79 = load i32, i32* %21, align 4
  %80 = and i32 %79, 527
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load i32, i32* %21, align 4
  %84 = and i32 %83, 527
  %85 = load i32, i32* @DNS_ERR_NOTEXIST, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %514

88:                                               ; preds = %82, %78
  %89 = load %struct.request*, %struct.request** %25, align 8
  %90 = getelementptr inbounds %struct.request, %struct.request* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 0
  store i32 %91, i32* %92, align 8
  store i32 0, i32* %26, align 4
  br label %93

93:                                               ; preds = %145, %88
  %94 = load i32, i32* %26, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %148

97:                                               ; preds = %93
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %98, align 16
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  store i8 0, i8* %99, align 16
  %100 = load i32, i32* %8, align 4
  store i32 %100, i32* %9, align 4
  %101 = load i32*, i32** %6, align 8
  %102 = load i32, i32* %7, align 4
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %104 = call i64 @name_parse(i32* %101, i32 %102, i32* %8, i8* %103, i32 256)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %97
  br label %514

107:                                              ; preds = %97
  %108 = load %struct.request*, %struct.request** %25, align 8
  %109 = getelementptr inbounds %struct.request, %struct.request* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.request*, %struct.request** %25, align 8
  %112 = getelementptr inbounds %struct.request, %struct.request* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %115 = call i64 @name_parse(i32* %110, i32 %113, i32* %9, i8* %114, i32 256)
  %116 = icmp slt i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %514

118:                                              ; preds = %107
  %119 = load %struct.evdns_base*, %struct.evdns_base** %5, align 8
  %120 = getelementptr inbounds %struct.evdns_base, %struct.evdns_base* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %118
  %124 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %125 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %126 = call i64 @strcmp(i8* %124, i8* %125)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  store i32 1, i32* %14, align 4
  br label %129

129:                                              ; preds = %128, %123
  br label %137

130:                                              ; preds = %118
  %131 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %132 = getelementptr inbounds [256 x i8], [256 x i8]* %13, i64 0, i64 0
  %133 = call i64 @evutil_ascii_strcasecmp(i8* %131, i8* %132)
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130
  store i32 1, i32* %14, align 4
  br label %136

136:                                              ; preds = %135, %130
  br label %137

137:                                              ; preds = %136, %129
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 4
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  br label %514

144:                                              ; preds = %137
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %26, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %26, align 4
  br label %93

148:                                              ; preds = %93
  %149 = load i32, i32* %14, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %148
  br label %514

152:                                              ; preds = %148
  store i32 0, i32* %26, align 4
  br label %153

153:                                              ; preds = %417, %152
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %17, align 4
  %156 = icmp ult i32 %154, %155
  br i1 %156, label %157, label %420

157:                                              ; preds = %153
  br label %158

158:                                              ; preds = %157
  %159 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %159, align 16
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %7, align 4
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %163 = call i64 @name_parse(i32* %160, i32 %161, i32* %8, i8* %162, i32 256)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %158
  br label %514

166:                                              ; preds = %158
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %27, align 4
  %169 = call i32 @GET16(i32 %168)
  %170 = load i32, i32* %28, align 4
  %171 = call i32 @GET16(i32 %170)
  %172 = load i32, i32* %22, align 4
  %173 = call i32 @GET32(i32 %172)
  %174 = load i32, i32* %20, align 4
  %175 = call i32 @GET16(i32 %174)
  %176 = load i32, i32* %27, align 4
  %177 = load i32, i32* @TYPE_A, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %256

179:                                              ; preds = %167
  %180 = load i32, i32* %28, align 4
  %181 = load i32, i32* @CLASS_INET, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %256

183:                                              ; preds = %179
  %184 = load %struct.request*, %struct.request** %25, align 8
  %185 = getelementptr inbounds %struct.request, %struct.request* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @TYPE_A, align 4
  %188 = icmp ne i32 %186, %187
  br i1 %188, label %189, label %193

189:                                              ; preds = %183
  %190 = load i32, i32* %20, align 4
  %191 = load i32, i32* %8, align 4
  %192 = add nsw i32 %191, %190
  store i32 %192, i32* %8, align 4
  br label %417

193:                                              ; preds = %183
  %194 = load i32, i32* %20, align 4
  %195 = and i32 %194, 3
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %193
  br label %514

198:                                              ; preds = %193
  %199 = load i32, i32* %20, align 4
  %200 = ashr i32 %199, 2
  store i32 %200, i32* %29, align 4
  %201 = load i32, i32* @MAX_V4_ADDRS, align 4
  %202 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sub nsw i32 %201, %205
  %207 = load i32, i32* %29, align 4
  %208 = call i32 @MIN(i32 %206, i32 %207)
  store i32 %208, i32* %30, align 4
  %209 = load i32, i32* %23, align 4
  %210 = load i32, i32* %22, align 4
  %211 = call i32 @MIN(i32 %209, i32 %210)
  store i32 %211, i32* %23, align 4
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %30, align 4
  %214 = mul nsw i32 4, %213
  %215 = add nsw i32 %212, %214
  %216 = load i32, i32* %7, align 4
  %217 = icmp sgt i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %198
  br label %514

219:                                              ; preds = %198
  %220 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %223, i64 %228
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %8, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %30, align 4
  %235 = mul nsw i32 4, %234
  %236 = call i32 @memcpy(i32* %229, i32* %233, i32 %235)
  %237 = load i32, i32* %30, align 4
  %238 = mul nsw i32 4, %237
  %239 = load i32, i32* %8, align 4
  %240 = add nsw i32 %239, %238
  store i32 %240, i32* %8, align 4
  %241 = load i32, i32* %30, align 4
  %242 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = add nsw i32 %245, %241
  store i32 %246, i32* %244, align 8
  %247 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 1
  store i32 1, i32* %247, align 4
  %248 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* @MAX_V4_ADDRS, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %254, label %255

254:                                              ; preds = %219
  br label %420

255:                                              ; preds = %219
  br label %416

256:                                              ; preds = %179, %167
  %257 = load i32, i32* %27, align 4
  %258 = load i32, i32* @TYPE_PTR, align 4
  %259 = icmp eq i32 %257, %258
  br i1 %259, label %260, label %289

260:                                              ; preds = %256
  %261 = load i32, i32* %28, align 4
  %262 = load i32, i32* @CLASS_INET, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %289

264:                                              ; preds = %260
  %265 = load %struct.request*, %struct.request** %25, align 8
  %266 = getelementptr inbounds %struct.request, %struct.request* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 8
  %268 = load i32, i32* @TYPE_PTR, align 4
  %269 = icmp ne i32 %267, %268
  br i1 %269, label %270, label %274

270:                                              ; preds = %264
  %271 = load i32, i32* %20, align 4
  %272 = load i32, i32* %8, align 4
  %273 = add nsw i32 %272, %271
  store i32 %273, i32* %8, align 4
  br label %417

274:                                              ; preds = %264
  %275 = load i32*, i32** %6, align 8
  %276 = load i32, i32* %7, align 4
  %277 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 1
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = call i64 @name_parse(i32* %275, i32 %276, i32* %8, i8* %280, i32 8)
  %282 = icmp slt i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %274
  br label %514

284:                                              ; preds = %274
  %285 = load i32, i32* %23, align 4
  %286 = load i32, i32* %22, align 4
  %287 = call i32 @MIN(i32 %285, i32 %286)
  store i32 %287, i32* %23, align 4
  %288 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 1
  store i32 1, i32* %288, align 4
  br label %420

289:                                              ; preds = %260, %256
  %290 = load i32, i32* %27, align 4
  %291 = load i32, i32* @TYPE_CNAME, align 4
  %292 = icmp eq i32 %290, %291
  br i1 %292, label %293, label %328

293:                                              ; preds = %289
  %294 = load i32, i32* @HOST_NAME_MAX, align 4
  %295 = zext i32 %294 to i64
  %296 = call i8* @llvm.stacksave()
  store i8* %296, i8** %31, align 8
  %297 = alloca i8, i64 %295, align 16
  store i64 %295, i64* %32, align 8
  %298 = load %struct.request*, %struct.request** %25, align 8
  %299 = getelementptr inbounds %struct.request, %struct.request* %298, i32 0, i32 2
  %300 = load i32*, i32** %299, align 8
  %301 = icmp ne i32* %300, null
  br i1 %301, label %302, label %308

302:                                              ; preds = %293
  %303 = load %struct.request*, %struct.request** %25, align 8
  %304 = getelementptr inbounds %struct.request, %struct.request* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %305, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %302, %293
  %309 = load i32, i32* %20, align 4
  %310 = load i32, i32* %8, align 4
  %311 = add nsw i32 %310, %309
  store i32 %311, i32* %8, align 4
  store i32 8, i32* %33, align 4
  br label %324

312:                                              ; preds = %302
  %313 = load i32*, i32** %6, align 8
  %314 = load i32, i32* %7, align 4
  %315 = trunc i64 %295 to i32
  %316 = call i64 @name_parse(i32* %313, i32 %314, i32* %8, i8* %297, i32 %315)
  %317 = icmp slt i64 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %312
  store i32 2, i32* %33, align 4
  br label %324

319:                                              ; preds = %312
  %320 = call i32 @mm_strdup(i8* %297)
  %321 = load %struct.request*, %struct.request** %25, align 8
  %322 = getelementptr inbounds %struct.request, %struct.request* %321, i32 0, i32 2
  %323 = load i32*, i32** %322, align 8
  store i32 %320, i32* %323, align 4
  store i32 0, i32* %33, align 4
  br label %324

324:                                              ; preds = %318, %319, %308
  %325 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %325)
  %326 = load i32, i32* %33, align 4
  switch i32 %326, label %524 [
    i32 0, label %327
    i32 8, label %417
    i32 2, label %514
  ]

327:                                              ; preds = %324
  br label %414

328:                                              ; preds = %289
  %329 = load i32, i32* %27, align 4
  %330 = load i32, i32* @TYPE_AAAA, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %409

332:                                              ; preds = %328
  %333 = load i32, i32* %28, align 4
  %334 = load i32, i32* @CLASS_INET, align 4
  %335 = icmp eq i32 %333, %334
  br i1 %335, label %336, label %409

336:                                              ; preds = %332
  %337 = load %struct.request*, %struct.request** %25, align 8
  %338 = getelementptr inbounds %struct.request, %struct.request* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = load i32, i32* @TYPE_AAAA, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %346

342:                                              ; preds = %336
  %343 = load i32, i32* %20, align 4
  %344 = load i32, i32* %8, align 4
  %345 = add nsw i32 %344, %343
  store i32 %345, i32* %8, align 4
  br label %417

346:                                              ; preds = %336
  %347 = load i32, i32* %20, align 4
  %348 = and i32 %347, 15
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %351

350:                                              ; preds = %346
  br label %514

351:                                              ; preds = %346
  %352 = load i32, i32* %20, align 4
  %353 = ashr i32 %352, 4
  store i32 %353, i32* %34, align 4
  %354 = load i32, i32* @MAX_V6_ADDRS, align 4
  %355 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %356 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 0
  %358 = load i32, i32* %357, align 8
  %359 = sub nsw i32 %354, %358
  %360 = load i32, i32* %34, align 4
  %361 = call i32 @MIN(i32 %359, i32 %360)
  store i32 %361, i32* %35, align 4
  %362 = load i32, i32* %23, align 4
  %363 = load i32, i32* %22, align 4
  %364 = call i32 @MIN(i32 %362, i32 %363)
  store i32 %364, i32* %23, align 4
  %365 = load i32, i32* %8, align 4
  %366 = load i32, i32* %35, align 4
  %367 = mul nsw i32 16, %366
  %368 = add nsw i32 %365, %367
  %369 = load i32, i32* %7, align 4
  %370 = icmp sgt i32 %368, %369
  br i1 %370, label %371, label %372

371:                                              ; preds = %351
  br label %514

372:                                              ; preds = %351
  %373 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %374 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %374, i32 0, i32 1
  %376 = load i32*, i32** %375, align 8
  %377 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %376, i64 %381
  %383 = load i32*, i32** %6, align 8
  %384 = load i32, i32* %8, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds i32, i32* %383, i64 %385
  %387 = load i32, i32* %35, align 4
  %388 = mul nsw i32 16, %387
  %389 = call i32 @memcpy(i32* %382, i32* %386, i32 %388)
  %390 = load i32, i32* %35, align 4
  %391 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %392 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = add nsw i32 %394, %390
  store i32 %395, i32* %393, align 8
  %396 = load i32, i32* %35, align 4
  %397 = mul nsw i32 16, %396
  %398 = load i32, i32* %8, align 4
  %399 = add nsw i32 %398, %397
  store i32 %399, i32* %8, align 4
  %400 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 1
  store i32 1, i32* %400, align 4
  %401 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 2
  %402 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %402, i32 0, i32 0
  %404 = load i32, i32* %403, align 8
  %405 = load i32, i32* @MAX_V6_ADDRS, align 4
  %406 = icmp eq i32 %404, %405
  br i1 %406, label %407, label %408

407:                                              ; preds = %372
  br label %420

408:                                              ; preds = %372
  br label %413

409:                                              ; preds = %332, %328
  %410 = load i32, i32* %20, align 4
  %411 = load i32, i32* %8, align 4
  %412 = add nsw i32 %411, %410
  store i32 %412, i32* %8, align 4
  br label %413

413:                                              ; preds = %409, %408
  br label %414

414:                                              ; preds = %413, %327
  br label %415

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415, %255
  br label %417

417:                                              ; preds = %416, %342, %324, %270, %189
  %418 = load i32, i32* %26, align 4
  %419 = add i32 %418, 1
  store i32 %419, i32* %26, align 4
  br label %153

420:                                              ; preds = %407, %284, %254, %153
  %421 = getelementptr inbounds %struct.reply, %struct.reply* %24, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %505, label %424

424:                                              ; preds = %420
  store i32 0, i32* %26, align 4
  br label %425

425:                                              ; preds = %501, %424
  %426 = load i32, i32* %26, align 4
  %427 = load i32, i32* %18, align 4
  %428 = icmp ult i32 %426, %427
  br i1 %428, label %429, label %504

429:                                              ; preds = %425
  br label %430

430:                                              ; preds = %429
  %431 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %431, align 16
  %432 = load i32*, i32** %6, align 8
  %433 = load i32, i32* %7, align 4
  %434 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %435 = call i64 @name_parse(i32* %432, i32 %433, i32* %8, i8* %434, i32 256)
  %436 = icmp slt i64 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %430
  br label %514

438:                                              ; preds = %430
  br label %439

439:                                              ; preds = %438
  %440 = load i32, i32* %36, align 4
  %441 = call i32 @GET16(i32 %440)
  %442 = load i32, i32* %37, align 4
  %443 = call i32 @GET16(i32 %442)
  %444 = load i32, i32* %22, align 4
  %445 = call i32 @GET32(i32 %444)
  %446 = load i32, i32* %20, align 4
  %447 = call i32 @GET16(i32 %446)
  %448 = load i32, i32* %36, align 4
  %449 = load i32, i32* @TYPE_SOA, align 4
  %450 = icmp eq i32 %448, %449
  br i1 %450, label %451, label %496

451:                                              ; preds = %439
  %452 = load i32, i32* %37, align 4
  %453 = load i32, i32* @CLASS_INET, align 4
  %454 = icmp eq i32 %452, %453
  br i1 %454, label %455, label %496

455:                                              ; preds = %451
  br label %456

456:                                              ; preds = %455
  %457 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %457, align 16
  %458 = load i32*, i32** %6, align 8
  %459 = load i32, i32* %7, align 4
  %460 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %461 = call i64 @name_parse(i32* %458, i32 %459, i32* %8, i8* %460, i32 256)
  %462 = icmp slt i64 %461, 0
  br i1 %462, label %463, label %464

463:                                              ; preds = %456
  br label %514

464:                                              ; preds = %456
  br label %465

465:                                              ; preds = %464
  br label %466

466:                                              ; preds = %465
  %467 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  store i8 0, i8* %467, align 16
  %468 = load i32*, i32** %6, align 8
  %469 = load i32, i32* %7, align 4
  %470 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %471 = call i64 @name_parse(i32* %468, i32 %469, i32* %8, i8* %470, i32 256)
  %472 = icmp slt i64 %471, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %466
  br label %514

474:                                              ; preds = %466
  br label %475

475:                                              ; preds = %474
  %476 = load i32, i32* %38, align 4
  %477 = call i32 @GET32(i32 %476)
  %478 = load i32, i32* %39, align 4
  %479 = call i32 @GET32(i32 %478)
  %480 = load i32, i32* %40, align 4
  %481 = call i32 @GET32(i32 %480)
  %482 = load i32, i32* %41, align 4
  %483 = call i32 @GET32(i32 %482)
  %484 = load i32, i32* %42, align 4
  %485 = call i32 @GET32(i32 %484)
  %486 = load i32, i32* %41, align 4
  %487 = load i32, i32* %40, align 4
  %488 = load i32, i32* %39, align 4
  %489 = load i32, i32* %38, align 4
  %490 = load i32, i32* %23, align 4
  %491 = load i32, i32* %22, align 4
  %492 = call i32 @MIN(i32 %490, i32 %491)
  store i32 %492, i32* %23, align 4
  %493 = load i32, i32* %23, align 4
  %494 = load i32, i32* %42, align 4
  %495 = call i32 @MIN(i32 %493, i32 %494)
  store i32 %495, i32* %23, align 4
  br label %500

496:                                              ; preds = %451, %439
  %497 = load i32, i32* %20, align 4
  %498 = load i32, i32* %8, align 4
  %499 = add nsw i32 %498, %497
  store i32 %499, i32* %8, align 4
  br label %500

500:                                              ; preds = %496, %475
  br label %501

501:                                              ; preds = %500
  %502 = load i32, i32* %26, align 4
  %503 = add i32 %502, 1
  store i32 %503, i32* %26, align 4
  br label %425

504:                                              ; preds = %425
  br label %505

505:                                              ; preds = %504, %420
  %506 = load i32, i32* %23, align 4
  %507 = icmp eq i32 %506, -1
  br i1 %507, label %508, label %509

508:                                              ; preds = %505
  store i32 0, i32* %23, align 4
  br label %509

509:                                              ; preds = %508, %505
  %510 = load %struct.request*, %struct.request** %25, align 8
  %511 = load i32, i32* %21, align 4
  %512 = load i32, i32* %23, align 4
  %513 = call i32 @reply_handle(%struct.request* %510, i32 %511, i32 %512, %struct.reply* %24)
  store i32 0, i32* %4, align 4
  br label %522

514:                                              ; preds = %473, %463, %437, %371, %350, %324, %283, %218, %197, %165, %151, %143, %117, %106, %87
  %515 = load %struct.request*, %struct.request** %25, align 8
  %516 = icmp ne %struct.request* %515, null
  br i1 %516, label %517, label %521

517:                                              ; preds = %514
  %518 = load %struct.request*, %struct.request** %25, align 8
  %519 = load i32, i32* %21, align 4
  %520 = call i32 @reply_handle(%struct.request* %518, i32 %519, i32 0, %struct.reply* null)
  br label %521

521:                                              ; preds = %517, %514
  store i32 -1, i32* %4, align 4
  br label %522

522:                                              ; preds = %521, %509, %77, %64
  %523 = load i32, i32* %4, align 4
  ret i32 %523

524:                                              ; preds = %324
  unreachable
}

declare dso_local i32 @ASSERT_LOCKED(%struct.evdns_base*) #1

declare dso_local i32 @GET16(i32) #1

declare dso_local %struct.request* @request_find_from_trans_id(%struct.evdns_base*, i32) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @memset(%struct.reply*, i32, i32) #1

declare dso_local i64 @name_parse(i32*, i32, i32*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i64 @evutil_ascii_strcasecmp(i8*, i8*) #1

declare dso_local i32 @GET32(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @mm_strdup(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @reply_handle(%struct.request*, i32, i32, %struct.reply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
