; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_get_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_get_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9300_ani_state = type { i32, i32, i32, i32 }
%struct.ath_hal = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ath_hal_9300 = type { i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }

@HAL_OK = common dso_local global i32 0, align 4
@HAL_ENOTSUPP = common dso_local global i32 0, align 4
@AR_STA_ID1_CRPT_MIC_ENABLE = common dso_local global i32 0, align 4
@HAL_ENXIO = common dso_local global i32 0, align 4
@AR_PCU_MIC_NEW_LOC_ENA = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV = common dso_local global i32 0, align 4
@HAL_EINVAL = common dso_local global i32 0, align 4
@AR_STA_ID1 = common dso_local global i32 0, align 4
@AR_STA_ID1_ADHOC = common dso_local global i32 0, align 4
@AR_STA_ID1_MCAST_KSRCH = common dso_local global i32 0, align 4
@AR_PCU_TX_ADD_TSF = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@EEP_OL_PWRCTRL = common dso_local global i32 0, align 4
@AR_SREV_VERSION_OSPREY = common dso_local global i32 0, align 4
@AR_SREV_REVISION_AR9580_10 = common dso_local global i32 0, align 4
@AR_ENT_OTP_MIN_PKT_SIZE_DISABLE = common dso_local global i32 0, align 4
@AH_ENT_RTSCTS_DELIM_WAR = common dso_local global i32 0, align 4
@HAL_PROCESS_ANI = common dso_local global i32 0, align 4
@AH_NULL = common dso_local global %struct.ar9300_ani_state* null, align 8
@AR_PCU_TXOP_TBTT_LIMIT_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_get_capability(%struct.ath_hal* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath_hal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ath_hal_9300*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.ar9300_ani_state*, align 8
  store %struct.ath_hal* %0, %struct.ath_hal** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %14 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %13)
  store %struct.ath_hal_9300* %14, %struct.ath_hal_9300** %10, align 8
  %15 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %16 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %15)
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %11, align 8
  %18 = load i32, i32* %7, align 4
  switch i32 %18, label %455 [
    i32 173, label %19
    i32 142, label %25
    i32 141, label %44
    i32 134, label %72
    i32 149, label %74
    i32 171, label %76
    i32 139, label %95
    i32 148, label %113
    i32 153, label %115
    i32 136, label %143
    i32 146, label %171
    i32 180, label %182
    i32 175, label %184
    i32 177, label %186
    i32 174, label %188
    i32 156, label %190
    i32 145, label %192
    i32 158, label %204
    i32 169, label %210
    i32 170, label %212
    i32 137, label %242
    i32 152, label %272
    i32 172, label %283
    i32 176, label %285
    i32 147, label %287
    i32 166, label %305
    i32 157, label %336
    i32 168, label %338
    i32 151, label %344
    i32 150, label %356
    i32 143, label %362
    i32 165, label %364
    i32 167, label %418
    i32 140, label %440
  ]

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %23 [
    i32 133, label %21
    i32 132, label %21
    i32 129, label %21
    i32 128, label %21
    i32 130, label %21
    i32 131, label %21
  ]

21:                                               ; preds = %19, %19, %19, %19, %19, %19
  %22 = load i32, i32* @HAL_OK, align 4
  store i32 %22, i32* %5, align 4
  br label %461

23:                                               ; preds = %19
  %24 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %24, i32* %5, align 4
  br label %461

25:                                               ; preds = %4
  %26 = load i32, i32* %8, align 4
  switch i32 %26, label %42 [
    i32 0, label %27
    i32 1, label %29
  ]

27:                                               ; preds = %25
  %28 = load i32, i32* @HAL_OK, align 4
  store i32 %28, i32* %5, align 4
  br label %461

29:                                               ; preds = %25
  %30 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %31 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AR_STA_ID1_CRPT_MIC_ENABLE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @HAL_OK, align 4
  br label %40

38:                                               ; preds = %29
  %39 = load i32, i32* @HAL_ENXIO, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  store i32 %41, i32* %5, align 4
  br label %461

