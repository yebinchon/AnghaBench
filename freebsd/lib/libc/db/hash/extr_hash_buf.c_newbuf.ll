; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_buf.c_newbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/db/hash/extr_hash_buf.c_newbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8*, i32, %struct.TYPE_14__* }
%struct.TYPE_15__ = type { i64, i32, i32, i64, i64, %struct.TYPE_14__***, %struct.TYPE_14__* }

@LRU = common dso_local global %struct.TYPE_14__* null, align 8
@BUF_PIN = common dso_local global i32 0, align 4
@BUF_BUCKET = common dso_local global i32 0, align 4
@BUF_MOD = common dso_local global i32 0, align 4
@BUF_DISK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_15__*, i32, %struct.TYPE_14__*)* @newbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @newbuf(%struct.TYPE_15__* %0, i32 %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_14__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** @LRU, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %8, align 8
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 6
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = icmp eq %struct.TYPE_14__* %17, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %24 = call i32 @BUF_REMOVE(%struct.TYPE_14__* %23)
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %26 = call i32 @MRU_INSERT(%struct.TYPE_14__* %25)
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** @LRU, align 8
  store %struct.TYPE_14__* %27, %struct.TYPE_14__** %8, align 8
  br label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %63

33:                                               ; preds = %28
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %35 = icmp ne %struct.TYPE_14__* %34, null
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %38, align 8
  %40 = icmp ne %struct.TYPE_14__* %39, null
  br i1 %40, label %41, label %63

41:                                               ; preds = %36
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %43, align 8
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %15, align 8
  br label %45

45:                                               ; preds = %58, %41
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %48, label %62

48:                                               ; preds = %45
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %51 = icmp eq %struct.TYPE_14__* %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %48
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  store i64 %56, i64* %54, align 8
  br label %62

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  store %struct.TYPE_14__* %61, %struct.TYPE_14__** %15, align 8
  br label %45

62:                                               ; preds = %52, %45
  br label %63

63:                                               ; preds = %62, %36, %33, %28
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %81, label %68

68:                                               ; preds = %63
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @BUF_PIN, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = icmp eq %struct.TYPE_14__* %76, %79
  br i1 %80, label %81, label %109

81:                                               ; preds = %75, %68, %63
  %82 = call i64 @calloc(i32 1, i32 32)
  %83 = inttoptr i64 %82 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %83, %struct.TYPE_14__** %8, align 8
  %84 = icmp eq %struct.TYPE_14__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %320

86:                                               ; preds = %81
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @calloc(i32 1, i32 %89)
  %91 = inttoptr i64 %90 to i8*
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  store i8* %91, i8** %93, align 8
  %94 = icmp eq i8* %91, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %97 = call i32 @free(%struct.TYPE_14__* %96)
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %320

98:                                               ; preds = %86
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = add nsw i64 %106, -1
  store i64 %107, i64* %105, align 8
  br label %108

108:                                              ; preds = %103, %98
  br label %298

109:                                              ; preds = %75
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %111 = call i32 @BUF_REMOVE(%struct.TYPE_14__* %110)
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %123, label %116

116:                                              ; preds = %109
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @BUF_BUCKET, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %297

123:                                              ; preds = %116, %109
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = bitcast i8* %126 to i32*
  store i32* %127, i32** %14, align 8
  %128 = load i32*, i32** %14, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %141

132:                                              ; preds = %123
  %133 = load i32*, i32** %14, align 8
  %134 = load i32*, i32** %14, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 1
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %133, i64 %138
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %132, %123
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @BUF_MOD, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %164

148:                                              ; preds = %141
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = load i8*, i8** %151, align 8
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i64 @IS_BUCKET(i32 %158)
  %160 = trunc i64 %159 to i32
  %161 = call i64 @__put_page(%struct.TYPE_15__* %149, i8* %152, i32 %155, i32 %160, i32 0)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %148
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %320

164:                                              ; preds = %148, %141
  %165 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = call i64 @IS_BUCKET(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %225

170:                                              ; preds = %164
  %171 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %176, 1
  %178 = and i32 %173, %177
  store i32 %178, i32* %12, align 4
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 5
  %181 = load %struct.TYPE_14__***, %struct.TYPE_14__**** %180, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = trunc i64 %187 to i32
  %189 = ashr i32 %184, %188
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_14__**, %struct.TYPE_14__*** %181, i64 %190
  %192 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %191, align 8
  store %struct.TYPE_14__** %192, %struct.TYPE_14__*** %11, align 8
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 4
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %219

197:                                              ; preds = %170
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @BUF_MOD, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %212, label %204

204:                                              ; preds = %197
  %205 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %205, i64 %207
  %209 = load %struct.TYPE_14__*, %struct.TYPE_14__** %208, align 8
  %210 = call i64 @ISDISK(%struct.TYPE_14__* %209)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %219

212:                                              ; preds = %204, %197
  %213 = load i64, i64* @BUF_DISK, align 8
  %214 = inttoptr i64 %213 to %struct.TYPE_14__*
  %215 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %216 = load i32, i32* %12, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %215, i64 %217
  store %struct.TYPE_14__* %214, %struct.TYPE_14__** %218, align 8
  br label %224

219:                                              ; preds = %204, %170
  %220 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %11, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %220, i64 %222
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %223, align 8
  br label %224

224:                                              ; preds = %219, %212
  br label %225

225:                                              ; preds = %224, %164
  %226 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %226, %struct.TYPE_14__** %9, align 8
  br label %227

227:                                              ; preds = %287, %225
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 3
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %229, align 8
  %231 = icmp ne %struct.TYPE_14__* %230, null
  br i1 %231, label %232, label %296

232:                                              ; preds = %227
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 3
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  store %struct.TYPE_14__* %235, %struct.TYPE_14__** %10, align 8
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %237, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  store %struct.TYPE_14__* %238, %struct.TYPE_14__** %9, align 8
  %239 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = call i64 @IS_BUCKET(i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %250, label %244

244:                                              ; preds = %232
  %245 = load i32, i32* %13, align 4
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 2
  %248 = load i32, i32* %247, align 8
  %249 = icmp ne i32 %245, %248
  br i1 %249, label %250, label %251

250:                                              ; preds = %244, %232
  br label %296

251:                                              ; preds = %244
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = bitcast i8* %254 to i32*
  store i32* %255, i32** %14, align 8
  %256 = load i32*, i32** %14, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  %258 = load i32, i32* %257, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %269

260:                                              ; preds = %251
  %261 = load i32*, i32** %14, align 8
  %262 = load i32*, i32** %14, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 0
  %264 = load i32, i32* %263, align 4
  %265 = sub nsw i32 %264, 1
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %261, i64 %266
  %268 = load i32, i32* %267, align 4
  store i32 %268, i32* %13, align 4
  br label %269

269:                                              ; preds = %260, %251
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @BUF_MOD, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %287

276:                                              ; preds = %269
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %278, i32 0, i32 1
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 2
  %283 = load i32, i32* %282, align 8
  %284 = call i64 @__put_page(%struct.TYPE_15__* %277, i8* %280, i32 %283, i32 0, i32 0)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %276
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  br label %320

287:                                              ; preds = %276, %269
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 2
  store i32 0, i32* %289, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 0
  store i32 0, i32* %291, align 8
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %293 = call i32 @BUF_REMOVE(%struct.TYPE_14__* %292)
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %295 = call i32 @LRU_INSERT(%struct.TYPE_14__* %294)
  br label %227

296:                                              ; preds = %250, %227
  br label %297

297:                                              ; preds = %296, %116
  br label %298

298:                                              ; preds = %297, %108
  %299 = load i32, i32* %6, align 4
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 2
  store i32 %299, i32* %301, align 8
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %303, align 8
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %305 = icmp ne %struct.TYPE_14__* %304, null
  br i1 %305, label %306, label %312

306:                                              ; preds = %298
  %307 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 3
  store %struct.TYPE_14__* %307, %struct.TYPE_14__** %309, align 8
  %310 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %311 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %310, i32 0, i32 0
  store i32 0, i32* %311, align 8
  br label %316

312:                                              ; preds = %298
  %313 = load i32, i32* @BUF_BUCKET, align 4
  %314 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %315 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %314, i32 0, i32 0
  store i32 %313, i32* %315, align 8
  br label %316

316:                                              ; preds = %312, %306
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %318 = call i32 @MRU_INSERT(%struct.TYPE_14__* %317)
  %319 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_14__* %319, %struct.TYPE_14__** %4, align 8
  br label %320

320:                                              ; preds = %316, %286, %163, %95, %85
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  ret %struct.TYPE_14__* %321
}

declare dso_local i32 @BUF_REMOVE(%struct.TYPE_14__*) #1

declare dso_local i32 @MRU_INSERT(%struct.TYPE_14__*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_14__*) #1

declare dso_local i64 @__put_page(%struct.TYPE_15__*, i8*, i32, i32, i32) #1

declare dso_local i64 @IS_BUCKET(i32) #1

declare dso_local i64 @ISDISK(%struct.TYPE_14__*) #1

declare dso_local i32 @LRU_INSERT(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
