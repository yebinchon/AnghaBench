; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_update_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_print-bgp.c_bgp_update_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bgp = type { i32 }

@BGP_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"\0A\09  Withdrawn routes: %d bytes\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"\0A\09  End-of-Rib Marker (empty NLRI)\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"\0A\09  %s (%u), length: %u\00", align 1
@bgp_attr_values = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"Unknown Attribute\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c", Flags [%s%s%s%s\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"+%x\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"]: \00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"\0A\09  Updated routes:\00", align 1
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [30 x i8] c"\0A\09    (illegal prefix length)\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"\0A\09    %s\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"[|BGP]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @bgp_update_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgp_update_print(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bgp, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @BGP_SIZE, align 4
  %23 = call i32 @ND_TCHECK2(i32 %21, i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @BGP_SIZE, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %297

28:                                               ; preds = %3
  %29 = load i32*, i32** %5, align 8
  %30 = load i32, i32* @BGP_SIZE, align 4
  %31 = call i32 @memcpy(%struct.bgp* %7, i32* %29, i32 %30)
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @BGP_SIZE, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* @BGP_SIZE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = sub nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** %8, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ND_TCHECK2(i32 %41, i32 2)
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %46

45:                                               ; preds = %28
  br label %297

46:                                               ; preds = %28
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @EXTRACT_16BITS(i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32* %50, i32** %8, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sub nsw i32 %51, 2
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %46
  %56 = load i32*, i32** %8, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ND_TCHECK2(i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %297

65:                                               ; preds = %55
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i32*
  %70 = call i32 @ND_PRINT(i32* %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %72, i64 %73
  store i32* %74, i32** %8, align 8
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %65, %46
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ND_TCHECK2(i32 %81, i32 2)
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 2
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %297

86:                                               ; preds = %78
  %87 = load i32*, i32** %8, align 8
  %88 = call i32 @EXTRACT_16BITS(i32* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32*, i32** %8, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32* %90, i32** %8, align 8
  %91 = load i32, i32* %6, align 4
  %92 = sub nsw i32 %91, 2
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %86
  %96 = load i32, i32* %10, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load i32, i32* %6, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load i32*, i32** %4, align 8
  %103 = call i32 @ND_PRINT(i32* bitcast ([35 x i8]* @.str.1 to i32*))
  br label %300

104:                                              ; preds = %98, %95, %86
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %244

107:                                              ; preds = %104
  br label %108

108:                                              ; preds = %232, %107
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %243

111:                                              ; preds = %108
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ND_TCHECK2(i32 %114, i32 2)
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %116, 2
  br i1 %117, label %118, label %119

118:                                              ; preds = %111
  br label %297

119:                                              ; preds = %111
  %120 = load i32, i32* %6, align 4
  %121 = icmp slt i32 %120, 2
  br i1 %121, label %122, label %123

122:                                              ; preds = %119
  br label %297

123:                                              ; preds = %119
  %124 = load i32*, i32** %8, align 8
  %125 = load i32, i32* %124, align 4
  store i32 %125, i32* %12, align 4
  %126 = load i32*, i32** %8, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %13, align 4
  %129 = load i32*, i32** %8, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 2
  store i32* %130, i32** %8, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sub nsw i32 %131, 2
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %6, align 4
  %134 = sub nsw i32 %133, 2
  store i32 %134, i32* %6, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load i32*, i32** %8, align 8
  %137 = call i32 @bgp_attr_lenlen(i32 %135, i32* %136)
  store i32 %137, i32* %14, align 4
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @ND_TCHECK2(i32 %140, i32 %141)
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %14, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %123
  br label %297

147:                                              ; preds = %123
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %147
  br label %297

152:                                              ; preds = %147
  %153 = load i32, i32* %12, align 4
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @bgp_attr_len(i32 %153, i32* %154)
  store i32 %155, i32* %15, align 4
  %156 = load i32, i32* %14, align 4
  %157 = load i32*, i32** %8, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %8, align 8
  %160 = load i32, i32* %14, align 4
  %161 = load i32, i32* %10, align 4
  %162 = sub nsw i32 %161, %160
  store i32 %162, i32* %10, align 4
  %163 = load i32, i32* %14, align 4
  %164 = load i32, i32* %6, align 4
  %165 = sub nsw i32 %164, %163
  store i32 %165, i32* %6, align 4
  %166 = load i32*, i32** %4, align 8
  %167 = load i32, i32* @bgp_attr_values, align 4
  %168 = load i32, i32* %13, align 4
  %169 = call i32 @tok2str(i32 %167, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %168)
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %15, align 4
  %172 = sext i32 %171 to i64
  %173 = inttoptr i64 %172 to i32*
  %174 = call i32 @ND_PRINT(i32* %173)
  %175 = load i32, i32* %12, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %214

177:                                              ; preds = %152
  %178 = load i32*, i32** %4, align 8
  %179 = load i32, i32* %12, align 4
  %180 = and i32 %179, 128
  %181 = icmp ne i32 %180, 0
  %182 = zext i1 %181 to i64
  %183 = select i1 %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %184 = load i32, i32* %12, align 4
  %185 = and i32 %184, 64
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i64
  %188 = select i1 %186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %189 = load i32, i32* %12, align 4
  %190 = and i32 %189, 32
  %191 = icmp ne i32 %190, 0
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %194 = load i32, i32* %12, align 4
  %195 = and i32 %194, 16
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %199 = bitcast i8* %198 to i32*
  %200 = call i32 @ND_PRINT(i32* %199)
  %201 = load i32, i32* %12, align 4
  %202 = and i32 %201, 15
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %211

204:                                              ; preds = %177
  %205 = load i32*, i32** %4, align 8
  %206 = load i32, i32* %12, align 4
  %207 = and i32 %206, 15
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to i32*
  %210 = call i32 @ND_PRINT(i32* %209)
  br label %211

211:                                              ; preds = %204, %177
  %212 = load i32*, i32** %4, align 8
  %213 = call i32 @ND_PRINT(i32* bitcast ([4 x i8]* @.str.11 to i32*))
  br label %214

214:                                              ; preds = %211, %152
  %215 = load i32, i32* %10, align 4
  %216 = load i32, i32* %15, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  br label %297

219:                                              ; preds = %214
  %220 = load i32, i32* %6, align 4
  %221 = load i32, i32* %15, align 4
  %222 = icmp slt i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  br label %297

224:                                              ; preds = %219
  %225 = load i32*, i32** %4, align 8
  %226 = load i32, i32* %13, align 4
  %227 = load i32*, i32** %8, align 8
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @bgp_attr_print(i32* %225, i32 %226, i32* %227, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %232, label %231

231:                                              ; preds = %224
  br label %297

232:                                              ; preds = %224
  %233 = load i32, i32* %15, align 4
  %234 = load i32*, i32** %8, align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %234, i64 %235
  store i32* %236, i32** %8, align 8
  %237 = load i32, i32* %15, align 4
  %238 = load i32, i32* %10, align 4
  %239 = sub nsw i32 %238, %237
  store i32 %239, i32* %10, align 4
  %240 = load i32, i32* %15, align 4
  %241 = load i32, i32* %6, align 4
  %242 = sub nsw i32 %241, %240
  store i32 %242, i32* %6, align 4
  br label %108

243:                                              ; preds = %108
  br label %244

244:                                              ; preds = %243, %104
  %245 = load i32, i32* %6, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %296

247:                                              ; preds = %244
  %248 = load i32*, i32** %4, align 8
  %249 = call i32 @ND_PRINT(i32* bitcast ([20 x i8]* @.str.12 to i32*))
  br label %250

250:                                              ; preds = %294, %247
  %251 = load i32, i32* %6, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %295

253:                                              ; preds = %250
  %254 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %255 = add nsw i32 %254, 100
  %256 = zext i32 %255 to i64
  %257 = call i8* @llvm.stacksave()
  store i8* %257, i8** %16, align 8
  %258 = alloca i8, i64 %256, align 16
  store i64 %256, i64* %17, align 8
  %259 = load i32*, i32** %4, align 8
  %260 = load i32*, i32** %8, align 8
  %261 = load i32, i32* %6, align 4
  %262 = trunc i64 %256 to i32
  %263 = call i32 @decode_prefix4(i32* %259, i32* %260, i32 %261, i8* %258, i32 %262)
  store i32 %263, i32* %11, align 4
  %264 = load i32, i32* %11, align 4
  %265 = icmp eq i32 %264, -1
  br i1 %265, label %266, label %269

266:                                              ; preds = %253
  %267 = load i32*, i32** %4, align 8
  %268 = call i32 @ND_PRINT(i32* bitcast ([30 x i8]* @.str.13 to i32*))
  store i32 6, i32* %18, align 4
  br label %291

269:                                              ; preds = %253
  %270 = load i32, i32* %11, align 4
  %271 = icmp eq i32 %270, -2
  br i1 %271, label %272, label %273

272:                                              ; preds = %269
  store i32 2, i32* %18, align 4
  br label %291

273:                                              ; preds = %269
  %274 = load i32, i32* %11, align 4
  %275 = icmp eq i32 %274, -3
  br i1 %275, label %276, label %277

276:                                              ; preds = %273
  store i32 2, i32* %18, align 4
  br label %291

277:                                              ; preds = %273
  %278 = load i32*, i32** %4, align 8
  %279 = bitcast i8* %258 to i32*
  %280 = call i32 @ND_PRINT(i32* %279)
  %281 = load i32, i32* %11, align 4
  %282 = load i32*, i32** %8, align 8
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i32, i32* %282, i64 %283
  store i32* %284, i32** %8, align 8
  %285 = load i32, i32* %11, align 4
  %286 = load i32, i32* %6, align 4
  %287 = sub nsw i32 %286, %285
  store i32 %287, i32* %6, align 4
  br label %288

288:                                              ; preds = %277
  br label %289

289:                                              ; preds = %288
  br label %290

290:                                              ; preds = %289
  store i32 0, i32* %18, align 4
  br label %291

291:                                              ; preds = %276, %272, %290, %266
  %292 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %292)
  %293 = load i32, i32* %18, align 4
  switch i32 %293, label %301 [
    i32 0, label %294
    i32 6, label %295
    i32 2, label %297
  ]

294:                                              ; preds = %291
  br label %250

295:                                              ; preds = %291, %250
  br label %296

296:                                              ; preds = %295, %244
  br label %300

297:                                              ; preds = %291, %231, %223, %218, %151, %146, %122, %118, %85, %64, %45, %27
  %298 = load i32*, i32** %4, align 8
  %299 = call i32 @ND_PRINT(i32* bitcast ([7 x i8]* @.str.15 to i32*))
  br label %300

300:                                              ; preds = %297, %296, %101
  ret void

301:                                              ; preds = %291
  unreachable
}

declare dso_local i32 @ND_TCHECK2(i32, i32) #1

declare dso_local i32 @memcpy(%struct.bgp*, i32*, i32) #1

declare dso_local i32 @EXTRACT_16BITS(i32*) #1

declare dso_local i32 @ND_PRINT(i32*) #1

declare dso_local i32 @bgp_attr_lenlen(i32, i32*) #1

declare dso_local i32 @bgp_attr_len(i32, i32*) #1

declare dso_local i32 @tok2str(i32, i8*, i32) #1

declare dso_local i32 @bgp_attr_print(i32*, i32, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @decode_prefix4(i32*, i32*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
