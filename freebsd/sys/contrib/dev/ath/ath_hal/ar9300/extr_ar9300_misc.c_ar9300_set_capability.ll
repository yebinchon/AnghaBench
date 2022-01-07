; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_set_capability.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/ath/ath_hal/ar9300/extr_ar9300_misc.c_ar9300_set_capability.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ath_hal_9300 = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }

@AH_FALSE = common dso_local global i32 0, align 4
@AR_PCU_MIC_NEW_LOC_ENA = common dso_local global i32 0, align 4
@AR_PCU_MISC = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i32 0, align 4
@AR_STA_ID1_CRPT_MIC_ENABLE = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT = common dso_local global i32 0, align 4
@AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV = common dso_local global i32 0, align 4
@AR_DIAG_SW = common dso_local global i32 0, align 4
@AR_STA_ID1_MCAST_KSRCH = common dso_local global i32 0, align 4
@AR_PCU_TX_ADD_TSF = common dso_local global i32 0, align 4
@ar9300_set_capability.cmds = internal constant [7 x i32] [i32 140, i32 143, i32 142, i32 141, i32 145, i32 144, i32 139], align 16
@AR_DATABUF_MASK = common dso_local global i32 0, align 4
@AR_DATABUF = common dso_local global i32 0, align 4
@AR_PCU_TXOP_TBTT_LIMIT_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ar9300_set_capability(%struct.ath_hal* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ath_hal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.ath_hal_9300*, align 8
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %16 = call %struct.ath_hal_9300* @AH9300(%struct.ath_hal* %15)
  store %struct.ath_hal_9300* %16, %struct.ath_hal_9300** %12, align 8
  %17 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %18 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %13, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %231 [
    i32 131, label %21
    i32 132, label %52
    i32 137, label %70
    i32 138, label %91
    i32 129, label %105
    i32 134, label %113
    i32 128, label %131
    i32 135, label %156
    i32 133, label %172
    i32 136, label %185
    i32 130, label %216
  ]

21:                                               ; preds = %5
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @AH_FALSE, align 4
  store i32 %27, i32* %6, align 4
  br label %238

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %28
  %32 = load i32, i32* @AR_PCU_MIC_NEW_LOC_ENA, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %35 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %44

38:                                               ; preds = %28
  %39 = load i32, i32* @AR_PCU_MIC_NEW_LOC_ENA, align 4
  %40 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %41 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %31
  %45 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %46 = load i32, i32* @AR_PCU_MISC, align 4
  %47 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %48 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @OS_REG_WRITE(%struct.ath_hal* %45, i32 %46, i32 %49)
  %51 = load i32, i32* @AH_TRUE, align 4
  store i32 %51, i32* %6, align 4
  br label %238

52:                                               ; preds = %5
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32, i32* @AR_STA_ID1_CRPT_MIC_ENABLE, align 4
  %57 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %58 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %68

61:                                               ; preds = %52
  %62 = load i32, i32* @AR_STA_ID1_CRPT_MIC_ENABLE, align 4
  %63 = xor i32 %62, -1
  %64 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %65 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %63
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %61, %55
  %69 = load i32, i32* @AH_TRUE, align 4
  store i32 %69, i32* %6, align 4
  br label %238

70:                                               ; preds = %5
  %71 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %72 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %73 = call i32 @OS_REG_READ(%struct.ath_hal* %71, i32 %72)
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %78 = load i32, i32* %14, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %85

80:                                               ; preds = %70
  %81 = load i32, i32* @AR_PHY_CCK_DETECT_BB_ENABLE_ANT_FAST_DIV, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %14, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %80, %76
  %86 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %87 = load i32, i32* @AR_PHY_CCK_DETECT, align 4
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @OS_REG_WRITE(%struct.ath_hal* %86, i32 %87, i32 %88)
  %90 = load i32, i32* @AH_TRUE, align 4
  store i32 %90, i32* %6, align 4
  br label %238

91:                                               ; preds = %5
  %92 = load i32, i32* %10, align 4
  %93 = and i32 %92, 6
  %94 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %95 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %94)
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %98 = load i32, i32* @AR_DIAG_SW, align 4
  %99 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %100 = call %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal* %99)
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @OS_REG_WRITE(%struct.ath_hal* %97, i32 %98, i32 %102)
  %104 = load i32, i32* @AH_TRUE, align 4
  store i32 %104, i32* %6, align 4
  br label %238

105:                                              ; preds = %5
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  %108 = zext i1 %107 to i32
  %109 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %110 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @AH_TRUE, align 4
  store i32 %112, i32* %6, align 4
  br label %238

113:                                              ; preds = %5
  %114 = load i32, i32* %10, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load i32, i32* @AR_STA_ID1_MCAST_KSRCH, align 4
  %118 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %119 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  br label %129

122:                                              ; preds = %113
  %123 = load i32, i32* @AR_STA_ID1_MCAST_KSRCH, align 4
  %124 = xor i32 %123, -1
  %125 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %126 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, %124
  store i32 %128, i32* %126, align 4
  br label %129

129:                                              ; preds = %122, %116
  %130 = load i32, i32* @AH_TRUE, align 4
  store i32 %130, i32* %6, align 4
  br label %238

