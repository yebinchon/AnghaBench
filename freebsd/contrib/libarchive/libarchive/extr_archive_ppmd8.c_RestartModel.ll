; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_RestartModel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_RestartModel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_10__**, i64**, %struct.TYPE_9__*, %struct.TYPE_8__*, i64, i64, %struct.TYPE_8__*, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i64 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64 }

@UNIT_SIZE = common dso_local global i32 0, align 4
@PPMD_BIN_SCALE = common dso_local global i64 0, align 8
@kInitBinEsc = common dso_local global i32* null, align 8
@PPMD_PERIOD_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @RestartModel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RestartModel(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 18
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @memset(i32 %13, i32 0, i32 4)
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 17
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @memset(i32 %17, i32 0, i32 4)
  %19 = call i32 @RESET_TEXT(i32 0)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 16
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 11
  store i64 %27, i64* %29, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 11
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 8
  %37 = load i32, i32* @UNIT_SIZE, align 4
  %38 = sdiv i32 %36, %37
  %39 = mul nsw i32 %38, 7
  %40 = load i32, i32* @UNIT_SIZE, align 4
  %41 = mul nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = sub nsw i64 %32, %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 15
  store i64 %43, i64* %45, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 10
  store i64 %43, i64* %47, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 14
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %57, 12
  br i1 %58, label %59, label %63

59:                                               ; preds = %1
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  br label %64

63:                                               ; preds = %1
  br label %64

64:                                               ; preds = %63, %59
  %65 = phi i32 [ %62, %59 ], [ 12, %63 ]
  %66 = sub nsw i32 0, %65
  %67 = sub nsw i32 %66, 1
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  store i32 %67, i32* %71, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 13
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @UNIT_SIZE, align 4
  %75 = sext i32 %74 to i64
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 11
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, %75
  store i64 %79, i64* %77, align 8
  %80 = inttoptr i64 %79 to %struct.TYPE_8__*
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 12
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %82, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 9
  store %struct.TYPE_8__* %80, %struct.TYPE_8__** %84, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 9
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  store i64 0, i64* %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 9
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  store i32 255, i32* %92, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 9
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 3
  store i64 0, i64* %96, align 8
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 9
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 1
  store i32 257, i32* %100, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 10
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to %struct.TYPE_9__*
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 8
  store %struct.TYPE_9__* %104, %struct.TYPE_9__** %106, align 8
  %107 = call i64 @U2B(i32 128)
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 10
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %113, align 8
  %115 = call i32 @REF(%struct.TYPE_9__* %114)
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 9
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  store i32 %115, i32* %119, align 8
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %138, %64
  %121 = load i32, i32* %3, align 4
  %122 = icmp ult i32 %121, 256
  br i1 %122, label %123, label %141

123:                                              ; preds = %120
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 8
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %125, align 8
  %127 = load i32, i32* %3, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i64 %128
  store %struct.TYPE_9__* %129, %struct.TYPE_9__** %7, align 8
  %130 = load i32, i32* %3, align 4
  %131 = zext i32 %130 to i64
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  %136 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %137 = call i32 @SetSuccessor(%struct.TYPE_9__* %136, i32 0)
  br label %138

138:                                              ; preds = %123
  %139 = load i32, i32* %3, align 4
  %140 = add i32 %139, 1
  store i32 %140, i32* %3, align 4
  br label %120

141:                                              ; preds = %120
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %202, %141
  %143 = load i32, i32* %5, align 4
  %144 = icmp ult i32 %143, 25
  br i1 %144, label %145, label %205

145:                                              ; preds = %142
  br label %146

146:                                              ; preds = %156, %145
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 5
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %3, align 4
  %151 = zext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* %5, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %146
  %157 = load i32, i32* %3, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %3, align 4
  br label %146

159:                                              ; preds = %146
  store i32 0, i32* %4, align 4
  br label %160

160:                                              ; preds = %198, %159
  %161 = load i32, i32* %4, align 4
  %162 = icmp ult i32 %161, 8
  br i1 %162, label %163, label %201

163:                                              ; preds = %160
  %164 = load i64, i64* @PPMD_BIN_SCALE, align 8
  %165 = load i32*, i32** @kInitBinEsc, align 8
  %166 = load i32, i32* %4, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %3, align 4
  %171 = add i32 %170, 1
  %172 = udiv i32 %169, %171
  %173 = zext i32 %172 to i64
  %174 = sub nsw i64 %164, %173
  store i64 %174, i64* %8, align 8
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 7
  %177 = load i64**, i64*** %176, align 8
  %178 = load i32, i32* %5, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i64*, i64** %177, i64 %179
  %181 = load i64*, i64** %180, align 8
  %182 = load i32, i32* %4, align 4
  %183 = zext i32 %182 to i64
  %184 = getelementptr inbounds i64, i64* %181, i64 %183
  store i64* %184, i64** %9, align 8
  store i32 0, i32* %6, align 4
  br label %185

185:                                              ; preds = %194, %163
  %186 = load i32, i32* %6, align 4
  %187 = icmp ult i32 %186, 64
  br i1 %187, label %188, label %197

188:                                              ; preds = %185
  %189 = load i64, i64* %8, align 8
  %190 = load i64*, i64** %9, align 8
  %191 = load i32, i32* %6, align 4
  %192 = zext i32 %191 to i64
  %193 = getelementptr inbounds i64, i64* %190, i64 %192
  store i64 %189, i64* %193, align 8
  br label %194

194:                                              ; preds = %188
  %195 = load i32, i32* %6, align 4
  %196 = add i32 %195, 8
  store i32 %196, i32* %6, align 4
  br label %185

197:                                              ; preds = %185
  br label %198

198:                                              ; preds = %197
  %199 = load i32, i32* %4, align 4
  %200 = add i32 %199, 1
  store i32 %200, i32* %4, align 4
  br label %160

201:                                              ; preds = %160
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %5, align 4
  %204 = add i32 %203, 1
  store i32 %204, i32* %5, align 4
  br label %142

205:                                              ; preds = %142
  store i32 0, i32* %5, align 4
  store i32 0, i32* %3, align 4
  br label %206

206:                                              ; preds = %257, %205
  %207 = load i32, i32* %5, align 4
  %208 = icmp ult i32 %207, 24
  br i1 %208, label %209, label %260

209:                                              ; preds = %206
  br label %210

210:                                              ; preds = %222, %209
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load i32, i32* %3, align 4
  %215 = add i32 %214, 3
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %213, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %5, align 4
  %220 = add i32 %219, 3
  %221 = icmp eq i32 %218, %220
  br i1 %221, label %222, label %225

222:                                              ; preds = %210
  %223 = load i32, i32* %3, align 4
  %224 = add i32 %223, 1
  store i32 %224, i32* %3, align 4
  br label %210

225:                                              ; preds = %210
  store i32 0, i32* %4, align 4
  br label %226

226:                                              ; preds = %253, %225
  %227 = load i32, i32* %4, align 4
  %228 = icmp ult i32 %227, 32
  br i1 %228, label %229, label %256

229:                                              ; preds = %226
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 6
  %232 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %231, align 8
  %233 = load i32, i32* %5, align 4
  %234 = zext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %232, i64 %234
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %235, align 8
  %237 = load i32, i32* %4, align 4
  %238 = zext i32 %237 to i64
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i64 %238
  store %struct.TYPE_10__* %239, %struct.TYPE_10__** %10, align 8
  %240 = load i32, i32* %3, align 4
  %241 = mul i32 2, %240
  %242 = add i32 %241, 5
  %243 = load i32, i32* @PPMD_PERIOD_BITS, align 4
  %244 = sub nsw i32 %243, 4
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 0
  store i32 %244, i32* %246, align 8
  %247 = shl i32 %242, %244
  %248 = zext i32 %247 to i64
  %249 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 2
  store i64 %248, i64* %250, align 8
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 1
  store i32 7, i32* %252, align 4
  br label %253

253:                                              ; preds = %229
  %254 = load i32, i32* %4, align 4
  %255 = add i32 %254, 1
  store i32 %255, i32* %4, align 4
  br label %226

256:                                              ; preds = %226
  br label %257

257:                                              ; preds = %256
  %258 = load i32, i32* %5, align 4
  %259 = add i32 %258, 1
  store i32 %259, i32* %5, align 4
  br label %206

260:                                              ; preds = %206
  ret void
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @RESET_TEXT(i32) #1

declare dso_local i64 @U2B(i32) #1

declare dso_local i32 @REF(%struct.TYPE_9__*) #1

declare dso_local i32 @SetSuccessor(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
