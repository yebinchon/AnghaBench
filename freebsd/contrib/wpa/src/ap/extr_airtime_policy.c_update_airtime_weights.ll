; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_update_airtime_weights.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_airtime_policy.c_update_airtime_weights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_iface = type { i64, %struct.hostapd_data**, %struct.TYPE_3__* }
%struct.hostapd_data = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i64 }

@TRUE = common dso_local global i32 0, align 4
@AIRTIME_MODE_DYNAMIC = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @update_airtime_weights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_airtime_weights(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hostapd_iface*, align 8
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %20 = load i8*, i8** %3, align 8
  %21 = bitcast i8* %20 to %struct.hostapd_iface*
  store %struct.hostapd_iface* %21, %struct.hostapd_iface** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %22 = load i32, i32* @TRUE, align 4
  store i32 %22, i32* %14, align 4
  %23 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %24 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AIRTIME_MODE_DYNAMIC, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  br label %31

31:                                               ; preds = %97, %2
  %32 = load i64, i64* %19, align 8
  %33 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %34 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %32, %35
  br i1 %36, label %37, label %100

37:                                               ; preds = %31
  %38 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %39 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %38, i32 0, i32 1
  %40 = load %struct.hostapd_data**, %struct.hostapd_data*** %39, align 8
  %41 = load i64, i64* %19, align 8
  %42 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %40, i64 %41
  %43 = load %struct.hostapd_data*, %struct.hostapd_data** %42, align 8
  store %struct.hostapd_data* %43, %struct.hostapd_data** %6, align 8
  %44 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %45 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %37
  %49 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %50 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48, %37
  br label %97

56:                                               ; preds = %48
  %57 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %58 = call i32 @count_backlogged_sta(%struct.hostapd_data* %57)
  %59 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %60 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %97

64:                                               ; preds = %56
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %69 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67, %64
  %74 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %75 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %9, align 4
  br label %77

77:                                               ; preds = %73, %67
  %78 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %79 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = mul i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %84 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, %85
  store i32 %87, i32* %11, align 4
  %88 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %89 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = add i32 %93, %92
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %77, %63, %55
  %98 = load i64, i64* %19, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %19, align 8
  br label %31

100:                                              ; preds = %31
  %101 = load i32, i32* %9, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %182

103:                                              ; preds = %100
  store i64 0, i64* %19, align 8
  br label %104

104:                                              ; preds = %171, %103
  %105 = load i64, i64* %19, align 8
  %106 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %107 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = icmp ult i64 %105, %108
  br i1 %109, label %110, label %174

110:                                              ; preds = %104
  %111 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %112 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %111, i32 0, i32 1
  %113 = load %struct.hostapd_data**, %struct.hostapd_data*** %112, align 8
  %114 = load i64, i64* %19, align 8
  %115 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %113, i64 %114
  %116 = load %struct.hostapd_data*, %struct.hostapd_data** %115, align 8
  store %struct.hostapd_data* %116, %struct.hostapd_data** %6, align 8
  %117 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %118 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %110
  %122 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %123 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %122, i32 0, i32 2
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %129, label %128

128:                                              ; preds = %121, %110
  br label %171

129:                                              ; preds = %121
  %130 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %131 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %143

134:                                              ; preds = %129
  %135 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %136 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = urem i32 %137, %138
  %140 = icmp ugt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %134
  %142 = load i32, i32* @FALSE, align 4
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %141, %134, %129
  %144 = load i32, i32* %15, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %170, label %146

146:                                              ; preds = %143
  %147 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %148 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %147, i32 0, i32 2
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %170

153:                                              ; preds = %146
  %154 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %155 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = mul i32 %156, %157
  %159 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %160 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %159, i32 0, i32 2
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = mul i32 %163, %164
  %166 = icmp ugt i32 %158, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %153
  %168 = load i32, i32* @TRUE, align 4
  store i32 %168, i32* %15, align 4
  br label %169

169:                                              ; preds = %167, %153
  br label %170

170:                                              ; preds = %169, %146, %143
  br label %171

171:                                              ; preds = %170, %128
  %172 = load i64, i64* %19, align 8
  %173 = add i64 %172, 1
  store i64 %173, i64* %19, align 8
  br label %104

174:                                              ; preds = %104
  %175 = load i32, i32* %14, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %174
  %178 = load i32, i32* %9, align 4
  %179 = load i32, i32* %10, align 4
  %180 = udiv i32 %179, %178
  store i32 %180, i32* %10, align 4
  br label %181

181:                                              ; preds = %177, %174
  br label %182

182:                                              ; preds = %181, %100
  store i64 0, i64* %19, align 8
  br label %183

183:                                              ; preds = %242, %182
  %184 = load i64, i64* %19, align 8
  %185 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %186 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ult i64 %184, %187
  br i1 %188, label %189, label %245

189:                                              ; preds = %183
  %190 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %191 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %190, i32 0, i32 1
  %192 = load %struct.hostapd_data**, %struct.hostapd_data*** %191, align 8
  %193 = load i64, i64* %19, align 8
  %194 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %192, i64 %193
  %195 = load %struct.hostapd_data*, %struct.hostapd_data** %194, align 8
  store %struct.hostapd_data* %195, %struct.hostapd_data** %6, align 8
  %196 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %197 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %189
  %201 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %202 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %201, i32 0, i32 2
  %203 = load %struct.TYPE_4__*, %struct.TYPE_4__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %200, %189
  br label %242

208:                                              ; preds = %200
  %209 = load i32, i32* %15, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %231

211:                                              ; preds = %208
  %212 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %213 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %231

216:                                              ; preds = %211
  %217 = load i32, i32* %17, align 4
  %218 = icmp sgt i32 %217, 1
  br i1 %218, label %219, label %231

219:                                              ; preds = %216
  %220 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %221 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %220, i32 0, i32 2
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %10, align 4
  %226 = mul i32 %224, %225
  %227 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %228 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = udiv i32 %226, %229
  store i32 %230, i32* %16, align 4
  br label %232

231:                                              ; preds = %216, %211, %208
  store i32 1, i32* %16, align 4
  br label %232

232:                                              ; preds = %231, %219
  %233 = load i32, i32* %16, align 4
  %234 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %235 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  %236 = load i32, i32* %16, align 4
  %237 = load i32, i32* %18, align 4
  %238 = icmp sgt i32 %236, %237
  br i1 %238, label %239, label %241

239:                                              ; preds = %232
  %240 = load i32, i32* %16, align 4
  store i32 %240, i32* %18, align 4
  br label %241

241:                                              ; preds = %239, %232
  br label %242

242:                                              ; preds = %241, %207
  %243 = load i64, i64* %19, align 8
  %244 = add i64 %243, 1
  store i64 %244, i64* %19, align 8
  br label %183

245:                                              ; preds = %183
  %246 = load i32, i32* %18, align 4
  %247 = call i32 @get_airtime_quantum(i32 %246)
  store i32 %247, i32* %13, align 4
  store i64 0, i64* %19, align 8
  br label %248

248:                                              ; preds = %281, %245
  %249 = load i64, i64* %19, align 8
  %250 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %251 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ult i64 %249, %252
  br i1 %253, label %254, label %284

254:                                              ; preds = %248
  %255 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %256 = getelementptr inbounds %struct.hostapd_iface, %struct.hostapd_iface* %255, i32 0, i32 1
  %257 = load %struct.hostapd_data**, %struct.hostapd_data*** %256, align 8
  %258 = load i64, i64* %19, align 8
  %259 = getelementptr inbounds %struct.hostapd_data*, %struct.hostapd_data** %257, i64 %258
  %260 = load %struct.hostapd_data*, %struct.hostapd_data** %259, align 8
  store %struct.hostapd_data* %260, %struct.hostapd_data** %6, align 8
  %261 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %262 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 8
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %254
  %266 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %267 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %266, i32 0, i32 2
  %268 = load %struct.TYPE_4__*, %struct.TYPE_4__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %265, %254
  br label %281

273:                                              ; preds = %265
  %274 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %275 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %276 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %13, align 4
  %279 = mul i32 %277, %278
  %280 = call i32 @set_sta_weights(%struct.hostapd_data* %274, i32 %279)
  br label %281

281:                                              ; preds = %273, %272
  %282 = load i64, i64* %19, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %19, align 8
  br label %248

284:                                              ; preds = %248
  %285 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %286 = call i64 @get_airtime_policy_update_timeout(%struct.hostapd_iface* %285, i32* %7, i32* %8)
  %287 = icmp slt i64 %286, 0
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  br label %294

289:                                              ; preds = %284
  %290 = load i32, i32* %7, align 4
  %291 = load i32, i32* %8, align 4
  %292 = load %struct.hostapd_iface*, %struct.hostapd_iface** %5, align 8
  %293 = call i32 @eloop_register_timeout(i32 %290, i32 %291, void (i8*, i8*)* @update_airtime_weights, %struct.hostapd_iface* %292, i32* null)
  br label %294

294:                                              ; preds = %289, %288
  ret void
}

declare dso_local i32 @count_backlogged_sta(%struct.hostapd_data*) #1

declare dso_local i32 @get_airtime_quantum(i32) #1

declare dso_local i32 @set_sta_weights(%struct.hostapd_data*, i32) #1

declare dso_local i64 @get_airtime_policy_update_timeout(%struct.hostapd_iface*, i32*, i32*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.hostapd_iface*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