131:                                              ; preds = %5
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %131
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* @AR_PCU_TX_ADD_TSF, align 4
  %141 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %142 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = or i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %152

145:                                              ; preds = %136
  %146 = load i32, i32* @AR_PCU_TX_ADD_TSF, align 4
  %147 = xor i32 %146, -1
  %148 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %149 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, %147
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %145, %139
  %153 = load i32, i32* @AH_TRUE, align 4
  store i32 %153, i32* %6, align 4
  br label %238

154:                                              ; preds = %131
  %155 = load i32, i32* @AH_FALSE, align 4
  store i32 %155, i32* %6, align 4
  br label %238

156:                                              ; preds = %5
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = icmp ult i64 %158, 7
  br i1 %159, label %160, label %168

160:                                              ; preds = %156
  %161 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [7 x i32], [7 x i32]* @ar9300_set_capability.cmds, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @ar9300_ani_control(%struct.ath_hal* %161, i32 %165, i32 %166)
  br label %170

168:                                              ; preds = %156
  %169 = load i32, i32* @AH_FALSE, align 4
  br label %170

170:                                              ; preds = %168, %160
  %171 = phi i32 [ %167, %160 ], [ %169, %168 ]
  store i32 %171, i32* %6, align 4
  br label %238

172:                                              ; preds = %5
  %173 = load i32, i32* %10, align 4
  %174 = load i32, i32* @AR_DATABUF_MASK, align 4
  %175 = and i32 %173, %174
  %176 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %177 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %179 = load i32, i32* @AR_DATABUF, align 4
  %180 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %181 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @OS_REG_WRITE(%struct.ath_hal* %178, i32 %179, i32 %182)
  %184 = load i32, i32* @AH_TRUE, align 4
  store i32 %184, i32* %6, align 4
  br label %238

185:                                              ; preds = %5
  %186 = load i32, i32* %9, align 4
  %187 = icmp ne i32 %186, 1
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load i32, i32* @AH_FALSE, align 4
  store i32 %189, i32* %6, align 4
  br label %238

190:                                              ; preds = %185
  %191 = load i32, i32* %10, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %203

193:                                              ; preds = %190
  %194 = load i32, i32* @AR_PCU_TXOP_TBTT_LIMIT_ENA, align 4
  %195 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %196 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 4
  %199 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %200 = load i32, i32* @AR_PCU_MISC, align 4
  %201 = load i32, i32* @AR_PCU_TXOP_TBTT_LIMIT_ENA, align 4
  %202 = call i32 @OS_REG_SET_BIT(%struct.ath_hal* %199, i32 %200, i32 %201)
  br label %214

203:                                              ; preds = %190
  %204 = load i32, i32* @AR_PCU_TXOP_TBTT_LIMIT_ENA, align 4
  %205 = xor i32 %204, -1
  %206 = load %struct.ath_hal_9300*, %struct.ath_hal_9300** %12, align 8
  %207 = getelementptr inbounds %struct.ath_hal_9300, %struct.ath_hal_9300* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = and i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %211 = load i32, i32* @AR_PCU_MISC, align 4
  %212 = load i32, i32* @AR_PCU_TXOP_TBTT_LIMIT_ENA, align 4
  %213 = call i32 @OS_REG_CLR_BIT(%struct.ath_hal* %210, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %203, %193
  %215 = load i32, i32* @AH_TRUE, align 4
  store i32 %215, i32* %6, align 4
  br label %238

216:                                              ; preds = %5
  %217 = load i32, i32* %9, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %216
  %220 = load i32, i32* @AH_TRUE, align 4
  store i32 %220, i32* %6, align 4
  br label %238

221:                                              ; preds = %216
  %222 = load i32, i32* %9, align 4
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %226 = load i32, i32* %10, align 4
  %227 = call i32 @ar9300_update_loc_ctl_reg(%struct.ath_hal* %225, i32 %226)
  %228 = load i32, i32* @AH_TRUE, align 4
  store i32 %228, i32* %6, align 4
  br label %238

229:                                              ; preds = %221
  %230 = load i32, i32* @AH_FALSE, align 4
  store i32 %230, i32* %6, align 4
  br label %238

231:                                              ; preds = %5
  %232 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  %233 = load i32, i32* %8, align 4
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* %10, align 4
  %236 = load i32*, i32** %11, align 8
  %237 = call i32 @ath_hal_setcapability(%struct.ath_hal* %232, i32 %233, i32 %234, i32 %235, i32* %236)
  store i32 %237, i32* %6, align 4
  br label %238

238:                                              ; preds = %231, %229, %224, %219, %214, %188, %172, %170, %154, %152, %129, %105, %91, %85, %68, %44, %26
  %239 = load i32, i32* %6, align 4
  ret i32 %239
}

declare dso_local %struct.ath_hal_9300* @AH9300(%struct.ath_hal*) #1

declare dso_local %struct.TYPE_6__* @AH_PRIVATE(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_READ(%struct.ath_hal*, i32) #1

declare dso_local i32 @ar9300_ani_control(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_SET_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @OS_REG_CLR_BIT(%struct.ath_hal*, i32, i32) #1

declare dso_local i32 @ar9300_update_loc_ctl_reg(%struct.ath_hal*, i32) #1

declare dso_local i32 @ath_hal_setcapability(%struct.ath_hal*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
