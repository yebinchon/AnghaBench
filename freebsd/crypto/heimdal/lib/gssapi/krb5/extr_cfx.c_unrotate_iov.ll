; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c_unrotate_iov.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/gssapi/krb5/extr_cfx.c_unrotate_iov.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, i32* }

@GSS_IOV_BUFFER_TYPE_DATA = common dso_local global i64 0, align 8
@GSS_IOV_BUFFER_TYPE_PADDING = common dso_local global i64 0, align 8
@GSS_IOV_BUFFER_TYPE_TRAILER = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GSS_S_FAILURE = common dso_local global i32 0, align 4
@GSS_S_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_5__*, i32)* @unrotate_iov to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unrotate_iov(i32* %0, i64 %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %15

15:                                               ; preds = %60, %4
  %16 = load i32, i32* %14, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %63

19:                                               ; preds = %15
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = load i32, i32* %14, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %25)
  %27 = load i64, i64* @GSS_IOV_BUFFER_TYPE_DATA, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %49, label %29

29:                                               ; preds = %19
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %35)
  %37 = load i64, i64* @GSS_IOV_BUFFER_TYPE_PADDING, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %29
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %45)
  %47 = load i64, i64* @GSS_IOV_BUFFER_TYPE_TRAILER, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %39, %29, %19
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %12, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %49, %39
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %14, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %14, align 4
  br label %15

63:                                               ; preds = %15
  %64 = load i64, i64* %12, align 8
  %65 = call i32* @malloc(i64 %64)
  store i32* %65, i32** %10, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = load i32*, i32** %6, align 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @GSS_S_FAILURE, align 4
  store i32 %71, i32* %5, align 4
  br label %335

72:                                               ; preds = %63
  %73 = load i32*, i32** %10, align 8
  store i32* %73, i32** %11, align 8
  store i32 0, i32* %14, align 4
  br label %74

74:                                               ; preds = %135, %72
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %138

78:                                               ; preds = %74
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %84)
  %86 = load i64, i64* @GSS_IOV_BUFFER_TYPE_DATA, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %108, label %88

88:                                               ; preds = %78
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %94)
  %96 = load i64, i64* @GSS_IOV_BUFFER_TYPE_PADDING, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %108, label %98

98:                                               ; preds = %88
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %100 = load i32, i32* %14, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %104)
  %106 = load i64, i64* @GSS_IOV_BUFFER_TYPE_TRAILER, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %134

108:                                              ; preds = %98, %88, %78
  %109 = load i32*, i32** %11, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %111 = load i32, i32* %14, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 @memcpy(i32* %109, i32* %116, i64 %123)
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 %131
  store i32* %133, i32** %11, align 8
  br label %134

134:                                              ; preds = %108, %98
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %74

138:                                              ; preds = %74
  %139 = load i32*, i32** %11, align 8
  %140 = load i32*, i32** %10, align 8
  %141 = ptrtoint i32* %139 to i64
  %142 = ptrtoint i32* %140 to i64
  %143 = sub i64 %141, %142
  %144 = sdiv exact i64 %143, 4
  %145 = load i64, i64* %12, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  %149 = load i32*, i32** %10, align 8
  %150 = load i64, i64* %7, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %11, align 8
  %152 = load i64, i64* %7, align 8
  store i64 %152, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %153

153:                                              ; preds = %241, %138
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp slt i32 %154, %155
  br i1 %156, label %157, label %244

157:                                              ; preds = %153
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %163)
  %165 = load i64, i64* @GSS_IOV_BUFFER_TYPE_DATA, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %187, label %167

167:                                              ; preds = %157
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %169 = load i32, i32* %14, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %173)
  %175 = load i64, i64* @GSS_IOV_BUFFER_TYPE_PADDING, align 8
  %176 = icmp eq i64 %174, %175
  br i1 %176, label %187, label %177

177:                                              ; preds = %167
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %183)
  %185 = load i64, i64* @GSS_IOV_BUFFER_TYPE_TRAILER, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %240

187:                                              ; preds = %177, %167, %157
  %188 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* %13, align 8
  %196 = icmp ule i64 %194, %195
  br i1 %196, label %197, label %207

197:                                              ; preds = %187
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %199 = load i32, i32* %14, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* %13, align 8
  %206 = sub i64 %205, %204
  store i64 %206, i64* %13, align 8
  br label %239

207:                                              ; preds = %187
  %208 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %209 = load i32, i32* %14, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* %13, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32*, i32** %11, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %219 = load i32, i32* %14, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i64 %220
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* %13, align 8
  %226 = sub i64 %224, %225
  %227 = call i32 @memcpy(i32* %216, i32* %217, i64 %226)
  %228 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load i64, i64* %13, align 8
  %236 = sub i64 %234, %235
  %237 = load i32*, i32** %11, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 %236
  store i32* %238, i32** %11, align 8
  store i64 0, i64* %13, align 8
  br label %239

239:                                              ; preds = %207, %197
  br label %240

240:                                              ; preds = %239, %177
  br label %241

241:                                              ; preds = %240
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  br label %153

244:                                              ; preds = %153
  %245 = load i32*, i32** %10, align 8
  store i32* %245, i32** %11, align 8
  %246 = load i64, i64* %7, align 8
  store i64 %246, i64* %13, align 8
  store i32 0, i32* %14, align 4
  br label %247

247:                                              ; preds = %330, %244
  %248 = load i32, i32* %14, align 4
  %249 = load i32, i32* %9, align 4
  %250 = icmp slt i32 %248, %249
  br i1 %250, label %251, label %333

251:                                              ; preds = %247
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %253 = load i32, i32* %14, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %257)
  %259 = load i64, i64* @GSS_IOV_BUFFER_TYPE_DATA, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %281, label %261

261:                                              ; preds = %251
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %263 = load i32, i32* %14, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 8
  %268 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %267)
  %269 = load i64, i64* @GSS_IOV_BUFFER_TYPE_PADDING, align 8
  %270 = icmp eq i64 %268, %269
  br i1 %270, label %281, label %271

271:                                              ; preds = %261
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 8
  %278 = call i64 @GSS_IOV_BUFFER_TYPE(i32 %277)
  %279 = load i64, i64* @GSS_IOV_BUFFER_TYPE_TRAILER, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %329

281:                                              ; preds = %271, %261, %251
  %282 = load i32*, i32** %11, align 8
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %284 = load i32, i32* %14, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %283, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %291 = load i32, i32* %14, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* %13, align 8
  %298 = call i64 @min(i64 %296, i64 %297)
  %299 = call i32 @memcpy(i32* %282, i32* %289, i64 %298)
  %300 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %301 = load i32, i32* %14, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %300, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = load i64, i64* %13, align 8
  %308 = icmp ugt i64 %306, %307
  br i1 %308, label %309, label %310

309:                                              ; preds = %281
  br label %333

310:                                              ; preds = %281
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %312 = load i32, i32* %14, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* %13, align 8
  %319 = sub i64 %318, %317
  store i64 %319, i64* %13, align 8
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %321 = load i32, i32* %14, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i64 %322
  %324 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i32*, i32** %11, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 %326
  store i32* %328, i32** %11, align 8
  br label %329

329:                                              ; preds = %310, %271
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %14, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %14, align 4
  br label %247

333:                                              ; preds = %309, %247
  %334 = load i32, i32* @GSS_S_COMPLETE, align 4
  store i32 %334, i32* %5, align 4
  br label %335

335:                                              ; preds = %333, %68
  %336 = load i32, i32* %5, align 4
  ret i32 %336
}

declare dso_local i64 @GSS_IOV_BUFFER_TYPE(i32) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @min(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
