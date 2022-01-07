; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_Rescale.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd8.c_Rescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@MAX_FREQ = common dso_local global i32 0, align 4
@PPMD8_RESTORE_METHOD_FREEZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @Rescale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Rescale(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_11__, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_11__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = call i8* @STATS(%struct.TYPE_13__* %18)
  %20 = bitcast i8* %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %7, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = bitcast %struct.TYPE_11__* %9 to i8*
  %26 = bitcast %struct.TYPE_11__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 8, i1 false)
  br label %27

27:                                               ; preds = %38, %1
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %30 = icmp ne %struct.TYPE_11__* %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %27
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i64 0
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i64 -1
  %36 = bitcast %struct.TYPE_11__* %33 to i8*
  %37 = bitcast %struct.TYPE_11__* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 8, i1 false)
  br label %38

38:                                               ; preds = %31
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 -1
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %8, align 8
  br label %27

41:                                               ; preds = %27
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = bitcast %struct.TYPE_11__* %42 to i8*
  %44 = bitcast %struct.TYPE_11__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %49, %52
  store i32 %53, i32* %6, align 4
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 4
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  %62 = zext i1 %61 to i32
  store i32 %62, i32* %4, align 4
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = add i32 %65, %66
  %68 = lshr i32 %67, 1
  %69 = zext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %5, align 4
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 2
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %146, %41
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 1
  store %struct.TYPE_11__* %84, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %6, align 4
  %88 = sub i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %4, align 4
  %93 = add i32 %91, %92
  %94 = lshr i32 %93, 1
  %95 = zext i32 %94 to i64
  %96 = inttoptr i64 %95 to i8*
  %97 = ptrtoint i8* %96 to i32
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = add i32 %103, %102
  store i32 %104, i32* %5, align 4
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i64 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i64 -1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = icmp sgt i32 %108, %112
  br i1 %113, label %114, label %145

114:                                              ; preds = %82
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %115, %struct.TYPE_11__** %10, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %117 = bitcast %struct.TYPE_11__* %11 to i8*
  %118 = bitcast %struct.TYPE_11__* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 %118, i64 8, i1 false)
  br label %119

119:                                              ; preds = %139, %114
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i64 0
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 -1
  %124 = bitcast %struct.TYPE_11__* %121 to i8*
  %125 = bitcast %struct.TYPE_11__* %123 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %124, i8* align 4 %125, i64 8, i1 false)
  br label %126

126:                                              ; preds = %119
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i32 -1
  store %struct.TYPE_11__* %128, %struct.TYPE_11__** %10, align 8
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %130 = icmp ne %struct.TYPE_11__* %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i64 -1
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %133, %137
  br label %139

139:                                              ; preds = %131, %126
  %140 = phi i1 [ false, %126 ], [ %138, %131 ]
  br i1 %140, label %119, label %141

141:                                              ; preds = %139
  %142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %143 = bitcast %struct.TYPE_11__* %142 to i8*
  %144 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %143, i8* align 4 %144, i64 8, i1 false)
  br label %145

145:                                              ; preds = %141, %82
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %3, align 4
  %148 = add i32 %147, -1
  store i32 %148, i32* %3, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %82, label %150

150:                                              ; preds = %146
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %326

155:                                              ; preds = %150
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  store i32 %160, i32* %12, align 4
  br label %161

161:                                              ; preds = %164, %155
  %162 = load i32, i32* %3, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %3, align 4
  br label %164

164:                                              ; preds = %161
  %165 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %166 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %165, i32 -1
  store %struct.TYPE_11__* %166, %struct.TYPE_11__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %161, label %170

170:                                              ; preds = %164
  %171 = load i32, i32* %3, align 4
  %172 = load i32, i32* %6, align 4
  %173 = add i32 %172, %171
  store i32 %173, i32* %6, align 4
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 2
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %3, align 4
  %180 = sub i32 %178, %179
  %181 = zext i32 %180 to i64
  %182 = inttoptr i64 %181 to i8*
  %183 = ptrtoint i8* %182 to i32
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 2
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 4
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 2
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %254

194:                                              ; preds = %170
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %196 = bitcast %struct.TYPE_11__* %15 to i8*
  %197 = bitcast %struct.TYPE_11__* %195 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %196, i8* align 4 %197, i64 8, i1 false)
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = mul nsw i32 2, %199
  %201 = load i32, i32* %6, align 4
  %202 = add i32 %200, %201
  %203 = sub i32 %202, 1
  %204 = load i32, i32* %6, align 4
  %205 = udiv i32 %203, %204
  %206 = zext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = ptrtoint i8* %207 to i32
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %208, i32* %209, align 4
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @MAX_FREQ, align 4
  %213 = sdiv i32 %212, 3
  %214 = icmp sgt i32 %211, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %194
  %216 = load i32, i32* @MAX_FREQ, align 4
  %217 = sdiv i32 %216, 3
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %217, i32* %218, align 4
  br label %219

