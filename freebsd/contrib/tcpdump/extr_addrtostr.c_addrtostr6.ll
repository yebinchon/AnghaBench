; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtostr.c_addrtostr6.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_addrtostr.c_addrtostr6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }

@IN6ADDRSZ = common dso_local global i32 0, align 4
@INT16SZ = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @addrtostr6(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.anon, align 4
  %14 = alloca %struct.anon, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to i32*
  store i32* %20, i32** %8, align 8
  %21 = load i32, i32* @IN6ADDRSZ, align 4
  %22 = load i32, i32* @INT16SZ, align 4
  %23 = sdiv i32 %21, %22
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %15, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %27

27:                                               ; preds = %52, %3
  %28 = load i32, i32* %17, align 4
  %29 = load i32, i32* @IN6ADDRSZ, align 4
  %30 = load i32, i32* @INT16SZ, align 4
  %31 = sdiv i32 %29, %30
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %17, align 4
  %36 = mul nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = shl i32 %39, 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %17, align 4
  %43 = mul nsw i32 2, %42
  %44 = add nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %41, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %40, %47
  %49 = load i32, i32* %17, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %26, i64 %50
  store i32 %48, i32* %51, align 4
  br label %52

52:                                               ; preds = %33
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %17, align 4
  br label %27

55:                                               ; preds = %27
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  store i32 0, i32* %56, align 4
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  store i32 -1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  store i32 0, i32* %58, align 4
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  store i32 -1, i32* %59, align 4
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %106, %55
  %61 = load i32, i32* %17, align 4
  %62 = load i32, i32* @IN6ADDRSZ, align 4
  %63 = load i32, i32* @INT16SZ, align 4
  %64 = sdiv i32 %62, %63
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %109

66:                                               ; preds = %60
  %67 = load i32, i32* %17, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %26, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* %17, align 4
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  store i32 %77, i32* %78, align 4
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  store i32 1, i32* %79, align 4
  br label %84

80:                                               ; preds = %72
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %80, %76
  br label %105

85:                                               ; preds = %66
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %99, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %95, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %93, %89
  %100 = bitcast %struct.anon* %13 to i8*
  %101 = bitcast %struct.anon* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %100, i8* align 4 %101, i64 8, i1 false)
  br label %102

102:                                              ; preds = %99, %93
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  store i32 -1, i32* %103, align 4
  br label %104

104:                                              ; preds = %102, %85
  br label %105

105:                                              ; preds = %104, %84
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  br label %60

109:                                              ; preds = %60
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, -1
  br i1 %112, label %113, label %126

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %123, label %117

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = icmp sgt i32 %119, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %117, %113
  %124 = bitcast %struct.anon* %13 to i8*
  %125 = bitcast %struct.anon* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 8, i1 false)
  br label %126

126:                                              ; preds = %123, %117, %109
  %127 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp ne i32 %128, -1
  br i1 %129, label %130, label %136

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = icmp slt i32 %132, 2
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  store i32 -1, i32* %135, align 4
  br label %136

136:                                              ; preds = %134, %130, %126
  %137 = load i8*, i8** %6, align 8
  store i8* %137, i8** %9, align 8
  %138 = load i64, i64* %7, align 8
  store i64 %138, i64* %10, align 8
  store i32 0, i32* %17, align 4
  br label %139

139:                                              ; preds = %255, %136
  %140 = load i32, i32* %17, align 4
  %141 = load i32, i32* @IN6ADDRSZ, align 4
  %142 = load i32, i32* @INT16SZ, align 4
  %143 = sdiv i32 %141, %142
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %258

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, -1
  br i1 %148, label %149, label %178

149:                                              ; preds = %145
  %150 = load i32, i32* %17, align 4
  %151 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp sge i32 %150, %152
  br i1 %153, label %154, label %178

154:                                              ; preds = %149
  %155 = load i32, i32* %17, align 4
  %156 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %157, %159
  %161 = icmp slt i32 %155, %160
  br i1 %161, label %162, label %178

162:                                              ; preds = %154
  %163 = load i32, i32* %17, align 4
  %164 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp eq i32 %163, %165
  br i1 %166, label %167, label %177

167:                                              ; preds = %162
  %168 = load i64, i64* %10, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32, i32* @ENOSPC, align 4
  store i32 %171, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %293

172:                                              ; preds = %167
  %173 = load i8*, i8** %9, align 8
  %174 = getelementptr inbounds i8, i8* %173, i32 1
  store i8* %174, i8** %9, align 8
  store i8 58, i8* %173, align 1
  %175 = load i64, i64* %10, align 8
  %176 = add i64 %175, -1
  store i64 %176, i64* %10, align 8
  br label %177

177:                                              ; preds = %172, %162
  br label %255

178:                                              ; preds = %154, %149, %145
  %179 = load i32, i32* %17, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %191

181:                                              ; preds = %178
  %182 = load i64, i64* %10, align 8
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load i32, i32* @ENOSPC, align 4
  store i32 %185, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %293

186:                                              ; preds = %181
  %187 = load i8*, i8** %9, align 8
  %188 = getelementptr inbounds i8, i8* %187, i32 1
  store i8* %188, i8** %9, align 8
  store i8 58, i8* %187, align 1
  %189 = load i64, i64* %10, align 8
  %190 = add i64 %189, -1
  store i64 %190, i64* %10, align 8
  br label %191