42:                                               ; preds = %25
  %43 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %43, i32* %5, align 4
  br label %461

44:                                               ; preds = %4
  %45 = load i32, i32* %8, align 4
  switch i32 %45, label %70 [
    i32 0, label %46
    i32 1, label %57
  ]

46:                                               ; preds = %44
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 11
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @HAL_ENXIO, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @HAL_OK, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %5, align 4
  br label %461

57:                                               ; preds = %44
  %58 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %59 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @AR_PCU_MIC_NEW_LOC_ENA, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* @HAL_ENXIO, align 4
  br label %68

66:                                               ; preds = %57
  %67 = load i32, i32* @HAL_OK, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = phi i32 [ %65, %64 ], [ %67, %66 ]
  store i32 %69, i32* %5, align 4
  br label %461

70:                                               ; preds = %44
  %71 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %71, i32* %5, align 4
  br label %461

72:                                               ; preds = %4
  %73 = load i32, i32* @HAL_OK, align 4
  store i32 %73, i32* %5, align 4
  br label %461

74:                                               ; preds = %4
  %75 = load i32, i32* @HAL_OK, align 4
  store i32 %75, i32* %5, align 4
  br label %461

76:                                               ; preds = %4
  %77 = load i32, i32* %8, align 4
  switch i32 %77, label %93 [
    i32 0, label %78
    i32 1, label %80
  ]

78:                                               ; preds = %76
  %79 = load i32, i32* @HAL_OK, align 4
  store i32 %79, i32* %5, align 4
  br label %461

80:                                               ; preds = %76
  %81 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %82 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %83 = call i32 @OS_REG_READ(%struct.ath_hal* %81, i32 %82)
  %84 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* @HAL_OK, align 4
  br label %91

89:                                               ; preds = %80
  %90 = load i32, i32* @HAL_ENXIO, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %5, align 4
  br label %461

93:                                               ; preds = %76
  %94 = load i32, i32* @HAL_EINVAL, align 4
  store i32 %94, i32* %5, align 4
  br label %461

95:                                               ; preds = %4
  %96 = load i32, i32* %8, align 4
  switch i32 %96, label %111 [
    i32 0, label %97
    i32 1, label %99
  ]

97:                                               ; preds = %95
  %98 = load i32, i32* @HAL_OK, align 4
  store i32 %98, i32* %5, align 4
  br label %461

99:                                               ; preds = %95
  %100 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %101 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %99
  %106 = load i32, i32* @HAL_OK, align 4
  br label %109

107:                                              ; preds = %99
  %108 = load i32, i32* @HAL_ENXIO, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %5, align 4
  br label %461

111:                                              ; preds = %95
  %112 = load i32, i32* @HAL_OK, align 4
  store i32 %112, i32* %5, align 4
  br label %461

113:                                              ; preds = %4
  %114 = load i32, i32* @HAL_OK, align 4
  store i32 %114, i32* %5, align 4
  br label %461

115:                                              ; preds = %4
  %116 = load i32, i32* %8, align 4
  switch i32 %116, label %141 [
    i32 0, label %117
    i32 1, label %119
  ]

117:                                              ; preds = %115
  %118 = load i32, i32* @HAL_OK, align 4
  store i32 %118, i32* %5, align 4
  br label %461

119:                                              ; preds = %115
  %120 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %121 = load i32, i32* @AR_STA_ID1, align 4
  %122 = call i32 @OS_REG_READ(%struct.ath_hal* %120, i32 %121)
  %123 = load i32, i32* @AR_STA_ID1_ADHOC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @HAL_ENXIO, align 4
  store i32 %127, i32* %5, align 4
  br label %461

128:                                              ; preds = %119
  %129 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %130 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AR_STA_ID1_MCAST_KSRCH, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = load i32, i32* @HAL_OK, align 4
  br label %139

137:                                              ; preds = %128
  %138 = load i32, i32* @HAL_ENXIO, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  store i32 %140, i32* %5, align 4
  br label %461

141:                                              ; preds = %115
  %142 = load i32, i32* @HAL_EINVAL, align 4
  store i32 %142, i32* %5, align 4
  br label %461

