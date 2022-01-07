; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd7.c_Rescale.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_ppmd7.c_Rescale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_13__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

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
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %19 = call i8* @STATS(%struct.TYPE_13__* %18)
  %20 = bitcast i8* %19 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** %7, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 2
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %22, align 8
  store %struct.TYPE_11__* %23, %struct.TYPE_11__** %8, align 8
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %25 = bitcast %struct.TYPE_11__* %9 to i8*
  %26 = bitcast %struct.TYPE_11__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
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
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 4, i1 false)
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
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
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %147, %41
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 1
  store %struct.TYPE_11__* %85, %struct.TYPE_11__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %6, align 4
  %89 = sub i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %4, align 4
  %94 = add i32 %92, %93
  %95 = lshr i32 %94, 1
  %96 = zext i32 %95 to i64
  %97 = inttoptr i64 %96 to i8*
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 4
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %5, align 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i64 -1
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %109, %113
  br i1 %114, label %115, label %146

115:                                              ; preds = %83
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %10, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %118 = bitcast %struct.TYPE_11__* %11 to i8*
  %119 = bitcast %struct.TYPE_11__* %117 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %118, i8* align 4 %119, i64 4, i1 false)
  br label %120

120:                                              ; preds = %140, %115
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i64 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i64 -1
  %125 = bitcast %struct.TYPE_11__* %122 to i8*
  %126 = bitcast %struct.TYPE_11__* %124 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %125, i8* align 4 %126, i64 4, i1 false)
  br label %127

127:                                              ; preds = %120
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 -1
  store %struct.TYPE_11__* %129, %struct.TYPE_11__** %10, align 8
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = icmp ne %struct.TYPE_11__* %129, %130
  br i1 %131, label %132, label %140

132:                                              ; preds = %127
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i64 -1
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %134, %138
  br label %140

140:                                              ; preds = %132, %127
  %141 = phi i1 [ false, %127 ], [ %139, %132 ]
  br i1 %141, label %120, label %142

142:                                              ; preds = %140
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %144 = bitcast %struct.TYPE_11__* %143 to i8*
  %145 = bitcast %struct.TYPE_11__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %144, i8* align 4 %145, i64 4, i1 false)
  br label %146

146:                                              ; preds = %142, %83
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %3, align 4
  %149 = add i32 %148, -1
  store i32 %149, i32* %3, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %83, label %151

151:                                              ; preds = %147
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %257

156:                                              ; preds = %151
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %165, %156
  %163 = load i32, i32* %3, align 4
  %164 = add i32 %163, 1
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %162
  %166 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 -1
  store %struct.TYPE_11__* %167, %struct.TYPE_11__** %8, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %162, label %171

171:                                              ; preds = %165
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* %6, align 4
  %174 = add i32 %173, %172
  store i32 %174, i32* %6, align 4
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_13__*, %struct.TYPE_13__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %3, align 4
  %181 = sub i32 %179, %180
  %182 = zext i32 %181 to i64
  %183 = inttoptr i64 %182 to i8*
  %184 = ptrtoint i8* %183 to i32
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  store i32 %184, i32* %188, align 4
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %195, label %231

195:                                              ; preds = %171
  %196 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %197 = bitcast %struct.TYPE_11__* %15 to i8*
  %198 = bitcast %struct.TYPE_11__* %196 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %197, i8* align 4 %198, i64 4, i1 false)
  br label %199

199:                                              ; preds = %212, %195
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 1
  %205 = sub nsw i32 %201, %204
  %206 = sext i32 %205 to i64
  %207 = inttoptr i64 %206 to i8*
  %208 = ptrtoint i8* %207 to i32
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  store i32 %208, i32* %209, align 4
  %210 = load i32, i32* %6, align 4
  %211 = lshr i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %212

212:                                              ; preds = %199
  %213 = load i32, i32* %6, align 4
  %214 = icmp ugt i32 %213, 1
  br i1 %214, label %199, label %215

215:                                              ; preds = %212
  %216 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %218 = load i32, i32* %12, align 4
  %219 = add i32 %218, 1
  %220 = lshr i32 %219, 1
  %221 = call i32 @U2I(i32 %220)
  %222 = call i32 @InsertNode(%struct.TYPE_12__* %216, %struct.TYPE_11__* %217, i32 %221)
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 1
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %224, align 8
  %226 = call %struct.TYPE_11__* @ONE_STATE(%struct.TYPE_13__* %225)
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 2
  store %struct.TYPE_11__* %226, %struct.TYPE_11__** %228, align 8
  %229 = bitcast %struct.TYPE_11__* %226 to i8*
  %230 = bitcast %struct.TYPE_11__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %229, i8* align 4 %230, i64 4, i1 false)
  br label %278

231:                                              ; preds = %171
  %232 = load i32, i32* %12, align 4
  %233 = add i32 %232, 1
  %234 = lshr i32 %233, 1
  store i32 %234, i32* %13, align 4
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  %241 = ashr i32 %240, 1
  store i32 %241, i32* %14, align 4
  %242 = load i32, i32* %13, align 4
  %243 = load i32, i32* %14, align 4
  %244 = icmp ne i32 %242, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %231
  %246 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %248 = load i32, i32* %13, align 4
  %249 = load i32, i32* %14, align 4
  %250 = call i32 @ShrinkUnits(%struct.TYPE_12__* %246, %struct.TYPE_11__* %247, i32 %248, i32 %249)
  %251 = call i32 @STATS_REF(i32 %250)
  %252 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 2
  store i32 %251, i32* %255, align 4
  br label %256

256:                                              ; preds = %245, %231
  br label %257

257:                                              ; preds = %256, %151
  %258 = load i32, i32* %5, align 4
  %259 = load i32, i32* %6, align 4
  %260 = add i32 %258, %259
  %261 = load i32, i32* %6, align 4
  %262 = lshr i32 %261, 1
  %263 = sub i32 %260, %262
  %264 = zext i32 %263 to i64
  %265 = inttoptr i64 %264 to i8*
  %266 = ptrtoint i8* %265 to i32
  %267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 1
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 0
  store i32 %266, i32* %270, align 4
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 1
  %273 = load %struct.TYPE_13__*, %struct.TYPE_13__** %272, align 8
  %274 = call i8* @STATS(%struct.TYPE_13__* %273)
  %275 = bitcast i8* %274 to %struct.TYPE_11__*
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 2
  store %struct.TYPE_11__* %275, %struct.TYPE_11__** %277, align 8
  br label %278

278:                                              ; preds = %257, %215
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