191:                                              ; preds = %186, %178
  %192 = load i32, i32* %17, align 4
  %193 = icmp eq i32 %192, 6
  br i1 %193, label %194, label %228

194:                                              ; preds = %191
  %195 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %228

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp eq i32 %200, 6
  br i1 %201, label %210, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 5
  br i1 %205, label %206, label %228

206:                                              ; preds = %202
  %207 = getelementptr inbounds i32, i32* %26, i64 5
  %208 = load i32, i32* %207, align 4
  %209 = icmp eq i32 %208, 65535
  br i1 %209, label %210, label %228

210:                                              ; preds = %206, %198
  %211 = load i32*, i32** %8, align 8
  %212 = getelementptr inbounds i32, i32* %211, i64 12
  %213 = load i8*, i8** %9, align 8
  %214 = load i64, i64* %10, align 8
  %215 = call i32 @addrtostr(i32* %212, i8* %213, i64 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %219, label %217

217:                                              ; preds = %210
  %218 = load i32, i32* @ENOSPC, align 4
  store i32 %218, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %293

219:                                              ; preds = %210
  %220 = load i8*, i8** %9, align 8
  %221 = call i64 @strlen(i8* %220)
  store i64 %221, i64* %11, align 8
  %222 = load i64, i64* %11, align 8
  %223 = load i8*, i8** %9, align 8
  %224 = getelementptr inbounds i8, i8* %223, i64 %222
  store i8* %224, i8** %9, align 8
  %225 = load i64, i64* %11, align 8
  %226 = load i64, i64* %10, align 8
  %227 = sub i64 %226, %225
  store i64 %227, i64* %10, align 8
  br label %258

228:                                              ; preds = %206, %202, %194, %191
  %229 = load i8*, i8** %9, align 8
  %230 = load i64, i64* %10, align 8
  %231 = load i32, i32* %17, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %26, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @snprintf(i8* %229, i64 %230, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %234)
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* %12, align 4
  %237 = icmp slt i32 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %228
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %293

239:                                              ; preds = %228
  %240 = load i32, i32* %12, align 4
  %241 = sext i32 %240 to i64
  %242 = load i64, i64* %10, align 8
  %243 = icmp uge i64 %241, %242
  br i1 %243, label %244, label %246

244:                                              ; preds = %239
  %245 = load i32, i32* @ENOSPC, align 4
  store i32 %245, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %293

246:                                              ; preds = %239
  %247 = load i32, i32* %12, align 4
  %248 = load i8*, i8** %9, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8, i8* %248, i64 %249
  store i8* %250, i8** %9, align 8
  %251 = load i32, i32* %12, align 4
  %252 = sext i32 %251 to i64
  %253 = load i64, i64* %10, align 8
  %254 = sub i64 %253, %252
  store i64 %254, i64* %10, align 8
  br label %255

255:                                              ; preds = %246, %177
  %256 = load i32, i32* %17, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %17, align 4
  br label %139

258:                                              ; preds = %219, %139
  %259 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, -1
  br i1 %261, label %262, label %282

262:                                              ; preds = %258
  %263 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %264 = load i32, i32* %263, align 4
  %265 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = add nsw i32 %264, %266
  %268 = load i32, i32* @IN6ADDRSZ, align 4
  %269 = load i32, i32* @INT16SZ, align 4
  %270 = sdiv i32 %268, %269
  %271 = icmp eq i32 %267, %270
  br i1 %271, label %272, label %282

272:                                              ; preds = %262
  %273 = load i64, i64* %10, align 8
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = load i32, i32* @ENOSPC, align 4
  store i32 %276, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %293

277:                                              ; preds = %272
  %278 = load i8*, i8** %9, align 8
  %279 = getelementptr inbounds i8, i8* %278, i32 1
  store i8* %279, i8** %9, align 8
  store i8 58, i8* %278, align 1
  %280 = load i64, i64* %10, align 8
  %281 = add i64 %280, -1
  store i64 %281, i64* %10, align 8
  br label %282

282:                                              ; preds = %277, %262, %258
  %283 = load i64, i64* %10, align 8
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %282
  %286 = load i32, i32* @ENOSPC, align 4
  store i32 %286, i32* @errno, align 4
  store i8* null, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %293

287:                                              ; preds = %282
  %288 = load i8*, i8** %9, align 8
  %289 = getelementptr inbounds i8, i8* %288, i32 1
  store i8* %289, i8** %9, align 8
  store i8 0, i8* %288, align 1
  %290 = load i64, i64* %10, align 8
  %291 = add i64 %290, -1
  store i64 %291, i64* %10, align 8
  %292 = load i8*, i8** %6, align 8
  store i8* %292, i8** %4, align 8
  store i32 1, i32* %18, align 4
  br label %293

293:                                              ; preds = %287, %285, %275, %244, %238, %217, %184, %170
  %294 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %294)
  %295 = load i8*, i8** %4, align 8
  ret i8* %295
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @addrtostr(i32*, i8*, i64) #3

declare dso_local i64 @strlen(i8*) #3

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