143:                                              ; preds = %4
  %144 = load i32, i32* %8, align 4
  switch i32 %144, label %169 [
    i32 0, label %145
    i32 1, label %156
  ]

145:                                              ; preds = %143
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 10
  %148 = load i32, i32* %147, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* @HAL_OK, align 4
  br label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  store i32 %155, i32* %5, align 4
  br label %461

156:                                              ; preds = %143
  %157 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %158 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @AR_PCU_TX_ADD_TSF, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %156
  %164 = load i32, i32* @HAL_OK, align 4
  br label %167

165:                                              ; preds = %156
  %166 = load i32, i32* @HAL_ENXIO, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = phi i32 [ %164, %163 ], [ %166, %165 ]
  store i32 %168, i32* %5, align 4
  br label %461

169:                                              ; preds = %143
  %170 = load i32, i32* @HAL_EINVAL, align 4
  store i32 %170, i32* %5, align 4
  br label %461

171:                                              ; preds = %4
  %172 = load i32, i32* %8, align 4
  %173 = icmp eq i32 %172, 3
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %175, i32* %5, align 4
  br label %461

176:                                              ; preds = %171
  %177 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %178 = load i32, i32* %7, align 4
  %179 = load i32, i32* %8, align 4
  %180 = load i32*, i32** %9, align 8
  %181 = call i32 @ath_hal_getcapability(%struct.ath_hal* %177, i32 %178, i32 %179, i32* %180)
  store i32 %181, i32* %5, align 4
  br label %461

182:                                              ; preds = %4
  %183 = load i32, i32* @HAL_OK, align 4
  store i32 %183, i32* %5, align 4
  br label %461

184:                                              ; preds = %4
  %185 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %185, i32* %5, align 4
  br label %461

186:                                              ; preds = %4
  %187 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %187, i32* %5, align 4
  br label %461

188:                                              ; preds = %4
  %189 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %189, i32* %5, align 4
  br label %461

190:                                              ; preds = %4
  %191 = load i32, i32* @HAL_OK, align 4
  store i32 %191, i32* %5, align 4
  br label %461

192:                                              ; preds = %4
  %193 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %194 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @AH_TRUE, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %192
  %199 = load i32, i32* @HAL_OK, align 4
  br label %202

200:                                              ; preds = %192
  %201 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  store i32 %203, i32* %5, align 4
  br label %461

204:                                              ; preds = %4
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 4
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %9, align 8
  store i32 %207, i32* %208, align 4
  %209 = load i32, i32* @HAL_OK, align 4
  store i32 %209, i32* %5, align 4
  br label %461

210:                                              ; preds = %4
  %211 = load i32, i32* @HAL_OK, align 4
  store i32 %211, i32* %5, align 4
  br label %461

