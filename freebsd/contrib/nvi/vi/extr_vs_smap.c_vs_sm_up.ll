; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/vi/extr_vs_smap.c_vs_sm_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i64, i64, i32, i32 }
%struct.TYPE_29__ = type { i64, i32 }

@TMAP = common dso_local global %struct.TYPE_27__* null, align 8
@OOBLNO = common dso_local global i32 0, align 4
@P_BOTTOM = common dso_local global i32 0, align 4
@P_TOP = common dso_local global i32 0, align 4
@HMAP = common dso_local global %struct.TYPE_27__* null, align 8
@O_LEFTRIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_29__*, i64, i32, %struct.TYPE_27__*)* @vs_sm_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vs_sm_up(%struct.TYPE_28__* %0, %struct.TYPE_29__* %1, i64 %2, i32 %3, %struct.TYPE_27__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_28__*, align 8
  %8 = alloca %struct.TYPE_29__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_27__*, align 8
  %16 = alloca %struct.TYPE_27__, align 8
  %17 = alloca %struct.TYPE_27__, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %7, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_27__* %4, %struct.TYPE_27__** %11, align 8
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %19 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %20 = call i64 @vs_sm_next(%struct.TYPE_28__* %18, %struct.TYPE_27__* %19, %struct.TYPE_27__* %16)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %394

23:                                               ; preds = %5
  %24 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %27 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %23
  %31 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @db_exist(%struct.TYPE_28__* %31, i64 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %72, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 130
  br i1 %38, label %46, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %10, align 4
  %41 = icmp eq i32 %40, 128
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %45 = icmp eq %struct.TYPE_27__* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %39, %36
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %48 = call i32 @v_eof(%struct.TYPE_28__* %47, i32* null)
  store i32 1, i32* %6, align 4
  br label %394

49:                                               ; preds = %42
  %50 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %51 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %52 = call i64 @vs_sm_next(%struct.TYPE_28__* %50, %struct.TYPE_27__* %51, %struct.TYPE_27__* %16)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49
  store i32 1, i32* %6, align 4
  br label %394

55:                                               ; preds = %49
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %59 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp sgt i64 %57, %60
  br i1 %61, label %62, label %71

62:                                               ; preds = %55
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @db_exist(%struct.TYPE_28__* %63, i64 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %70 = call i32 @v_eof(%struct.TYPE_28__* %69, i32* null)
  store i32 1, i32* %6, align 4
  br label %394

71:                                               ; preds = %62, %55
  br label %72

72:                                               ; preds = %71, %30, %23
  store i32 0, i32* %12, align 4
  %73 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %74 = call i64 @IS_SMALL(%struct.TYPE_28__* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %223

76:                                               ; preds = %72
  %77 = load i64, i64* %9, align 8
  %78 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %10, align 4
  %84 = icmp eq i32 %83, 129
  br i1 %84, label %85, label %137

85:                                               ; preds = %82, %76
  %86 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i64 0
  %88 = bitcast %struct.TYPE_27__* %16 to i8*
  %89 = bitcast %struct.TYPE_27__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 24, i1 false)
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %91 = call i64 @vs_sm_erase(%struct.TYPE_28__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 1, i32* %6, align 4
  br label %394

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %118, %94
  %96 = load i64, i64* %9, align 8
  %97 = add nsw i64 %96, -1
  store i64 %97, i64* %9, align 8
  %98 = icmp ne i64 %96, 0
  br i1 %98, label %99, label %121

99:                                               ; preds = %95
  %100 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %101 = call i64 @vs_sm_next(%struct.TYPE_28__* %100, %struct.TYPE_27__* %16, %struct.TYPE_27__* %17)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  store i32 1, i32* %6, align 4
  br label %394

104:                                              ; preds = %99
  %105 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %106, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %112 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %17, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @db_exist(%struct.TYPE_28__* %111, i64 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %110
  br label %121

117:                                              ; preds = %110, %104
  br label %118

118:                                              ; preds = %117
  %119 = bitcast %struct.TYPE_27__* %16 to i8*
  %120 = bitcast %struct.TYPE_27__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %119, i8* align 8 %120, i64 24, i1 false)
  br label %95

121:                                              ; preds = %116, %95
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i64 0
  %124 = bitcast %struct.TYPE_27__* %123 to i8*
  %125 = bitcast %struct.TYPE_27__* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %124, i8* align 8 %125, i64 24, i1 false)
  %126 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %127 = load i32, i32* @OOBLNO, align 4
  %128 = load i32, i32* @P_BOTTOM, align 4
  %129 = call i64 @vs_sm_fill(%struct.TYPE_28__* %126, i32 %127, i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %121
  store i32 1, i32* %6, align 4
  br label %394

132:                                              ; preds = %121
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %135 = load i32, i32* @P_TOP, align 4
  %136 = call i32 @vs_sm_position(%struct.TYPE_28__* %133, %struct.TYPE_29__* %134, i32 0, i32 %135)
  store i32 %136, i32* %6, align 4
  br label %394

137:                                              ; preds = %82
  %138 = load i32, i32* %10, align 4
  %139 = icmp eq i32 %138, 130
  br i1 %139, label %144, label %140

140:                                              ; preds = %137
  %141 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %142 = call i64 @vs_sm_cursor(%struct.TYPE_28__* %141, %struct.TYPE_27__** %15)
  %143 = icmp ne i64 %142, 0
  br label %144

144:                                              ; preds = %140, %137
  %145 = phi i1 [ true, %137 ], [ %143, %140 ]
  %146 = zext i1 %145 to i32
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %197, %144
  %148 = load i64, i64* %9, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %158

150:                                              ; preds = %147
  %151 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %153, %156
  br label %158

158:                                              ; preds = %150, %147
  %159 = phi i1 [ false, %147 ], [ %157, %150 ]
  br i1 %159, label %160, label %204

160:                                              ; preds = %158
  %161 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %162 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %163 = call i64 @vs_sm_next(%struct.TYPE_28__* %161, %struct.TYPE_27__* %162, %struct.TYPE_27__* %16)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  store i32 1, i32* %6, align 4
  br label %394

166:                                              ; preds = %160
  %167 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %169, %171
  br i1 %172, label %173, label %180

173:                                              ; preds = %166
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @db_exist(%struct.TYPE_28__* %174, i64 %176)
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %173
  br label %204

180:                                              ; preds = %173, %166
  %181 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %182 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %181, i32 1
  store %struct.TYPE_27__* %182, %struct.TYPE_27__** @TMAP, align 8
  %183 = bitcast %struct.TYPE_27__* %182 to i8*
  %184 = bitcast %struct.TYPE_27__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %183, i8* align 8 %184, i64 24, i1 false)
  %185 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %187 = call i64 @vs_line(%struct.TYPE_28__* %185, %struct.TYPE_27__* %186, i32* null, i32* null)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %190

189:                                              ; preds = %180
  store i32 1, i32* %6, align 4
  br label %394

190:                                              ; preds = %180
  %191 = load i32, i32* %12, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %196, label %193

193:                                              ; preds = %190
  %194 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %195 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %194, i32 1
  store %struct.TYPE_27__* %195, %struct.TYPE_27__** %15, align 8
  br label %196

196:                                              ; preds = %193, %190
  br label %197

197:                                              ; preds = %196
  %198 = load i64, i64* %9, align 8
  %199 = add nsw i64 %198, -1
  store i64 %199, i64* %9, align 8
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, 1
  store i64 %203, i64* %201, align 8
  br label %147

204:                                              ; preds = %179, %158
  %205 = load i32, i32* %12, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %218, label %207

207:                                              ; preds = %204
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %15, align 8
  %214 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %213, i32 0, i32 3
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 8
  br label %218

218:                                              ; preds = %207, %204
  %219 = load i64, i64* %9, align 8
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  store i32 0, i32* %6, align 4
  br label %394

222:                                              ; preds = %218
  br label %223

223:                                              ; preds = %222, %72
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %224

224:                                              ; preds = %279, %223
  %225 = load i64, i64* %9, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %282

227:                                              ; preds = %224
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %229 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %230 = call i64 @vs_sm_next(%struct.TYPE_28__* %228, %struct.TYPE_27__* %229, %struct.TYPE_27__* %16)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  store i32 1, i32* %6, align 4
  br label %394

233:                                              ; preds = %227
  %234 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %235 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %236, %238
  br i1 %239, label %240, label %247

240:                                              ; preds = %233
  %241 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %16, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @db_exist(%struct.TYPE_28__* %241, i64 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %247, label %246

246:                                              ; preds = %240
  br label %282

247:                                              ; preds = %240, %233
  %248 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %249 = call i64 @vs_sm_1up(%struct.TYPE_28__* %248)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %247
  store i32 1, i32* %6, align 4
  br label %394

252:                                              ; preds = %247
  %253 = load i32, i32* %10, align 4
  switch i32 %253, label %277 [
    i32 130, label %254
    i32 128, label %263
  ]

254:                                              ; preds = %252
  %255 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %257 = icmp ugt %struct.TYPE_27__* %255, %256
  br i1 %257, label %258, label %261

258:                                              ; preds = %254
  %259 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %260 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %259, i32 -1
  store %struct.TYPE_27__* %260, %struct.TYPE_27__** %11, align 8
  br label %262

261:                                              ; preds = %254
  store i32 1, i32* %13, align 4
  br label %262

262:                                              ; preds = %261, %258
  br label %278

263:                                              ; preds = %252
  %264 = load i32, i32* %14, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %274

266:                                              ; preds = %263
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %268 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  %269 = icmp ugt %struct.TYPE_27__* %267, %268
  br i1 %269, label %270, label %273

270:                                              ; preds = %266
  %271 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %271, i32 -1
  store %struct.TYPE_27__* %272, %struct.TYPE_27__** %11, align 8
  br label %273

273:                                              ; preds = %270, %266
  br label %276

274:                                              ; preds = %263
  %275 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  store %struct.TYPE_27__* %275, %struct.TYPE_27__** %11, align 8
  store i32 1, i32* %14, align 4
  br label %276

276:                                              ; preds = %274, %273
  br label %277

277:                                              ; preds = %252, %276
  br label %278

278:                                              ; preds = %277, %262
  br label %279

279:                                              ; preds = %278
  %280 = load i64, i64* %9, align 8
  %281 = add nsw i64 %280, -1
  store i64 %281, i64* %9, align 8
  br label %224

282:                                              ; preds = %246, %224
  %283 = load i32, i32* %12, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 0, i32* %6, align 4
  br label %394

286:                                              ; preds = %282
  %287 = load i32, i32* %10, align 4
  switch i32 %287, label %363 [
    i32 130, label %288
    i32 129, label %332
    i32 131, label %338
    i32 128, label %362
  ]

288:                                              ; preds = %286
  %289 = load i32, i32* %13, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %331

291:                                              ; preds = %288
  %292 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %296 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %295, i32 0, i32 0
  store i64 %294, i64* %296, align 8
  %297 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %298 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %302 = load i32, i32* @O_LEFTRIGHT, align 4
  %303 = call i32 @O_ISSET(%struct.TYPE_28__* %301, i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %309

305:                                              ; preds = %291
  %306 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %307 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 8
  br label %318

309:                                              ; preds = %291
  %310 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %311 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 4
  %313 = sub nsw i32 %312, 1
  %314 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %315 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = mul nsw i32 %313, %316
  br label %318

318:                                              ; preds = %309, %305
  %319 = phi i32 [ %308, %305 ], [ %317, %309 ]
  %320 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %320, i32 0, i32 3
  %322 = load i32, i32* %321, align 4
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 2
  %325 = load i32, i32* %324, align 8
  %326 = srem i32 %322, %325
  %327 = add nsw i32 %319, %326
  %328 = call i32 @vs_colpos(%struct.TYPE_28__* %297, i64 %300, i32 %327)
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i32 0, i32 1
  store i32 %328, i32* %330, align 8
  br label %331

331:                                              ; preds = %318, %288
  store i32 0, i32* %6, align 4
  br label %394

332:                                              ; preds = %286
  %333 = load i64, i64* %9, align 8
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %337, label %335

335:                                              ; preds = %332
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** @HMAP, align 8
  store %struct.TYPE_27__* %336, %struct.TYPE_27__** %11, align 8
  br label %365

337:                                              ; preds = %332
  br label %338

338:                                              ; preds = %286, %337
  br label %339

339:                                              ; preds = %356, %338
  %340 = load i64, i64* %9, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %361

342:                                              ; preds = %339
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %344 = load %struct.TYPE_27__*, %struct.TYPE_27__** @TMAP, align 8
  %345 = icmp eq %struct.TYPE_27__* %343, %344
  br i1 %345, label %354, label %346

346:                                              ; preds = %342
  %347 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %349 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %348, i64 1
  %350 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %349, i32 0, i32 0
  %351 = load i64, i64* %350, align 8
  %352 = call i32 @db_exist(%struct.TYPE_28__* %347, i64 %351)
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %355, label %354

354:                                              ; preds = %346, %342
  br label %361

355:                                              ; preds = %346
  br label %356

356:                                              ; preds = %355
  %357 = load i64, i64* %9, align 8
  %358 = add nsw i64 %357, -1
  store i64 %358, i64* %9, align 8
  %359 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %359, i32 1
  store %struct.TYPE_27__* %360, %struct.TYPE_27__** %11, align 8
  br label %339

361:                                              ; preds = %354, %339
  br label %365

362:                                              ; preds = %286
  br label %365

363:                                              ; preds = %286
  %364 = call i32 (...) @abort() #4
  unreachable

365:                                              ; preds = %362, %361, %335
  %366 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %367 = call i32 @SMAP_CACHE(%struct.TYPE_27__* %366)
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %375, label %369

369:                                              ; preds = %365
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %7, align 8
  %371 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %372 = call i64 @vs_line(%struct.TYPE_28__* %370, %struct.TYPE_27__* %371, i32* null, i32* null)
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %374, label %375

374:                                              ; preds = %369
  store i32 1, i32* %6, align 4
  br label %394

375:                                              ; preds = %369, %365
  %376 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %377 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %376, i32 0, i32 0
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %380 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %379, i32 0, i32 0
  store i64 %378, i64* %380, align 8
  %381 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %382 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %381, i32 0, i32 2
  %383 = load i32, i32* %382, align 4
  %384 = icmp eq i32 %383, 255
  br i1 %384, label %385, label %386

385:                                              ; preds = %375
  br label %390

386:                                              ; preds = %375
  %387 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %388 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %387, i32 0, i32 3
  %389 = load i32, i32* %388, align 8
  br label %390

390:                                              ; preds = %386, %385
  %391 = phi i32 [ 0, %385 ], [ %389, %386 ]
  %392 = load %struct.TYPE_29__*, %struct.TYPE_29__** %8, align 8
  %393 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %392, i32 0, i32 1
  store i32 %391, i32* %393, align 8
  store i32 0, i32* %6, align 4
  br label %394

394:                                              ; preds = %390, %374, %331, %285, %251, %232, %221, %189, %165, %132, %131, %103, %93, %68, %54, %46, %22
  %395 = load i32, i32* %6, align 4
  ret i32 %395
}

declare dso_local i64 @vs_sm_next(%struct.TYPE_28__*, %struct.TYPE_27__*, %struct.TYPE_27__*) #1

declare dso_local i32 @db_exist(%struct.TYPE_28__*, i64) #1

declare dso_local i32 @v_eof(%struct.TYPE_28__*, i32*) #1

declare dso_local i64 @IS_SMALL(%struct.TYPE_28__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @vs_sm_erase(%struct.TYPE_28__*) #1

declare dso_local i64 @vs_sm_fill(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @vs_sm_position(%struct.TYPE_28__*, %struct.TYPE_29__*, i32, i32) #1

declare dso_local i64 @vs_sm_cursor(%struct.TYPE_28__*, %struct.TYPE_27__**) #1

declare dso_local i64 @vs_line(%struct.TYPE_28__*, %struct.TYPE_27__*, i32*, i32*) #1

declare dso_local i64 @vs_sm_1up(%struct.TYPE_28__*) #1

declare dso_local i32 @vs_colpos(%struct.TYPE_28__*, i64, i32) #1

declare dso_local i32 @O_ISSET(%struct.TYPE_28__*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

declare dso_local i32 @SMAP_CACHE(%struct.TYPE_27__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
