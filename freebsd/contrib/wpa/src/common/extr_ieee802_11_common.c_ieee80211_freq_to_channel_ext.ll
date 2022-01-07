; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_freq_to_channel_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_ieee802_11_common.c_ieee80211_freq_to_channel_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_HOSTAPD_MODES = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211G = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211B = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211A = common dso_local global i32 0, align 4
@HOSTAPD_MODE_IEEE80211AD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_freq_to_channel_ext(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %18, label %15

15:                                               ; preds = %5
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %5
  %19 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %19, i32* %6, align 4
  br label %303

20:                                               ; preds = %15
  %21 = load i32, i32* %7, align 4
  %22 = icmp uge i32 %21, 2412
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = load i32, i32* %7, align 4
  %25 = icmp ule i32 %24, 2472
  br i1 %25, label %26, label %57

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = sub i32 %27, 2407
  %29 = urem i32 %28, 5
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %32, i32* %6, align 4
  br label %303

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %37, i32* %6, align 4
  br label %303

38:                                               ; preds = %33
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32*, i32** %10, align 8
  store i32 83, i32* %42, align 4
  br label %51

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32*, i32** %10, align 8
  store i32 84, i32* %47, align 4
  br label %50

48:                                               ; preds = %43
  %49 = load i32*, i32** %10, align 8
  store i32 81, i32* %49, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %41
  %52 = load i32, i32* %7, align 4
  %53 = sub i32 %52, 2407
  %54 = udiv i32 %53, 5
  %55 = load i32*, i32** %11, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @HOSTAPD_MODE_IEEE80211G, align 4
  store i32 %56, i32* %6, align 4
  br label %303

57:                                               ; preds = %23, %20
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 2484
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %67, i32* %6, align 4
  br label %303

68:                                               ; preds = %63
  %69 = load i32*, i32** %10, align 8
  store i32 82, i32* %69, align 4
  %70 = load i32*, i32** %11, align 8
  store i32 14, i32* %70, align 4
  %71 = load i32, i32* @HOSTAPD_MODE_IEEE80211B, align 4
  store i32 %71, i32* %6, align 4
  br label %303

72:                                               ; preds = %57
  %73 = load i32, i32* %7, align 4
  %74 = icmp uge i32 %73, 4900
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = icmp ult i32 %76, 5000
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = sub i32 %79, 4000
  %81 = urem i32 %80, 5
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %84, i32* %6, align 4
  br label %303

85:                                               ; preds = %78
  %86 = load i32, i32* %7, align 4
  %87 = sub i32 %86, 4000
  %88 = udiv i32 %87, 5
  %89 = load i32*, i32** %11, align 8
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %10, align 8
  store i32 0, i32* %90, align 4
  %91 = load i32, i32* @HOSTAPD_MODE_IEEE80211A, align 4
  store i32 %91, i32* %6, align 4
  br label %303

92:                                               ; preds = %75, %72
  %93 = load i32, i32* %9, align 4
  switch i32 %93, label %97 [
    i32 129, label %94
    i32 130, label %95
    i32 128, label %96
  ]

94:                                               ; preds = %92
  store i32 128, i32* %12, align 4
  br label %98

95:                                               ; preds = %92
  store i32 129, i32* %12, align 4
  br label %98

96:                                               ; preds = %92
  store i32 130, i32* %12, align 4
  br label %98

97:                                               ; preds = %92
  store i32 0, i32* %12, align 4
  br label %98

98:                                               ; preds = %97, %96, %95, %94
  %99 = load i32, i32* %7, align 4
  %100 = icmp uge i32 %99, 5180
  br i1 %100, label %101, label %137

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = icmp ule i32 %102, 5240
  br i1 %103, label %104, label %137

104:                                              ; preds = %101
  %105 = load i32, i32* %7, align 4
  %106 = sub i32 %105, 5000
  %107 = urem i32 %106, 5
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %104
  %110 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %110, i32* %6, align 4
  br label %303

111:                                              ; preds = %104
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %12, align 4
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  br label %131

117:                                              ; preds = %111
  %118 = load i32, i32* %8, align 4
  %119 = icmp eq i32 %118, 1
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32*, i32** %10, align 8
  store i32 116, i32* %121, align 4
  br label %130

122:                                              ; preds = %117
  %123 = load i32, i32* %8, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32*, i32** %10, align 8
  store i32 117, i32* %126, align 4
  br label %129

127:                                              ; preds = %122
  %128 = load i32*, i32** %10, align 8
  store i32 115, i32* %128, align 4
  br label %129

129:                                              ; preds = %127, %125
  br label %130

130:                                              ; preds = %129, %120
  br label %131

131:                                              ; preds = %130, %114
  %132 = load i32, i32* %7, align 4
  %133 = sub i32 %132, 5000
  %134 = udiv i32 %133, 5
  %135 = load i32*, i32** %11, align 8
  store i32 %134, i32* %135, align 4
  %136 = load i32, i32* @HOSTAPD_MODE_IEEE80211A, align 4
  store i32 %136, i32* %6, align 4
  br label %303

137:                                              ; preds = %101, %98
  %138 = load i32, i32* %7, align 4
  %139 = icmp uge i32 %138, 5260
  br i1 %139, label %140, label %176

140:                                              ; preds = %137
  %141 = load i32, i32* %7, align 4
  %142 = icmp ule i32 %141, 5320
  br i1 %142, label %143, label %176

143:                                              ; preds = %140
  %144 = load i32, i32* %7, align 4
  %145 = sub i32 %144, 5000
  %146 = urem i32 %145, 5
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %149, i32* %6, align 4
  br label %303

150:                                              ; preds = %143
  %151 = load i32, i32* %12, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32, i32* %12, align 4
  %155 = load i32*, i32** %10, align 8
  store i32 %154, i32* %155, align 4
  br label %170

156:                                              ; preds = %150
  %157 = load i32, i32* %8, align 4
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32*, i32** %10, align 8
  store i32 119, i32* %160, align 4
  br label %169

161:                                              ; preds = %156
  %162 = load i32, i32* %8, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32*, i32** %10, align 8
  store i32 120, i32* %165, align 4
  br label %168

166:                                              ; preds = %161
  %167 = load i32*, i32** %10, align 8
  store i32 118, i32* %167, align 4
  br label %168

168:                                              ; preds = %166, %164
  br label %169

169:                                              ; preds = %168, %159
  br label %170

170:                                              ; preds = %169, %153
  %171 = load i32, i32* %7, align 4
  %172 = sub i32 %171, 5000
  %173 = udiv i32 %172, 5
  %174 = load i32*, i32** %11, align 8
  store i32 %173, i32* %174, align 4
  %175 = load i32, i32* @HOSTAPD_MODE_IEEE80211A, align 4
  store i32 %175, i32* %6, align 4
  br label %303

176:                                              ; preds = %140, %137
  %177 = load i32, i32* %7, align 4
  %178 = icmp uge i32 %177, 5745
  br i1 %178, label %179, label %221

179:                                              ; preds = %176
  %180 = load i32, i32* %7, align 4
  %181 = icmp ule i32 %180, 5845
  br i1 %181, label %182, label %221

182:                                              ; preds = %179
  %183 = load i32, i32* %7, align 4
  %184 = sub i32 %183, 5000
  %185 = urem i32 %184, 5
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  %188 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %188, i32* %6, align 4
  br label %303

189:                                              ; preds = %182
  %190 = load i32, i32* %12, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %12, align 4
  %194 = load i32*, i32** %10, align 8
  store i32 %193, i32* %194, align 4
  br label %215

195:                                              ; preds = %189
  %196 = load i32, i32* %8, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i32*, i32** %10, align 8
  store i32 126, i32* %199, align 4
  br label %214

200:                                              ; preds = %195
  %201 = load i32, i32* %8, align 4
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %205

203:                                              ; preds = %200
  %204 = load i32*, i32** %10, align 8
  store i32 127, i32* %204, align 4
  br label %213

205:                                              ; preds = %200
  %206 = load i32, i32* %7, align 4
  %207 = icmp ule i32 %206, 5805
  br i1 %207, label %208, label %210

208:                                              ; preds = %205
  %209 = load i32*, i32** %10, align 8
  store i32 124, i32* %209, align 4
  br label %212

210:                                              ; preds = %205
  %211 = load i32*, i32** %10, align 8
  store i32 125, i32* %211, align 4
  br label %212

212:                                              ; preds = %210, %208
  br label %213

213:                                              ; preds = %212, %203
  br label %214

214:                                              ; preds = %213, %198
  br label %215

215:                                              ; preds = %214, %192
  %216 = load i32, i32* %7, align 4
  %217 = sub i32 %216, 5000
  %218 = udiv i32 %217, 5
  %219 = load i32*, i32** %11, align 8
  store i32 %218, i32* %219, align 4
  %220 = load i32, i32* @HOSTAPD_MODE_IEEE80211A, align 4
  store i32 %220, i32* %6, align 4
  br label %303

221:                                              ; preds = %179, %176
  %222 = load i32, i32* %7, align 4
  %223 = icmp uge i32 %222, 5000
  br i1 %223, label %224, label %260

224:                                              ; preds = %221
  %225 = load i32, i32* %7, align 4
  %226 = icmp ule i32 %225, 5700
  br i1 %226, label %227, label %260

227:                                              ; preds = %224
  %228 = load i32, i32* %7, align 4
  %229 = sub i32 %228, 5000
  %230 = urem i32 %229, 5
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %233, i32* %6, align 4
  br label %303

234:                                              ; preds = %227
  %235 = load i32, i32* %12, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %234
  %238 = load i32, i32* %12, align 4
  %239 = load i32*, i32** %10, align 8
  store i32 %238, i32* %239, align 4
  br label %254

240:                                              ; preds = %234
  %241 = load i32, i32* %8, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %245

243:                                              ; preds = %240
  %244 = load i32*, i32** %10, align 8
  store i32 122, i32* %244, align 4
  br label %253

245:                                              ; preds = %240
  %246 = load i32, i32* %8, align 4
  %247 = icmp eq i32 %246, -1
  br i1 %247, label %248, label %250

248:                                              ; preds = %245
  %249 = load i32*, i32** %10, align 8
  store i32 123, i32* %249, align 4
  br label %252

250:                                              ; preds = %245
  %251 = load i32*, i32** %10, align 8
  store i32 121, i32* %251, align 4
  br label %252

252:                                              ; preds = %250, %248
  br label %253

253:                                              ; preds = %252, %243
  br label %254

254:                                              ; preds = %253, %237
  %255 = load i32, i32* %7, align 4
  %256 = sub i32 %255, 5000
  %257 = udiv i32 %256, 5
  %258 = load i32*, i32** %11, align 8
  store i32 %257, i32* %258, align 4
  %259 = load i32, i32* @HOSTAPD_MODE_IEEE80211A, align 4
  store i32 %259, i32* %6, align 4
  br label %303

260:                                              ; preds = %224, %221
  %261 = load i32, i32* %7, align 4
  %262 = icmp uge i32 %261, 5000
  br i1 %262, label %263, label %280

263:                                              ; preds = %260
  %264 = load i32, i32* %7, align 4
  %265 = icmp ult i32 %264, 5900
  br i1 %265, label %266, label %280

266:                                              ; preds = %263
  %267 = load i32, i32* %7, align 4
  %268 = sub i32 %267, 5000
  %269 = urem i32 %268, 5
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %273

271:                                              ; preds = %266
  %272 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %272, i32* %6, align 4
  br label %303

273:                                              ; preds = %266
  %274 = load i32, i32* %7, align 4
  %275 = sub i32 %274, 5000
  %276 = udiv i32 %275, 5
  %277 = load i32*, i32** %11, align 8
  store i32 %276, i32* %277, align 4
  %278 = load i32*, i32** %10, align 8
  store i32 0, i32* %278, align 4
  %279 = load i32, i32* @HOSTAPD_MODE_IEEE80211A, align 4
  store i32 %279, i32* %6, align 4
  br label %303

280:                                              ; preds = %263, %260
  %281 = load i32, i32* %7, align 4
  %282 = icmp uge i32 %281, 58320
  br i1 %282, label %283, label %301

283:                                              ; preds = %280
  %284 = load i32, i32* %7, align 4
  %285 = icmp ule i32 %284, 64800
  br i1 %285, label %286, label %301

286:                                              ; preds = %283
  %287 = load i32, i32* %8, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %292, label %289

289:                                              ; preds = %286
  %290 = load i32, i32* %9, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %294

292:                                              ; preds = %289, %286
  %293 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %293, i32* %6, align 4
  br label %303

294:                                              ; preds = %289
  %295 = load i32, i32* %7, align 4
  %296 = sub i32 %295, 56160
  %297 = udiv i32 %296, 2160
  %298 = load i32*, i32** %11, align 8
  store i32 %297, i32* %298, align 4
  %299 = load i32*, i32** %10, align 8
  store i32 180, i32* %299, align 4
  %300 = load i32, i32* @HOSTAPD_MODE_IEEE80211AD, align 4
  store i32 %300, i32* %6, align 4
  br label %303

301:                                              ; preds = %283, %280
  %302 = load i32, i32* @NUM_HOSTAPD_MODES, align 4
  store i32 %302, i32* %6, align 4
  br label %303

303:                                              ; preds = %301, %294, %292, %273, %271, %254, %232, %215, %187, %170, %148, %131, %109, %85, %83, %68, %66, %51, %36, %31, %18
  %304 = load i32, i32* %6, align 4
  ret i32 %304
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