219:                                              ; preds = %215, %194
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %222 = load i32, i32* %12, align 4
  %223 = add i32 %222, 2
  %224 = lshr i32 %223, 1
  %225 = call i32 @U2I(i32 %224)
  %226 = call i32 @InsertNode(%struct.TYPE_12__* %220, %struct.TYPE_11__* %221, i32 %225)
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  %229 = load %struct.TYPE_13__*, %struct.TYPE_13__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, 16
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = icmp sge i32 %234, 64
  %236 = zext i1 %235 to i32
  %237 = mul nsw i32 8, %236
  %238 = add nsw i32 %232, %237
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  %241 = ptrtoint i8* %240 to i32
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_13__*, %struct.TYPE_13__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %244, i32 0, i32 2
  store i32 %241, i32* %245, align 4
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %247 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %246, i32 0, i32 2
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %247, align 8
  %249 = call %struct.TYPE_11__* @ONE_STATE(%struct.TYPE_13__* %248)
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 3
  store %struct.TYPE_11__* %249, %struct.TYPE_11__** %251, align 8
  %252 = bitcast %struct.TYPE_11__* %249 to i8*
  %253 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %252, i8* align 4 %253, i64 8, i1 false)
  br label %350

254:                                              ; preds = %170
  %255 = load i32, i32* %12, align 4
  %256 = add i32 %255, 2
  %257 = lshr i32 %256, 1
  store i32 %257, i32* %13, align 4
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %258, i32 0, i32 2
  %260 = load %struct.TYPE_13__*, %struct.TYPE_13__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = add i32 %262, 2
  %264 = lshr i32 %263, 1
  store i32 %264, i32* %14, align 4
  %265 = load i32, i32* %13, align 4
  %266 = load i32, i32* %14, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %279

268:                                              ; preds = %254
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %271 = load i32, i32* %13, align 4
  %272 = load i32, i32* %14, align 4
  %273 = call i32 @ShrinkUnits(%struct.TYPE_12__* %269, %struct.TYPE_11__* %270, i32 %271, i32 %272)
  %274 = call i32 @STATS_REF(i32 %273)
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 2
  %277 = load %struct.TYPE_13__*, %struct.TYPE_13__** %276, align 8
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 3
  store i32 %274, i32* %278, align 4
  br label %279

279:                                              ; preds = %268, %254
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_13__*, %struct.TYPE_13__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = and i32 %284, -9
  store i32 %285, i32* %283, align 4
  %286 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %286, i32 0, i32 2
  %288 = load %struct.TYPE_13__*, %struct.TYPE_13__** %287, align 8
  %289 = call i8* @STATS(%struct.TYPE_13__* %288)
  %290 = bitcast i8* %289 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %290, %struct.TYPE_11__** %8, align 8
  %291 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = icmp sge i32 %292, 64
  %294 = zext i1 %293 to i32
  %295 = mul nsw i32 8, %294
  %296 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 2
  %298 = load %struct.TYPE_13__*, %struct.TYPE_13__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = or i32 %300, %295
  store i32 %301, i32* %299, align 4
  %302 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %302, i32 0, i32 2
  %304 = load %struct.TYPE_13__*, %struct.TYPE_13__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 4
  store i32 %306, i32* %3, align 4
  br label %307

307:                                              ; preds = %321, %279
  %308 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 1
  store %struct.TYPE_11__* %309, %struct.TYPE_11__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp sge i32 %311, 64
  %313 = zext i1 %312 to i32
  %314 = mul nsw i32 8, %313
  %315 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %316 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %315, i32 0, i32 2
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 4
  %320 = or i32 %319, %314
  store i32 %320, i32* %318, align 4
  br label %321

321:                                              ; preds = %307
  %322 = load i32, i32* %3, align 4
  %323 = add i32 %322, -1
  store i32 %323, i32* %3, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %307, label %325

325:                                              ; preds = %321
  br label %326

326:                                              ; preds = %325, %150
  %327 = load i32, i32* %5, align 4
  %328 = load i32, i32* %6, align 4
  %329 = add i32 %327, %328
  %330 = load i32, i32* %6, align 4
  %331 = lshr i32 %330, 1
  %332 = sub i32 %329, %331
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %334 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %333, i32 0, i32 2
  %335 = load %struct.TYPE_13__*, %struct.TYPE_13__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 0
  store i32 %332, i32* %336, align 4
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 2
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %339, i32 0, i32 2
  %341 = load i32, i32* %340, align 4
  %342 = or i32 %341, 4
  store i32 %342, i32* %340, align 4
  %343 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %344 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %343, i32 0, i32 2
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %344, align 8
  %346 = call i8* @STATS(%struct.TYPE_13__* %345)
  %347 = bitcast i8* %346 to %struct.TYPE_11__*
  %348 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 3
  store %struct.TYPE_11__* %347, %struct.TYPE_11__** %349, align 8
  br label %350

350:                                              ; preds = %326, %219
  ret void
}

declare dso_local i8* @STATS(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @InsertNode(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @U2I(i32) #1

declare dso_local %struct.TYPE_11__* @ONE_STATE(%struct.TYPE_13__*) #1

declare dso_local i32 @STATS_REF(i32) #1

declare dso_local i32 @ShrinkUnits(%struct.TYPE_12__*, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
