; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_hostapd_set_freq_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_hw_features_common.c_hostapd_set_freq_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_freq_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.he_capabilities = type { i32 }

@VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"80+80 channel width is not supported!\00", align 1
@VHT_CAP_SUPP_CHAN_WIDTH_160MHZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"160MHZ channel width is not supported!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_set_freq_params(%struct.hostapd_freq_params* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, %struct.he_capabilities* %12) #0 {
  %14 = alloca i32, align 4
  %15 = alloca %struct.hostapd_freq_params*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.he_capabilities*, align 8
  store %struct.hostapd_freq_params* %0, %struct.hostapd_freq_params** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store %struct.he_capabilities* %12, %struct.he_capabilities** %27, align 8
  %28 = load %struct.he_capabilities*, %struct.he_capabilities** %27, align 8
  %29 = icmp ne %struct.he_capabilities* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %13
  store i32 0, i32* %21, align 4
  br label %31

31:                                               ; preds = %30, %13
  %32 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %33 = call i32 @os_memset(%struct.hostapd_freq_params* %32, i32 0, i32 40)
  %34 = load i32, i32* %16, align 4
  %35 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %36 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %39 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %42 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %19, align 4
  %44 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %45 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %48 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %21, align 4
  %50 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %51 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %22, align 4
  %53 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %54 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %17, align 4
  %56 = load i32, i32* %22, align 4
  %57 = mul nsw i32 %56, 10
  %58 = add nsw i32 %55, %57
  %59 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %60 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 4
  %61 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %62 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %61, i32 0, i32 8
  store i32 0, i32* %62, align 4
  %63 = load i32, i32* %22, align 4
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i32 40, i32 20
  %67 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %68 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %67, i32 0, i32 9
  store i32 %66, i32* %68, align 4
  %69 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %70 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %278

73:                                               ; preds = %31
  %74 = load i32, i32* %23, align 4
  switch i32 %74, label %277 [
    i32 128, label %75
    i32 129, label %99
    i32 130, label %124
    i32 131, label %209
  ]

75:                                               ; preds = %73
  %76 = load i32, i32* %25, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %97, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %24, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %98

81:                                               ; preds = %78
  %82 = load i32, i32* %24, align 4
  %83 = mul nsw i32 %82, 5
  %84 = add nsw i32 5000, %83
  %85 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %86 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %84, %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %81
  %90 = load i32, i32* %24, align 4
  %91 = mul nsw i32 %90, 5
  %92 = add nsw i32 2407, %91
  %93 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %94 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %93, i32 0, i32 7
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %92, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %89, %75
  store i32 -1, i32* %14, align 4
  br label %279

98:                                               ; preds = %89, %81, %78
  br label %277

