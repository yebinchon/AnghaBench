; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_net_ntop.c_inet_net_ntop_ipv6.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/inet/extr_inet_net_ntop.c_inet_net_ntop_ipv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/%u\00", align 1
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, i32, i8*, i64)* @inet_net_ntop_ipv6 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @inet_net_ntop_ipv6(i32* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [16 x i8], align 16
  %20 = alloca [50 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %18, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = icmp sgt i32 %27, 128
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %4
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %303

31:                                               ; preds = %26
  %32 = getelementptr inbounds [50 x i8], [50 x i8]* %20, i64 0, i64 0
  store i8* %32, i8** %21, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load i8*, i8** %21, align 8
  %37 = getelementptr inbounds i8, i8* %36, i32 1
  store i8* %37, i8** %21, align 8
  store i8 58, i8* %36, align 1
  %38 = load i8*, i8** %21, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %21, align 8
  store i8 58, i8* %38, align 1
  %40 = load i8*, i8** %21, align 8
  store i8 0, i8* %40, align 1
  br label %285

41:                                               ; preds = %31
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, 7
  %44 = sdiv i32 %43, 8
  store i32 %44, i32* %12, align 4
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @memcpy(i8* %45, i32* %46, i32 %47)
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i32, i32* %12, align 4
  %54 = sub nsw i32 16, %53
  %55 = call i32 @memset(i8* %52, i32 0, i32 %54)
  %56 = load i32, i32* %7, align 4
  %57 = srem i32 %56, 8
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %41
  %61 = load i32, i32* %11, align 4
  %62 = sub nsw i32 8, %61
  %63 = shl i32 -1, %62
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %10, align 1
  %65 = load i8, i8* %10, align 1
  %66 = zext i8 %65 to i32
  %67 = load i32, i32* %12, align 4
  %68 = sub nsw i32 %67, 1
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = and i32 %72, %66
  %74 = trunc i32 %73 to i8
  store i8 %74, i8* %70, align 1
  br label %75

75:                                               ; preds = %60, %41
  %76 = getelementptr inbounds [16 x i8], [16 x i8]* %19, i64 0, i64 0
  %77 = bitcast i8* %76 to i32*
  store i32* %77, i32** %23, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 15
  %80 = sdiv i32 %79, 16
  store i32 %80, i32* %22, align 4
  %81 = load i32, i32* %22, align 4
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 2, i32* %22, align 4
  br label %84

84:                                               ; preds = %83, %75
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %17, align 4
  br label %85

85:                                               ; preds = %125, %84
  %86 = load i32, i32* %17, align 4
  %87 = load i32, i32* %22, align 4
  %88 = mul nsw i32 %87, 2
  %89 = icmp slt i32 %86, %88
  br i1 %89, label %90, label %128

90:                                               ; preds = %85
  %91 = load i32*, i32** %23, align 8
  %92 = load i32, i32* %17, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load i32*, i32** %23, align 8
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %95, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %90
  %105 = load i32, i32* %16, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load i32, i32* %17, align 4
  %109 = sdiv i32 %108, 2
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %16, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %16, align 4
  br label %124

113:                                              ; preds = %90
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %116
  %121 = load i32, i32* %15, align 4
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* %16, align 4
  store i32 %122, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %123

123:                                              ; preds = %120, %116, %113
  br label %124

124:                                              ; preds = %123, %110
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %17, align 4
  %127 = add nsw i32 %126, 2
  store i32 %127, i32* %17, align 4
  br label %85

128:                                              ; preds = %85
  %129 = load i32, i32* %16, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* %16, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* %15, align 4
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %16, align 4
  store i32 %137, i32* %14, align 4
  br label %138

138:                                              ; preds = %135, %131, %128
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* %22, align 4
  %141 = icmp ne i32 %139, %140
  br i1 %141, label %142, label %175

142:                                              ; preds = %138
  %143 = load i32, i32* %13, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %175

145:                                              ; preds = %142
  %146 = load i32, i32* %14, align 4
  %147 = icmp eq i32 %146, 6
  br i1 %147, label %174, label %148

148:                                              ; preds = %145
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %149, 5
  br i1 %150, label %151, label %161

151:                                              ; preds = %148
  %152 = load i32*, i32** %23, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 10
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 255
  br i1 %155, label %156, label %161

156:                                              ; preds = %151
  %157 = load i32*, i32** %23, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 11
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 255
  br i1 %160, label %174, label %161

161:                                              ; preds = %156, %151, %148
  %162 = load i32, i32* %14, align 4
  %163 = icmp eq i32 %162, 7
  br i1 %163, label %164, label %175

164:                                              ; preds = %161
  %165 = load i32*, i32** %23, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 14
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %164
  %170 = load i32*, i32** %23, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 15
  %172 = load i32, i32* %171, align 4
  %173 = icmp ne i32 %172, 1
  br i1 %173, label %174, label %175

174:                                              ; preds = %169, %156, %145
  store i32 1, i32* %18, align 4
  br label %175

175:                                              ; preds = %174, %169, %164, %161, %142, %138
  store i32 0, i32* %12, align 4
  br label %176

176:                                              ; preds = %281, %175
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %22, align 4
  %179 = icmp slt i32 %177, %178
  br i1 %179, label %180, label %284

180:                                              ; preds = %176
  %181 = load i32, i32* %14, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %213

183:                                              ; preds = %180
  %184 = load i32, i32* %12, align 4
  %185 = load i32, i32* %13, align 4
  %186 = icmp sge i32 %184, %185
  br i1 %186, label %187, label %213

187:                                              ; preds = %183
  %188 = load i32, i32* %12, align 4
  %189 = load i32, i32* %13, align 4
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %189, %190
  %192 = icmp slt i32 %188, %191
  br i1 %192, label %193, label %213

193:                                              ; preds = %187
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* %13, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i8*, i8** %21, align 8
  %199 = getelementptr inbounds i8, i8* %198, i32 1
  store i8* %199, i8** %21, align 8
  store i8 58, i8* %198, align 1
  br label %200

200:                                              ; preds = %197, %193
  %201 = load i32, i32* %12, align 4
  %202 = load i32, i32* %22, align 4
  %203 = sub nsw i32 %202, 1
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load i8*, i8** %21, align 8
  %207 = getelementptr inbounds i8, i8* %206, i32 1
  store i8* %207, i8** %21, align 8
  store i8 58, i8* %206, align 1
  br label %208

208:                                              ; preds = %205, %200
  %209 = load i32*, i32** %23, align 8
  %210 = getelementptr inbounds i32, i32* %209, i32 1
  store i32* %210, i32** %23, align 8
  %211 = load i32*, i32** %23, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %23, align 8
  br label %281

213:                                              ; preds = %187, %183, %180
  %214 = load i32, i32* %18, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %256

216:                                              ; preds = %213
  %217 = load i32, i32* %12, align 4
  %218 = icmp sgt i32 %217, 5
  br i1 %218, label %219, label %256

219:                                              ; preds = %216
  %220 = load i32, i32* %12, align 4
  %221 = icmp eq i32 %220, 6
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 58, i32 46
  %224 = trunc i32 %223 to i8
  %225 = load i8*, i8** %21, align 8
  %226 = getelementptr inbounds i8, i8* %225, i32 1
  store i8* %226, i8** %21, align 8
  store i8 %224, i8* %225, align 1
  %227 = load i8*, i8** %21, align 8
  %228 = load i32*, i32** %23, align 8
  %229 = getelementptr inbounds i32, i32* %228, i32 1
  store i32* %229, i32** %23, align 8
  %230 = load i32, i32* %228, align 4
  %231 = sext i32 %230 to i64
  %232 = inttoptr i64 %231 to i8*
  %233 = call i32 @SPRINTF(i8* %232)
  %234 = load i8*, i8** %21, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i8, i8* %234, i64 %235
  store i8* %236, i8** %21, align 8
  %237 = load i32, i32* %12, align 4
  %238 = icmp ne i32 %237, 7
  br i1 %238, label %242, label %239

239:                                              ; preds = %219
  %240 = load i32, i32* %7, align 4
  %241 = icmp sgt i32 %240, 120
  br i1 %241, label %242, label %255

242:                                              ; preds = %239, %219
  %243 = load i8*, i8** %21, align 8
  %244 = getelementptr inbounds i8, i8* %243, i32 1
  store i8* %244, i8** %21, align 8
  store i8 46, i8* %243, align 1
  %245 = load i8*, i8** %21, align 8
  %246 = load i32*, i32** %23, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 1
  store i32* %247, i32** %23, align 8
  %248 = load i32, i32* %246, align 4
  %249 = sext i32 %248 to i64
  %250 = inttoptr i64 %249 to i8*
  %251 = call i32 @SPRINTF(i8* %250)
  %252 = load i8*, i8** %21, align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  store i8* %254, i8** %21, align 8
  br label %255

255:                                              ; preds = %242, %239
  br label %280

256:                                              ; preds = %216, %213
  %257 = load i8*, i8** %21, align 8
  %258 = getelementptr inbounds [50 x i8], [50 x i8]* %20, i64 0, i64 0
  %259 = icmp ne i8* %257, %258
  br i1 %259, label %260, label %263

260:                                              ; preds = %256
  %261 = load i8*, i8** %21, align 8
  %262 = getelementptr inbounds i8, i8* %261, i32 1
  store i8* %262, i8** %21, align 8
  store i8 58, i8* %261, align 1
  br label %263

263:                                              ; preds = %260, %256
  %264 = load i8*, i8** %21, align 8
  %265 = load i32*, i32** %23, align 8
  %266 = load i32, i32* %265, align 4
  %267 = mul nsw i32 %266, 256
  %268 = load i32*, i32** %23, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 1
  %270 = load i32, i32* %269, align 4
  %271 = add nsw i32 %267, %270
  %272 = sext i32 %271 to i64
  %273 = inttoptr i64 %272 to i8*
  %274 = call i32 @SPRINTF(i8* %273)
  %275 = load i8*, i8** %21, align 8
  %276 = sext i32 %274 to i64
  %277 = getelementptr inbounds i8, i8* %275, i64 %276
  store i8* %277, i8** %21, align 8
  %278 = load i32*, i32** %23, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 2
  store i32* %279, i32** %23, align 8
  br label %280

280:                                              ; preds = %263, %255
  br label %281

281:                                              ; preds = %280, %208
  %282 = load i32, i32* %12, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %12, align 4
  br label %176

284:                                              ; preds = %176
  br label %285

285:                                              ; preds = %284, %35
  %286 = load i8*, i8** %21, align 8
  %287 = load i32, i32* %7, align 4
  %288 = call i32 @sprintf(i8* %286, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %287)
  %289 = getelementptr inbounds [50 x i8], [50 x i8]* %20, i64 0, i64 0
  %290 = call i32 @strlen(i8* %289)
  %291 = add nsw i32 %290, 1
  %292 = sext i32 %291 to i64
  %293 = load i64, i64* %9, align 8
  %294 = icmp ugt i64 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %285
  br label %301

296:                                              ; preds = %285
  %297 = load i8*, i8** %8, align 8
  %298 = getelementptr inbounds [50 x i8], [50 x i8]* %20, i64 0, i64 0
  %299 = call i32 @strcpy(i8* %297, i8* %298)
  %300 = load i8*, i8** %8, align 8
  store i8* %300, i8** %5, align 8
  br label %303

301:                                              ; preds = %295
  %302 = load i32, i32* @EMSGSIZE, align 4
  store i32 %302, i32* @errno, align 4
  store i8* null, i8** %5, align 8
  br label %303

303:                                              ; preds = %301, %296, %29
  %304 = load i8*, i8** %5, align 8
  ret i8* %304
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @SPRINTF(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
