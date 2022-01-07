; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libsdp/extr_search.c_sdp_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libsdp/extr_search.c_sdp_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32*, i64, i32 }
%struct.sdp_xpdu = type <{ %struct.TYPE_6__, i32 }>
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32, i32*, i32, i32, i32*, i8*, i32 }
%struct.iovec = type { i32, i8* }

@EINVAL = common dso_local global i8* null, align 8
@ENOBUFS = common dso_local global i8* null, align 8
@SDP_PDU_SERVICE_SEARCH_ATTRIBUTE_REQUEST = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@ENOMSG = common dso_local global i8* null, align 8
@SDP_PDU_ERROR_RESPONSE = common dso_local global i64 0, align 8
@EIO = common dso_local global i8* null, align 8
@ENOMEM = common dso_local global i8* null, align 8
@ENOATTR = common dso_local global i8* null, align 8
@SDP_ATTR_OK = common dso_local global i32 0, align 4
@SDP_ATTR_TRUNCATED = common dso_local global i32 0, align 4
@SDP_ATTR_INVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdp_search(i8* %0, i64 %1, i32* %2, i64 %3, i64* %4, i64 %5, %struct.TYPE_7__* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca %struct.sdp_xpdu, align 1
  %17 = alloca %struct.TYPE_5__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca [2 x %struct.iovec], align 16
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.TYPE_7__* %6, %struct.TYPE_7__** %15, align 8
  %29 = load i8*, i8** %9, align 8
  %30 = bitcast i8* %29 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %17, align 8
  store i32* null, i32** %18, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %32 = icmp eq %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %7
  store i32 -1, i32* %8, align 4
  br label %728

34:                                               ; preds = %7
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %56, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %10, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %11, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %12, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i64*, i64** %13, align 8
  %55 = icmp eq i64* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53, %50, %47, %44, %39, %34
  %57 = load i8*, i8** @EINVAL, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 8
  store i8* %57, i8** %59, align 8
  store i32 -1, i32* %8, align 4
  br label %728

60:                                               ; preds = %53
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %18, align 8
  %64 = load i64, i64* %10, align 8
  %65 = mul i64 %64, 5
  store i64 %65, i64* %10, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %66

66:                                               ; preds = %107, %60
  %67 = load i32, i32* %21, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %12, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %110

71:                                               ; preds = %66
  %72 = load i64*, i64** %13, align 8
  %73 = load i32, i32* %21, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %72, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = ashr i64 %76, 16
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %23, align 4
  %79 = load i64*, i64** %13, align 8
  %80 = load i32, i32* %21, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %24, align 4
  %85 = load i32, i32* %23, align 4
  %86 = load i32, i32* %24, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %71
  %89 = load i8*, i8** @EINVAL, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 8
  store i8* %89, i8** %91, align 8
  store i32 -1, i32* %8, align 4
  br label %728

92:                                               ; preds = %71
  %93 = load i32, i32* %23, align 4
  %94 = load i32, i32* %24, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load i32, i32* %22, align 4
  %98 = sext i32 %97 to i64
  %99 = add i64 %98, 9
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %22, align 4
  br label %106

101:                                              ; preds = %92
  %102 = load i32, i32* %22, align 4
  %103 = sext i32 %102 to i64
  %104 = add i64 %103, 5
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %22, align 4
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %21, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %21, align 4
  br label %66

110:                                              ; preds = %66
  %111 = load i32, i32* %22, align 4
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %12, align 8
  %113 = load i64, i64* %10, align 8
  %114 = add i64 %113, 4
  %115 = add i64 %114, 4
  %116 = add i64 %115, 4
  %117 = load i64, i64* %12, align 8
  %118 = add i64 %116, %117
  %119 = add i64 %118, 4
  %120 = add i64 %119, 4
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %22, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = load i32*, i32** %18, align 8
  %126 = ptrtoint i32* %124 to i64
  %127 = ptrtoint i32* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 4
  %130 = load i32, i32* %22, align 4
  %131 = sext i32 %130 to i64
  %132 = icmp slt i64 %129, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %110
  %134 = load i8*, i8** @ENOBUFS, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 8
  store i8* %134, i8** %136, align 8
  store i32 -1, i32* %8, align 4
  br label %728

137:                                              ; preds = %110
  %138 = load i32*, i32** %18, align 8
  %139 = call i32 @SDP_PUT8(i32 144, i32* %138)
  %140 = load i64, i64* %10, align 8
  %141 = trunc i64 %140 to i32
  %142 = load i32*, i32** %18, align 8
  %143 = call i32 @SDP_PUT16(i32 %141, i32* %142)
  br label %144

144:                                              ; preds = %154, %137
  %145 = load i64, i64* %10, align 8
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %147, label %159

147:                                              ; preds = %144
  %148 = load i32*, i32** %18, align 8
  %149 = call i32 @SDP_PUT8(i32 129, i32* %148)
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* %150, align 4
  %152 = load i32*, i32** %18, align 8
  %153 = call i32 @SDP_PUT16(i32 %151, i32* %152)
  br label %154

154:                                              ; preds = %147
  %155 = load i32*, i32** %11, align 8
  %156 = getelementptr inbounds i32, i32* %155, i32 1
  store i32* %156, i32** %11, align 8
  %157 = load i64, i64* %10, align 8
  %158 = sub i64 %157, 5
  store i64 %158, i64* %10, align 8
  br label %144

159:                                              ; preds = %144
  %160 = load i32*, i32** %18, align 8
  %161 = call i32 @SDP_PUT16(i32 65535, i32* %160)
  %162 = load i32*, i32** %18, align 8
  %163 = call i32 @SDP_PUT8(i32 144, i32* %162)
  %164 = load i64, i64* %12, align 8
  %165 = trunc i64 %164 to i32
  %166 = load i32*, i32** %18, align 8
  %167 = call i32 @SDP_PUT16(i32 %165, i32* %166)
  br label %168

168:                                              ; preds = %200, %159
  %169 = load i64, i64* %12, align 8
  %170 = icmp sgt i64 %169, 0
  br i1 %170, label %171, label %203

171:                                              ; preds = %168
  %172 = load i64*, i64** %13, align 8
  %173 = load i64, i64* %172, align 8
  %174 = ashr i64 %173, 16
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %23, align 4
  %176 = load i64*, i64** %13, align 8
  %177 = load i64, i64* %176, align 8
  %178 = trunc i64 %177 to i32
  store i32 %178, i32* %24, align 4
  %179 = load i32, i32* %23, align 4
  %180 = load i32, i32* %24, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %191

182:                                              ; preds = %171
  %183 = load i32*, i32** %18, align 8
  %184 = call i32 @SDP_PUT8(i32 136, i32* %183)
  %185 = load i64*, i64** %13, align 8
  %186 = load i64, i64* %185, align 8
  %187 = load i32*, i32** %18, align 8
  %188 = call i32 @SDP_PUT32(i64 %186, i32* %187)
  %189 = load i64, i64* %12, align 8
  %190 = sub i64 %189, 9
  store i64 %190, i64* %12, align 8
  br label %199

191:                                              ; preds = %171
  %192 = load i32*, i32** %18, align 8
  %193 = call i32 @SDP_PUT8(i32 137, i32* %192)
  %194 = load i32, i32* %23, align 4
  %195 = load i32*, i32** %18, align 8
  %196 = call i32 @SDP_PUT16(i32 %194, i32* %195)
  %197 = load i64, i64* %12, align 8
  %198 = sub i64 %197, 5
  store i64 %198, i64* %12, align 8
  br label %199

199:                                              ; preds = %191, %182
  br label %200

200:                                              ; preds = %199
  %201 = load i64*, i64** %13, align 8
  %202 = getelementptr inbounds i64, i64* %201, i32 1
  store i64* %202, i64** %13, align 8
  br label %168

203:                                              ; preds = %168
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %204, i32 0, i32 3
  store i32 0, i32* %205, align 8
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  store i32* %208, i32** %19, align 8
  br label %209

209:                                              ; preds = %526, %203
  %210 = load i32*, i32** %18, align 8
  store i32* %210, i32** %26, align 8
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  %214 = load i32*, i32** %26, align 8
  %215 = ptrtoint i32* %213 to i64
  %216 = ptrtoint i32* %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 4
  %219 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = add nsw i32 %221, 1
  %223 = sext i32 %222 to i64
  %224 = icmp slt i64 %218, %223
  br i1 %224, label %225, label %229

225:                                              ; preds = %209
  %226 = load i8*, i8** @ENOBUFS, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 8
  store i8* %226, i8** %228, align 8
  store i32 -1, i32* %8, align 4
  br label %728

229:                                              ; preds = %209
  %230 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 8
  %233 = load i32*, i32** %26, align 8
  %234 = call i32 @SDP_PUT8(i32 %232, i32* %233)
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = icmp sgt i32 %237, 0
  br i1 %238, label %239, label %255

239:                                              ; preds = %229
  %240 = load i32*, i32** %26, align 8
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 4
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = call i32 @memcpy(i32* %240, i32* %243, i64 %247)
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = load i32*, i32** %26, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %252, i64 %253
  store i32* %254, i32** %26, align 8
  br label %255

255:                                              ; preds = %239, %229
  %256 = load i64, i64* @SDP_PDU_SERVICE_SEARCH_ATTRIBUTE_REQUEST, align 8
  %257 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  store i64 %256, i64* %258, align 1
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 8
  %262 = call i8* @htons(i32 %261)
  %263 = ptrtoint i8* %262 to i32
  %264 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 1
  %266 = load i32*, i32** %26, align 8
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = ptrtoint i32* %266 to i64
  %271 = ptrtoint i32* %269 to i64
  %272 = sub i64 %270, %271
  %273 = sdiv exact i64 %272, 4
  %274 = trunc i64 %273 to i32
  %275 = call i8* @htons(i32 %274)
  %276 = ptrtoint i8* %275 to i32
  %277 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 2
  store i32 %276, i32* %278, align 1
  %279 = bitcast %struct.sdp_xpdu* %16 to i8*
  %280 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %25, i64 0, i64 0
  %281 = getelementptr inbounds %struct.iovec, %struct.iovec* %280, i32 0, i32 1
  store i8* %279, i8** %281, align 8
  %282 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %25, i64 0, i64 0
  %283 = getelementptr inbounds %struct.iovec, %struct.iovec* %282, i32 0, i32 0
  store i32 16, i32* %283, align 16
  %284 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %285 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %284, i32 0, i32 0
  %286 = load i32*, i32** %285, align 8
  %287 = bitcast i32* %286 to i8*
  %288 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %25, i64 0, i64 1
  %289 = getelementptr inbounds %struct.iovec, %struct.iovec* %288, i32 0, i32 1
  store i8* %287, i8** %289, align 8
  %290 = load i32*, i32** %26, align 8
  %291 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = ptrtoint i32* %290 to i64
  %295 = ptrtoint i32* %293 to i64
  %296 = sub i64 %294, %295
  %297 = sdiv exact i64 %296, 4
  %298 = trunc i64 %297 to i32
  %299 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %25, i64 0, i64 1
  %300 = getelementptr inbounds %struct.iovec, %struct.iovec* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 16
  br label %301

301:                                              ; preds = %314, %255
  %302 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %302, i32 0, i32 9
  %304 = load i32, i32* %303, align 8
  %305 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %25, i64 0, i64 0
  %306 = call i32 @writev(i32 %304, %struct.iovec* %305, i32 2)
  store i32 %306, i32* %22, align 4
  br label %307

307:                                              ; preds = %301
  %308 = load i32, i32* %22, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %314

310:                                              ; preds = %307
  %311 = load i64, i64* @errno, align 8
  %312 = load i64, i64* @EINTR, align 8
  %313 = icmp eq i64 %311, %312
  br label %314

314:                                              ; preds = %310, %307
  %315 = phi i1 [ false, %307 ], [ %313, %310 ]
  br i1 %315, label %301, label %316

316:                                              ; preds = %314
  %317 = load i32, i32* %22, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %324

319:                                              ; preds = %316
  %320 = load i64, i64* @errno, align 8
  %321 = inttoptr i64 %320 to i8*
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 8
  store i8* %321, i8** %323, align 8
  store i32 -1, i32* %8, align 4
  br label %728

324:                                              ; preds = %316
  %325 = bitcast %struct.sdp_xpdu* %16 to i8*
  %326 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %25, i64 0, i64 0
  %327 = getelementptr inbounds %struct.iovec, %struct.iovec* %326, i32 0, i32 1
  store i8* %325, i8** %327, align 8
  %328 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %25, i64 0, i64 0
  %329 = getelementptr inbounds %struct.iovec, %struct.iovec* %328, i32 0, i32 0
  store i32 20, i32* %329, align 16
  %330 = load i32*, i32** %19, align 8
  %331 = bitcast i32* %330 to i8*
  %332 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %25, i64 0, i64 1
  %333 = getelementptr inbounds %struct.iovec, %struct.iovec* %332, i32 0, i32 1
  store i8* %331, i8** %333, align 8
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 6
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %25, i64 0, i64 1
  %338 = getelementptr inbounds %struct.iovec, %struct.iovec* %337, i32 0, i32 0
  store i32 %336, i32* %338, align 16
  br label %339

339:                                              ; preds = %352, %324
  %340 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %341 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %340, i32 0, i32 9
  %342 = load i32, i32* %341, align 8
  %343 = getelementptr inbounds [2 x %struct.iovec], [2 x %struct.iovec]* %25, i64 0, i64 0
  %344 = call i32 @readv(i32 %342, %struct.iovec* %343, i32 2)
  store i32 %344, i32* %22, align 4
  br label %345

345:                                              ; preds = %339
  %346 = load i32, i32* %22, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %345
  %349 = load i64, i64* @errno, align 8
  %350 = load i64, i64* @EINTR, align 8
  %351 = icmp eq i64 %349, %350
  br label %352

352:                                              ; preds = %348, %345
  %353 = phi i1 [ false, %345 ], [ %351, %348 ]
  br i1 %353, label %339, label %354

354:                                              ; preds = %352
  %355 = load i32, i32* %22, align 4
  %356 = icmp slt i32 %355, 0
  br i1 %356, label %357, label %362

357:                                              ; preds = %354
  %358 = load i64, i64* @errno, align 8
  %359 = inttoptr i64 %358 to i8*
  %360 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 8
  store i8* %359, i8** %361, align 8
  store i32 -1, i32* %8, align 4
  br label %728

362:                                              ; preds = %354
  %363 = load i32, i32* %22, align 4
  %364 = sext i32 %363 to i64
  %365 = icmp ult i64 %364, 20
  br i1 %365, label %366, label %370

366:                                              ; preds = %362
  %367 = load i8*, i8** @ENOMSG, align 8
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 8
  store i8* %367, i8** %369, align 8
  store i32 -1, i32* %8, align 4
  br label %728

370:                                              ; preds = %362
  %371 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 1
  %374 = call i8* @ntohs(i32 %373)
  %375 = ptrtoint i8* %374 to i32
  %376 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %376, i32 0, i32 1
  store i32 %375, i32* %377, align 1
  %378 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %379 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 1
  %381 = call i8* @ntohs(i32 %380)
  %382 = ptrtoint i8* %381 to i32
  %383 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %383, i32 0, i32 2
  store i32 %382, i32* %384, align 1
  %385 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 1
  %386 = load i32, i32* %385, align 1
  %387 = call i8* @ntohs(i32 %386)
  %388 = ptrtoint i8* %387 to i32
  %389 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 1
  store i32 %388, i32* %389, align 1
  %390 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %390, i32 0, i32 0
  %392 = load i64, i64* %391, align 1
  %393 = load i64, i64* @SDP_PDU_ERROR_RESPONSE, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %416, label %395

395:                                              ; preds = %370
  %396 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %397 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 1
  %399 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %400 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %399, i32 0, i32 5
  %401 = load i32, i32* %400, align 8
  %402 = icmp ne i32 %398, %401
  br i1 %402, label %416, label %403

403:                                              ; preds = %395
  %404 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %404, i32 0, i32 2
  %406 = load i32, i32* %405, align 1
  %407 = load i32, i32* %22, align 4
  %408 = icmp sgt i32 %406, %407
  br i1 %408, label %416, label %409

409:                                              ; preds = %403
  %410 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 1
  %411 = load i32, i32* %410, align 1
  %412 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 0
  %413 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %412, i32 0, i32 2
  %414 = load i32, i32* %413, align 1
  %415 = icmp sgt i32 %411, %414
  br i1 %415, label %416, label %420

416:                                              ; preds = %409, %403, %395, %370
  %417 = load i8*, i8** @EIO, align 8
  %418 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %419 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %418, i32 0, i32 8
  store i8* %417, i8** %419, align 8
  store i32 -1, i32* %8, align 4
  br label %728

420:                                              ; preds = %409
  %421 = getelementptr inbounds %struct.sdp_xpdu, %struct.sdp_xpdu* %16, i32 0, i32 1
  %422 = load i32, i32* %421, align 1
  %423 = load i32*, i32** %19, align 8
  %424 = sext i32 %422 to i64
  %425 = getelementptr inbounds i32, i32* %423, i64 %424
  store i32* %425, i32** %19, align 8
  %426 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %427 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %426, i32 0, i32 5
  %428 = load i32, i32* %427, align 8
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %427, align 8
  %430 = load i32*, i32** %19, align 8
  %431 = getelementptr inbounds i32, i32* %430, i64 0
  %432 = load i32, i32* %431, align 4
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 3
  store i32 %432, i32* %434, align 8
  %435 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %436 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %435, i32 0, i32 3
  %437 = load i32, i32* %436, align 8
  %438 = icmp sgt i32 %437, 0
  br i1 %438, label %439, label %525

439:                                              ; preds = %420
  %440 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %441 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %440, i32 0, i32 3
  %442 = load i32, i32* %441, align 8
  %443 = sext i32 %442 to i64
  %444 = icmp ugt i64 %443, 8
  br i1 %444, label %445, label %449

445:                                              ; preds = %439
  %446 = load i8*, i8** @ENOBUFS, align 8
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 8
  store i8* %446, i8** %448, align 8
  store i32 -1, i32* %8, align 4
  br label %728

449:                                              ; preds = %439
  %450 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 4
  %452 = load i32*, i32** %451, align 8
  %453 = load i32*, i32** %19, align 8
  %454 = getelementptr inbounds i32, i32* %453, i64 1
  %455 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %456 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %455, i32 0, i32 3
  %457 = load i32, i32* %456, align 8
  %458 = sext i32 %457 to i64
  %459 = call i32 @memcpy(i32* %452, i32* %454, i64 %458)
  %460 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i32 0, i32 7
  %462 = load i32*, i32** %461, align 8
  %463 = load i32*, i32** %19, align 8
  %464 = ptrtoint i32* %462 to i64
  %465 = ptrtoint i32* %463 to i64
  %466 = sub i64 %464, %465
  %467 = sdiv exact i64 %466, 4
  %468 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i32 0, i32 6
  %470 = load i32, i32* %469, align 4
  %471 = sext i32 %470 to i64
  %472 = icmp sle i64 %467, %471
  br i1 %472, label %473, label %524

473:                                              ; preds = %449
  %474 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %475 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %474, i32 0, i32 7
  %476 = load i32*, i32** %475, align 8
  %477 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %478 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %477, i32 0, i32 1
  %479 = load i32*, i32** %478, align 8
  %480 = ptrtoint i32* %476 to i64
  %481 = ptrtoint i32* %479 to i64
  %482 = sub i64 %480, %481
  %483 = sdiv exact i64 %482, 4
  %484 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 6
  %486 = load i32, i32* %485, align 4
  %487 = sext i32 %486 to i64
  %488 = add nsw i64 %483, %487
  store i64 %488, i64* %27, align 8
  %489 = load i32*, i32** %19, align 8
  %490 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %491 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %490, i32 0, i32 1
  %492 = load i32*, i32** %491, align 8
  %493 = ptrtoint i32* %489 to i64
  %494 = ptrtoint i32* %492 to i64
  %495 = sub i64 %493, %494
  %496 = sdiv exact i64 %495, 4
  store i64 %496, i64* %28, align 8
  %497 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %498 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %497, i32 0, i32 1
  %499 = load i32*, i32** %498, align 8
  %500 = load i64, i64* %27, align 8
  %501 = call i32* @realloc(i32* %499, i64 %500)
  store i32* %501, i32** %20, align 8
  %502 = load i32*, i32** %20, align 8
  %503 = icmp eq i32* %502, null
  br i1 %503, label %504, label %508

504:                                              ; preds = %473
  %505 = load i8*, i8** @ENOMEM, align 8
  %506 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %507 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %506, i32 0, i32 8
  store i8* %505, i8** %507, align 8
  store i32 -1, i32* %8, align 4
  br label %728

508:                                              ; preds = %473
  %509 = load i32*, i32** %20, align 8
  %510 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %511 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %510, i32 0, i32 1
  store i32* %509, i32** %511, align 8
  %512 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %513 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %512, i32 0, i32 1
  %514 = load i32*, i32** %513, align 8
  %515 = load i64, i64* %27, align 8
  %516 = getelementptr inbounds i32, i32* %514, i64 %515
  %517 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %518 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %517, i32 0, i32 7
  store i32* %516, i32** %518, align 8
  %519 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %520 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %519, i32 0, i32 1
  %521 = load i32*, i32** %520, align 8
  %522 = load i64, i64* %28, align 8
  %523 = getelementptr inbounds i32, i32* %521, i64 %522
  store i32* %523, i32** %19, align 8
  br label %524

524:                                              ; preds = %508, %449
  br label %525

525:                                              ; preds = %524, %420
  br label %526

526:                                              ; preds = %525
  %527 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %528 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %527, i32 0, i32 3
  %529 = load i32, i32* %528, align 8
  %530 = icmp sgt i32 %529, 0
  br i1 %530, label %209, label %531

531:                                              ; preds = %526
  %532 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %533 = icmp eq %struct.TYPE_7__* %532, null
  br i1 %533, label %534, label %535

534:                                              ; preds = %531
  br label %725

535:                                              ; preds = %531
  %536 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %537 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i32 0, i32 1
  %538 = load i32*, i32** %537, align 8
  store i32* %538, i32** %20, align 8
  %539 = load i32, i32* %21, align 4
  %540 = load i32*, i32** %20, align 8
  %541 = call i32 @SDP_GET8(i32 %539, i32* %540)
  %542 = load i32, i32* %21, align 4
  switch i32 %542, label %555 [
    i32 142, label %543
    i32 144, label %547
    i32 143, label %551
  ]

543:                                              ; preds = %535
  %544 = load i32, i32* %22, align 4
  %545 = load i32*, i32** %20, align 8
  %546 = call i32 @SDP_GET8(i32 %544, i32* %545)
  br label %559

547:                                              ; preds = %535
  %548 = load i32, i32* %22, align 4
  %549 = load i32*, i32** %20, align 8
  %550 = call i32 @SDP_GET16(i32 %548, i32* %549)
  br label %559

551:                                              ; preds = %535
  %552 = load i32, i32* %22, align 4
  %553 = load i32*, i32** %20, align 8
  %554 = call i32 @SDP_GET32(i32 %552, i32* %553)
  br label %559

555:                                              ; preds = %535
  %556 = load i8*, i8** @ENOATTR, align 8
  %557 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %558 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %557, i32 0, i32 8
  store i8* %556, i8** %558, align 8
  store i32 -1, i32* %8, align 4
  br label %728

559:                                              ; preds = %551, %547, %543
  br label %560

560:                                              ; preds = %723, %559
  %561 = load i32*, i32** %20, align 8
  %562 = load i32*, i32** %19, align 8
  %563 = icmp ult i32* %561, %562
  br i1 %563, label %564, label %567

564:                                              ; preds = %560
  %565 = load i64, i64* %14, align 8
  %566 = icmp sgt i64 %565, 0
  br label %567

567:                                              ; preds = %564, %560
  %568 = phi i1 [ false, %560 ], [ %566, %564 ]
  br i1 %568, label %569, label %724

569:                                              ; preds = %567
  %570 = load i32, i32* %21, align 4
  %571 = load i32*, i32** %20, align 8
  %572 = call i32 @SDP_GET8(i32 %570, i32* %571)
  %573 = load i32, i32* %21, align 4
  switch i32 %573, label %586 [
    i32 142, label %574
    i32 144, label %578
    i32 143, label %582
  ]

574:                                              ; preds = %569
  %575 = load i32, i32* %22, align 4
  %576 = load i32*, i32** %20, align 8
  %577 = call i32 @SDP_GET8(i32 %575, i32* %576)
  br label %590

578:                                              ; preds = %569
  %579 = load i32, i32* %22, align 4
  %580 = load i32*, i32** %20, align 8
  %581 = call i32 @SDP_GET16(i32 %579, i32* %580)
  br label %590

582:                                              ; preds = %569
  %583 = load i32, i32* %22, align 4
  %584 = load i32*, i32** %20, align 8
  %585 = call i32 @SDP_GET32(i32 %583, i32* %584)
  br label %590

586:                                              ; preds = %569
  %587 = load i8*, i8** @ENOATTR, align 8
  %588 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %589 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %588, i32 0, i32 8
  store i8* %587, i8** %589, align 8
  store i32 -1, i32* %8, align 4
  br label %728

590:                                              ; preds = %582, %578, %574
  br label %591

591:                                              ; preds = %718, %590
  %592 = load i32, i32* %22, align 4
  %593 = icmp sgt i32 %592, 0
  br i1 %593, label %594, label %597

594:                                              ; preds = %591
  %595 = load i64, i64* %14, align 8
  %596 = icmp sgt i64 %595, 0
  br label %597

597:                                              ; preds = %594, %591
  %598 = phi i1 [ false, %591 ], [ %596, %594 ]
  br i1 %598, label %599, label %723

599:                                              ; preds = %597
  %600 = load i32, i32* %21, align 4
  %601 = load i32*, i32** %20, align 8
  %602 = call i32 @SDP_GET8(i32 %600, i32* %601)
  %603 = load i32, i32* %21, align 4
  %604 = icmp ne i32 %603, 137
  br i1 %604, label %605, label %609

605:                                              ; preds = %599
  %606 = load i8*, i8** @ENOATTR, align 8
  %607 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %608 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %607, i32 0, i32 8
  store i8* %606, i8** %608, align 8
  store i32 -1, i32* %8, align 4
  br label %728

609:                                              ; preds = %599
  %610 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %611 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = load i32*, i32** %20, align 8
  %614 = call i32 @SDP_GET16(i32 %612, i32* %613)
  %615 = load i32*, i32** %20, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 0
  %617 = load i32, i32* %616, align 4
  switch i32 %617, label %667 [
    i32 145, label %618
    i32 134, label %619
    i32 146, label %619
    i32 151, label %619
    i32 137, label %620
    i32 149, label %620
    i32 129, label %620
    i32 136, label %621
    i32 148, label %621
    i32 128, label %621
    i32 135, label %622
    i32 147, label %622
    i32 138, label %623
    i32 150, label %623
    i32 130, label %623
    i32 139, label %624
    i32 131, label %624
    i32 142, label %624
    i32 152, label %624
    i32 141, label %630
    i32 133, label %630
    i32 144, label %630
    i32 154, label %630
    i32 140, label %642
    i32 132, label %642
    i32 143, label %642
    i32 153, label %642
  ]

618:                                              ; preds = %609
  store i64 0, i64* %12, align 8
  br label %671

619:                                              ; preds = %609, %609, %609
  store i64 4, i64* %12, align 8
  br label %671

620:                                              ; preds = %609, %609, %609
  store i64 4, i64* %12, align 8
  br label %671

621:                                              ; preds = %609, %609, %609
  store i64 8, i64* %12, align 8
  br label %671

622:                                              ; preds = %609, %609
  store i64 4, i64* %12, align 8
  br label %671

623:                                              ; preds = %609, %609, %609
  store i64 4, i64* %12, align 8
  br label %671

624:                                              ; preds = %609, %609, %609, %609
  %625 = load i32*, i32** %20, align 8
  %626 = getelementptr inbounds i32, i32* %625, i64 1
  %627 = load i32, i32* %626, align 4
  %628 = sext i32 %627 to i64
  %629 = add i64 %628, 4
  store i64 %629, i64* %12, align 8
  br label %671

630:                                              ; preds = %609, %609, %609, %609
  %631 = load i32*, i32** %20, align 8
  %632 = getelementptr inbounds i32, i32* %631, i64 1
  %633 = load i32, i32* %632, align 4
  %634 = shl i32 %633, 8
  %635 = load i32*, i32** %20, align 8
  %636 = getelementptr inbounds i32, i32* %635, i64 2
  %637 = load i32, i32* %636, align 4
  %638 = or i32 %634, %637
  %639 = sext i32 %638 to i64
  store i64 %639, i64* %12, align 8
  %640 = load i64, i64* %12, align 8
  %641 = add i64 %640, 4
  store i64 %641, i64* %12, align 8
  br label %671

642:                                              ; preds = %609, %609, %609, %609
  %643 = load i32*, i32** %20, align 8
  %644 = getelementptr inbounds i32, i32* %643, i64 1
  %645 = load i32, i32* %644, align 4
  %646 = sext i32 %645 to i64
  %647 = shl i64 %646, 24
  %648 = load i32*, i32** %20, align 8
  %649 = getelementptr inbounds i32, i32* %648, i64 2
  %650 = load i32, i32* %649, align 4
  %651 = sext i32 %650 to i64
  %652 = shl i64 %651, 16
  %653 = or i64 %647, %652
  %654 = load i32*, i32** %20, align 8
  %655 = getelementptr inbounds i32, i32* %654, i64 3
  %656 = load i32, i32* %655, align 4
  %657 = sext i32 %656 to i64
  %658 = shl i64 %657, 8
  %659 = or i64 %653, %658
  %660 = load i32*, i32** %20, align 8
  %661 = getelementptr inbounds i32, i32* %660, i64 4
  %662 = load i32, i32* %661, align 4
  %663 = sext i32 %662 to i64
  %664 = or i64 %659, %663
  store i64 %664, i64* %12, align 8
  %665 = load i64, i64* %12, align 8
  %666 = add i64 %665, 8
  store i64 %666, i64* %12, align 8
  br label %671

667:                                              ; preds = %609
  %668 = load i8*, i8** @ENOATTR, align 8
  %669 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %670 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %669, i32 0, i32 8
  store i8* %668, i8** %670, align 8
  store i32 -1, i32* %8, align 4
  br label %728

671:                                              ; preds = %642, %630, %624, %623, %622, %621, %620, %619, %618
  %672 = load i64, i64* %12, align 8
  %673 = add i64 %672, 4
  store i64 %673, i64* %12, align 8
  %674 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %675 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %674, i32 0, i32 1
  %676 = load i32*, i32** %675, align 8
  %677 = icmp ne i32* %676, null
  br i1 %677, label %678, label %704

678:                                              ; preds = %671
  %679 = load i64, i64* %12, align 8
  %680 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %681 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %680, i32 0, i32 2
  %682 = load i64, i64* %681, align 8
  %683 = icmp sle i64 %679, %682
  br i1 %683, label %684, label %691

684:                                              ; preds = %678
  %685 = load i32, i32* @SDP_ATTR_OK, align 4
  %686 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %687 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %686, i32 0, i32 3
  store i32 %685, i32* %687, align 8
  %688 = load i64, i64* %12, align 8
  %689 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %690 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %689, i32 0, i32 2
  store i64 %688, i64* %690, align 8
  br label %695

691:                                              ; preds = %678
  %692 = load i32, i32* @SDP_ATTR_TRUNCATED, align 4
  %693 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %694 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %693, i32 0, i32 3
  store i32 %692, i32* %694, align 8
  br label %695

695:                                              ; preds = %691, %684
  %696 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %697 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %696, i32 0, i32 1
  %698 = load i32*, i32** %697, align 8
  %699 = load i32*, i32** %20, align 8
  %700 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %701 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %700, i32 0, i32 2
  %702 = load i64, i64* %701, align 8
  %703 = call i32 @memcpy(i32* %698, i32* %699, i64 %702)
  br label %708

704:                                              ; preds = %671
  %705 = load i32, i32* @SDP_ATTR_INVALID, align 4
  %706 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %707 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %706, i32 0, i32 3
  store i32 %705, i32* %707, align 8
  br label %708

708:                                              ; preds = %704, %695
  %709 = load i64, i64* %12, align 8
  %710 = add i64 8, %709
  %711 = load i32, i32* %22, align 4
  %712 = sext i32 %711 to i64
  %713 = sub i64 %712, %710
  %714 = trunc i64 %713 to i32
  store i32 %714, i32* %22, align 4
  %715 = load i64, i64* %12, align 8
  %716 = load i32*, i32** %20, align 8
  %717 = getelementptr inbounds i32, i32* %716, i64 %715
  store i32* %717, i32** %20, align 8
  br label %718

718:                                              ; preds = %708
  %719 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %720 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %719, i32 1
  store %struct.TYPE_7__* %720, %struct.TYPE_7__** %15, align 8
  %721 = load i64, i64* %14, align 8
  %722 = add nsw i64 %721, -1
  store i64 %722, i64* %14, align 8
  br label %591

723:                                              ; preds = %597
  br label %560

724:                                              ; preds = %567
  br label %725

725:                                              ; preds = %724, %534
  %726 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %727 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %726, i32 0, i32 8
  store i8* null, i8** %727, align 8
  store i32 0, i32* %8, align 4
  br label %728

728:                                              ; preds = %725, %667, %605, %586, %555, %504, %445, %416, %366, %357, %319, %225, %133, %88, %56, %33
  %729 = load i32, i32* %8, align 4
  ret i32 %729
}

declare dso_local i32 @SDP_PUT8(i32, i32*) #1

declare dso_local i32 @SDP_PUT16(i32, i32*) #1

declare dso_local i32 @SDP_PUT32(i64, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #1

declare dso_local i32 @readv(i32, %struct.iovec*, i32) #1

declare dso_local i8* @ntohs(i32) #1

declare dso_local i32* @realloc(i32*, i64) #1

declare dso_local i32 @SDP_GET8(i32, i32*) #1

declare dso_local i32 @SDP_GET16(i32, i32*) #1

declare dso_local i32 @SDP_GET32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