99:                                               ; preds = %73
  %100 = load i32, i32* %26, align 4
  %101 = load i32, i32* @VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = load i32, i32* @MSG_ERROR, align 4
  %106 = call i32 @wpa_printf(i32 %105, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %279

107:                                              ; preds = %99
  %108 = load i32, i32* %25, align 4
  %109 = load i32, i32* %24, align 4
  %110 = add nsw i32 %109, 4
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %24, align 4
  %115 = sub nsw i32 %114, 4
  %116 = icmp eq i32 %113, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %112, %107
  store i32 -1, i32* %14, align 4
  br label %279

118:                                              ; preds = %112
  %119 = load i32, i32* %25, align 4
  %120 = mul nsw i32 %119, 5
  %121 = add nsw i32 5000, %120
  %122 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %123 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 4
  br label %124

124:                                              ; preds = %73, %118
  %125 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %126 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %125, i32 0, i32 9
  store i32 80, i32* %126, align 4
  %127 = load i32, i32* %23, align 4
  %128 = icmp eq i32 %127, 130
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* %25, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %129, %124
  %133 = load i32, i32* %23, align 4
  %134 = icmp eq i32 %133, 129
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load i32, i32* %25, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %22, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %138, %135, %129
  store i32 -1, i32* %14, align 4
  br label %279

142:                                              ; preds = %138
  %143 = load i32, i32* %24, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %180, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %18, align 4
  %147 = icmp sle i32 %146, 48
  br i1 %147, label %148, label %149

148:                                              ; preds = %145
  store i32 42, i32* %24, align 4
  br label %174

149:                                              ; preds = %145
  %150 = load i32, i32* %18, align 4
  %151 = icmp sle i32 %150, 64
  br i1 %151, label %152, label %153

152:                                              ; preds = %149
  store i32 58, i32* %24, align 4
  br label %173

153:                                              ; preds = %149
  %154 = load i32, i32* %18, align 4
  %155 = icmp sle i32 %154, 112
  br i1 %155, label %156, label %157

156:                                              ; preds = %153
  store i32 106, i32* %24, align 4
  br label %172

157:                                              ; preds = %153
  %158 = load i32, i32* %18, align 4
  %159 = icmp sle i32 %158, 128
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  store i32 122, i32* %24, align 4
  br label %171

161:                                              ; preds = %157
  %162 = load i32, i32* %18, align 4
  %163 = icmp sle i32 %162, 144
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 138, i32* %24, align 4
  br label %170

165:                                              ; preds = %161
  %166 = load i32, i32* %18, align 4
  %167 = icmp sle i32 %166, 161
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 155, i32* %24, align 4
  br label %169

169:                                              ; preds = %168, %165
  br label %170

170:                                              ; preds = %169, %164
  br label %171

171:                                              ; preds = %170, %160
  br label %172

172:                                              ; preds = %171, %156
  br label %173

173:                                              ; preds = %172, %152
  br label %174

174:                                              ; preds = %173, %148
  %175 = load i32, i32* %24, align 4
  %176 = mul nsw i32 %175, 5
  %177 = add nsw i32 5000, %176
  %178 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %179 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %178, i32 0, i32 7
  store i32 %177, i32* %179, align 4
  br label %208

180:                                              ; preds = %142
  %181 = load i32, i32* %24, align 4
  %182 = load i32, i32* %18, align 4
  %183 = add nsw i32 %182, 6
  %184 = icmp eq i32 %181, %183
  br i1 %184, label %200, label %185

185:                                              ; preds = %180
  %186 = load i32, i32* %24, align 4
  %187 = load i32, i32* %18, align 4
  %188 = add nsw i32 %187, 2
  %189 = icmp eq i32 %186, %188
  br i1 %189, label %200, label %190

190:                                              ; preds = %185
  %191 = load i32, i32* %24, align 4
  %192 = load i32, i32* %18, align 4
  %193 = sub nsw i32 %192, 2
  %194 = icmp eq i32 %191, %193
  br i1 %194, label %200, label %195

195:                                              ; preds = %190
  %196 = load i32, i32* %24, align 4
  %197 = load i32, i32* %18, align 4
  %198 = sub nsw i32 %197, 6
  %199 = icmp eq i32 %196, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %195, %190, %185, %180
  %201 = load i32, i32* %24, align 4
  %202 = mul nsw i32 %201, 5
  %203 = add nsw i32 5000, %202
  %204 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %205 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %204, i32 0, i32 7
  store i32 %203, i32* %205, align 4
  br label %207

206:                                              ; preds = %195
  store i32 -1, i32* %14, align 4
  br label %279

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %207, %174
  br label %277

209:                                              ; preds = %73
  %210 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %211 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %210, i32 0, i32 9
  store i32 160, i32* %211, align 4
  %212 = load i32, i32* %26, align 4
  %213 = load i32, i32* @VHT_CAP_SUPP_CHAN_WIDTH_160MHZ, align 4
  %214 = load i32, i32* @VHT_CAP_SUPP_CHAN_WIDTH_160_80PLUS80MHZ, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %212, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %221, label %218

218:                                              ; preds = %209
  %219 = load i32, i32* @MSG_ERROR, align 4
  %220 = call i32 @wpa_printf(i32 %219, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %14, align 4
  br label %279

221:                                              ; preds = %209
  %222 = load i32, i32* %25, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %221
  store i32 -1, i32* %14, align 4
  br label %279

225:                                              ; preds = %221
  %226 = load i32, i32* %22, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %225
  store i32 -1, i32* %14, align 4
  br label %279

229:                                              ; preds = %225
  %230 = load i32, i32* %24, align 4
  %231 = load i32, i32* %18, align 4
  %232 = add nsw i32 %231, 14
  %233 = icmp eq i32 %230, %232
  br i1 %233, label %269, label %234

234:                                              ; preds = %229
  %235 = load i32, i32* %24, align 4
  %236 = load i32, i32* %18, align 4
  %237 = add nsw i32 %236, 10
  %238 = icmp eq i32 %235, %237
  br i1 %238, label %269, label %239

239:                                              ; preds = %234
  %240 = load i32, i32* %24, align 4
  %241 = load i32, i32* %18, align 4
  %242 = add nsw i32 %241, 6
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %269, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* %24, align 4
  %246 = load i32, i32* %18, align 4
  %247 = add nsw i32 %246, 2
  %248 = icmp eq i32 %245, %247
  br i1 %248, label %269, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* %24, align 4
  %251 = load i32, i32* %18, align 4
  %252 = sub nsw i32 %251, 2
  %253 = icmp eq i32 %250, %252
  br i1 %253, label %269, label %254

254:                                              ; preds = %249
  %255 = load i32, i32* %24, align 4
  %256 = load i32, i32* %18, align 4
  %257 = sub nsw i32 %256, 6
  %258 = icmp eq i32 %255, %257
  br i1 %258, label %269, label %259

259:                                              ; preds = %254
  %260 = load i32, i32* %24, align 4
  %261 = load i32, i32* %18, align 4
  %262 = sub nsw i32 %261, 10
  %263 = icmp eq i32 %260, %262
  br i1 %263, label %269, label %264

264:                                              ; preds = %259
  %265 = load i32, i32* %24, align 4
  %266 = load i32, i32* %18, align 4
  %267 = sub nsw i32 %266, 14
  %268 = icmp eq i32 %265, %267
  br i1 %268, label %269, label %275

269:                                              ; preds = %264, %259, %254, %249, %244, %239, %234, %229
  %270 = load i32, i32* %24, align 4
  %271 = mul nsw i32 %270, 5
  %272 = add nsw i32 5000, %271
  %273 = load %struct.hostapd_freq_params*, %struct.hostapd_freq_params** %15, align 8
  %274 = getelementptr inbounds %struct.hostapd_freq_params, %struct.hostapd_freq_params* %273, i32 0, i32 7
  store i32 %272, i32* %274, align 4
  br label %276

275:                                              ; preds = %264
  store i32 -1, i32* %14, align 4
  br label %279

276:                                              ; preds = %269
  br label %277

277:                                              ; preds = %73, %276, %208, %98
  br label %278

278:                                              ; preds = %277, %31
  store i32 0, i32* %14, align 4
  br label %279

279:                                              ; preds = %278, %275, %228, %224, %218, %206, %141, %117, %104, %97
  %280 = load i32, i32* %14, align 4
  ret i32 %280
}

declare dso_local i32 @os_memset(%struct.hostapd_freq_params*, i32, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