212:                                              ; preds = %4
  %213 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %214 = call i32 @AR_SREV_HORNET(%struct.ath_hal* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %236, label %216

216:                                              ; preds = %212
  %217 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %218 = call i32 @AR_SREV_POSEIDON(%struct.ath_hal* %217)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %236, label %220

220:                                              ; preds = %216
  %221 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %222 = call i32 @AR_SREV_APHRODITE(%struct.ath_hal* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %236, label %224

224:                                              ; preds = %220
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 3
  %229 = icmp ne i32 %228, 3
  br i1 %229, label %236, label %230

230:                                              ; preds = %224
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 6
  %233 = load i32, i32* %232, align 4
  %234 = and i32 %233, 3
  %235 = icmp ne i32 %234, 3
  br i1 %235, label %236, label %238

236:                                              ; preds = %230, %224, %220, %216, %212
  %237 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %240

238:                                              ; preds = %230
  %239 = load i32, i32* @HAL_OK, align 4
  br label %240

240:                                              ; preds = %238, %236
  %241 = phi i32 [ %237, %236 ], [ %239, %238 ]
  store i32 %241, i32* %5, align 4
  br label %461

242:                                              ; preds = %4
  %243 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %244 = call i32 @AR_SREV_HORNET(%struct.ath_hal* %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %266, label %246

246:                                              ; preds = %242
  %247 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %248 = call i32 @AR_SREV_POSEIDON(%struct.ath_hal* %247)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %266, label %250

250:                                              ; preds = %246
  %251 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %252 = call i32 @AR_SREV_APHRODITE(%struct.ath_hal* %251)
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %266, label %254

254:                                              ; preds = %250
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i32 0, i32 5
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 7
  %259 = icmp ne i32 %258, 7
  br i1 %259, label %266, label %260

260:                                              ; preds = %254
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, 7
  %265 = icmp ne i32 %264, 7
  br i1 %265, label %266, label %268

266:                                              ; preds = %260, %254, %250, %246, %242
  %267 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %270

268:                                              ; preds = %260
  %269 = load i32, i32* @HAL_OK, align 4
  br label %270

270:                                              ; preds = %268, %266
  %271 = phi i32 [ %267, %266 ], [ %269, %268 ]
  store i32 %271, i32* %5, align 4
  br label %461

272:                                              ; preds = %4
  %273 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %274 = load i32, i32* @EEP_OL_PWRCTRL, align 4
  %275 = call i32 @ar9300_eeprom_get(%struct.ath_hal_9300* %273, i32 %274)
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %279

277:                                              ; preds = %272
  %278 = load i32, i32* @HAL_OK, align 4
  br label %281

279:                                              ; preds = %272
  %280 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %281

281:                                              ; preds = %279, %277
  %282 = phi i32 [ %278, %277 ], [ %280, %279 ]
  store i32 %282, i32* %5, align 4
  br label %461

283:                                              ; preds = %4
  %284 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %284, i32* %5, align 4
  br label %461

285:                                              ; preds = %4
  %286 = load i32, i32* @HAL_OK, align 4
  store i32 %286, i32* %5, align 4
  br label %461

287:                                              ; preds = %4
  %288 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %289 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %288)
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @AR_SREV_VERSION_OSPREY, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %303

294:                                              ; preds = %287
  %295 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %296 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %295)
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @AR_SREV_REVISION_AR9580_10, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %294
  %302 = load i32, i32* @HAL_OK, align 4
  store i32 %302, i32* %5, align 4
  br label %461

303:                                              ; preds = %294, %287
  %304 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %304, i32* %5, align 4
  br label %461

305:                                              ; preds = %4
  %306 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %307 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = ashr i32 %308, 16
  %310 = load i32*, i32** %9, align 8
  store i32 %309, i32* %310, align 4
  %311 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %312 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* @AR_ENT_OTP_MIN_PKT_SIZE_DISABLE, align 4
  %315 = and i32 %313, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %334

317:                                              ; preds = %305
  %318 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %319 = call i32 @AR_SREV_AR9580_10_OR_LATER(%struct.ath_hal* %318)
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %334, label %321

321:                                              ; preds = %317
  %322 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %323 = call i32 @AR_SREV_WASP(%struct.ath_hal* %322)
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %329

325:                                              ; preds = %321
  %326 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %327 = call i32 @AR_SREV_WASP_10(%struct.ath_hal* %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %325, %321
  %330 = load i32, i32* @AH_ENT_RTSCTS_DELIM_WAR, align 4
  %331 = load i32*, i32** %9, align 8
  %332 = load i32, i32* %331, align 4
  %333 = or i32 %332, %330
  store i32 %333, i32* %331, align 4
  br label %334

334:                                              ; preds = %329, %325, %317, %305
  %335 = load i32, i32* @HAL_OK, align 4
  store i32 %335, i32* %5, align 4
  br label %461

336:                                              ; preds = %4
  %337 = load i32, i32* @HAL_OK, align 4
  store i32 %337, i32* %5, align 4
  br label %461

338:                                              ; preds = %4
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %340 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %339, i32 0, i32 7
  %341 = load i32, i32* %340, align 4
  %342 = load i32*, i32** %9, align 8
  store i32 %341, i32* %342, align 4
  %343 = load i32, i32* @HAL_OK, align 4
  store i32 %343, i32* %5, align 4
  br label %461

344:                                              ; preds = %4
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 9
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* @AH_TRUE, align 4
  %349 = icmp eq i32 %347, %348
  br i1 %349, label %350, label %352

350:                                              ; preds = %344
  %351 = load i32, i32* @HAL_OK, align 4
  br label %354

352:                                              ; preds = %344
  %353 = load i32, i32* @HAL_ENOTSUPP, align 4
  br label %354

354:                                              ; preds = %352, %350
  %355 = phi i32 [ %351, %350 ], [ %353, %352 ]
  store i32 %355, i32* %5, align 4
  br label %461

356:                                              ; preds = %4
  %357 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %358 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %357, i32 0, i32 8
  %359 = load i32, i32* %358, align 4
  %360 = load i32*, i32** %9, align 8
  store i32 %359, i32* %360, align 4
  %361 = load i32, i32* @HAL_OK, align 4
  store i32 %361, i32* %5, align 4
  br label %461

362:                                              ; preds = %4
  %363 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %363, i32* %5, align 4
  br label %461

364:                                              ; preds = %4
  %365 = load i32, i32* %8, align 4
  switch i32 %365, label %416 [
    i32 160, label %366
    i32 164, label %368
    i32 162, label %381
    i32 161, label %381
    i32 163, label %381
    i32 159, label %381
  ]

366:                                              ; preds = %364
  %367 = load i32, i32* @HAL_OK, align 4
  store i32 %367, i32* %5, align 4
  br label %461

368:                                              ; preds = %364
  %369 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %370 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @HAL_PROCESS_ANI, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %368
  %376 = load i32, i32* @HAL_OK, align 4
  br label %379

377:                                              ; preds = %368
  %378 = load i32, i32* @HAL_ENXIO, align 4
  br label %379

379:                                              ; preds = %377, %375
  %380 = phi i32 [ %376, %375 ], [ %378, %377 ]
  store i32 %380, i32* %5, align 4
  br label %461

381:                                              ; preds = %364, %364, %364, %364
  %382 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %383 = call %struct.ar9300_ani_state* @ar9300_ani_get_current_state(%struct.ath_hal* %382)
  store %struct.ar9300_ani_state* %383, %struct.ar9300_ani_state** %12, align 8
  %384 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %12, align 8
  %385 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** @AH_NULL, align 8
  %386 = icmp eq %struct.ar9300_ani_state* %384, %385
  br i1 %386, label %387, label %389

387:                                              ; preds = %381
  %388 = load i32, i32* @HAL_ENXIO, align 4
  store i32 %388, i32* %5, align 4
  br label %461

389:                                              ; preds = %381
  %390 = load i32, i32* %8, align 4
  switch i32 %390, label %414 [
    i32 2, label %391
    i32 3, label %396
    i32 5, label %404
    i32 6, label %409
  ]

391:                                              ; preds = %389
  %392 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %12, align 8
  %393 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 4
  %395 = load i32*, i32** %9, align 8
  store i32 %394, i32* %395, align 4
  br label %414

396:                                              ; preds = %389
  %397 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %12, align 8
  %398 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %397, i32 0, i32 3
  %399 = load i32, i32* %398, align 4
  %400 = icmp ne i32 %399, 0
  %401 = xor i1 %400, true
  %402 = zext i1 %401 to i32
  %403 = load i32*, i32** %9, align 8
  store i32 %402, i32* %403, align 4
  br label %414

404:                                              ; preds = %389
  %405 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %12, align 8
  %406 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load i32*, i32** %9, align 8
  store i32 %407, i32* %408, align 4
  br label %414

409:                                              ; preds = %389
  %410 = load %struct.ar9300_ani_state*, %struct.ar9300_ani_state** %12, align 8
  %411 = getelementptr inbounds %struct.ar9300_ani_state, %struct.ar9300_ani_state* %410, i32 0, i32 2
  %412 = load i32, i32* %411, align 4
  %413 = load i32*, i32** %9, align 8
  store i32 %412, i32* %413, align 4
  br label %414

414:                                              ; preds = %389, %409, %404, %396, %391
  %415 = load i32, i32* @HAL_OK, align 4
  store i32 %415, i32* %5, align 4
  br label %461

416:                                              ; preds = %364
  %417 = load i32, i32* @HAL_EINVAL, align 4
  store i32 %417, i32* %5, align 4
  br label %461

418:                                              ; preds = %4
  %419 = load i32, i32* %8, align 4
  %420 = icmp eq i32 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %418
  %422 = load i32, i32* @HAL_OK, align 4
  store i32 %422, i32* %5, align 4
  br label %461

423:                                              ; preds = %418
  %424 = load i32, i32* %8, align 4
  %425 = icmp ne i32 %424, 1
  br i1 %425, label %426, label %428

426:                                              ; preds = %423
  %427 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %427, i32* %5, align 4
  br label %461

428:                                              ; preds = %423
  %429 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %10, align 8
  %430 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = load i32, i32* @AR_PCU_TXOP_TBTT_LIMIT_ENA, align 4
  %433 = and i32 %431, %432
  %434 = icmp ne i32 %433, 0
  %435 = xor i1 %434, true
  %436 = xor i1 %435, true
  %437 = zext i1 %436 to i32
  %438 = load i32*, i32** %9, align 8
  store i32 %437, i32* %438, align 4
  %439 = load i32, i32* @HAL_OK, align 4
  store i32 %439, i32* %5, align 4
  br label %461

440:                                              ; preds = %4
  %441 = load i32, i32* %8, align 4
  %442 = icmp eq i32 %441, 0
  br i1 %442, label %443, label %445

443:                                              ; preds = %440
  %444 = load i32, i32* @HAL_OK, align 4
  store i32 %444, i32* %5, align 4
  br label %461

445:                                              ; preds = %440
  %446 = load i32, i32* %8, align 4
  %447 = icmp eq i32 %446, 2
  br i1 %447, label %448, label %453

448:                                              ; preds = %445
  %449 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %450 = call i32 @ar9300_read_loc_timer(%struct.ath_hal* %449)
  %451 = load i32*, i32** %9, align 8
  store i32 %450, i32* %451, align 4
  %452 = load i32, i32* @HAL_OK, align 4
  store i32 %452, i32* %5, align 4
  br label %461

453:                                              ; preds = %445
  %454 = load i32, i32* @HAL_ENOTSUPP, align 4
  store i32 %454, i32* %5, align 4
  br label %461

455:                                              ; preds = %4
  %456 = load %struct.ath_hal*, %struct.ath_hal** %6, align 8
  %457 = load i32, i32* %7, align 4
  %458 = load i32, i32* %8, align 4
  %459 = load i32*, i32** %9, align 8
  %460 = call i32 @ath_hal_getcapability(%struct.ath_hal* %456, i32 %457, i32 %458, i32* %459)
  store i32 %460, i32* %5, align 4
  br label %461

461:                                              ; preds = %455, %453, %448, %443, %428, %426, %421, %416, %414, %387, %379, %366, %362, %356, %354, %338, %336, %334, %303, %301, %285, %283, %281, %270, %240, %210, %204, %202, %190, %188, %186, %184, %182, %176, %174, %169, %167, %154, %141, %139, %126, %117, %113, %111, %109, %97, %93, %91, %78, %74, %72, %70, %68, %55, %42, %40, %27, %23, %21
  %462 = load i32, i32* %5, align 4
  ret i32 %462
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @ath_hal_getcapability(%struct.ath_hal*, i32, i32, i32*) #1

declare dso_local i32 @AR_SREV_HORNET(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_POSEIDON(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_APHRODITE(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_eeprom_get(%struct.ath_hal_9300*, i32) #1

declare dso_local i32 @AR_SREV_AR9580_10_OR_LATER(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_WASP(%struct.ath_hal*) #1

declare dso_local i32 @AR_SREV_WASP_10(%struct.ath_hal*) #1

declare dso_local %struct.ar9300_ani_state* @ar9300_ani_get_current_state(%struct.ath_hal*) #1

declare dso_local i32 @ar9300_read_loc_timer(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
