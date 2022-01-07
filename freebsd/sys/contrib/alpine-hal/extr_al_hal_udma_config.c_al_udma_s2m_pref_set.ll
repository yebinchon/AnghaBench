; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_pref_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_pref_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.al_udma_s2m_desc_pref_conf = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i32 }

@UDMA_S2M_RD_DESC_PREF_CFG_1_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@SRR = common dso_local global i64 0, align 8
@UDMA_S2M_RD_DESC_PREF_CFG_2_PREF_FORCE_RR = common dso_local global i32 0, align 4
@STRICT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [71 x i8] c"udma [%s]: requested descriptor preferch arbiter mode (%d) is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@UDMA_S2M_RD_DESC_PREF_CFG_2_Q_PROMOTION = common dso_local global i32 0, align 4
@UDMA_S2M_RD_DESC_PREF_CFG_2_FORCE_PROMOTION = common dso_local global i32 0, align 4
@UDMA_S2M_RD_DESC_PREF_CFG_2_EN_PREF_PREDICTION = common dso_local global i32 0, align 4
@UDMA_S2M_RD_DESC_PREF_CFG_2_PROMOTION_TH_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_RD_DESC_PREF_CFG_2_PROMOTION_TH_SHIFT = common dso_local global i32 0, align 4
@UDMA_S2M_RD_DESC_PREF_CFG_3_PREF_THR_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_RD_DESC_PREF_CFG_3_PREF_THR_SHIFT = common dso_local global i32 0, align 4
@UDMA_S2M_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK = common dso_local global i32 0, align 4
@UDMA_S2M_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_SHIFT = common dso_local global i32 0, align 4
@UDMA_S2M_RD_DESC_PREF_CFG_4_A_FULL_THR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_s2m_pref_set(%struct.al_udma* %0, %struct.al_udma_s2m_desc_pref_conf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_udma*, align 8
  %5 = alloca %struct.al_udma_s2m_desc_pref_conf*, align 8
  %6 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %4, align 8
  store %struct.al_udma_s2m_desc_pref_conf* %1, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %7 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %8 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 3
  %13 = call i32 @al_reg_read32(i32* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_1_FIFO_DEPTH_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %6, align 4
  %18 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %19 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %6, align 4
  %23 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %24 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 3
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @al_reg_write32(i32* %28, i32 %29)
  %31 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %32 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = call i32 @al_reg_read32(i32* %36)
  store i32 %37, i32* %6, align 4
  %38 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %39 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SRR, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %2
  %44 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_PREF_FORCE_RR, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %69

47:                                               ; preds = %2
  %48 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %49 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @STRICT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_PREF_FORCE_RR, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %6, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %6, align 4
  br label %68

58:                                               ; preds = %47
  %59 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %60 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %63 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @al_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %61, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %214

68:                                               ; preds = %53
  br label %69

69:                                               ; preds = %68, %43
  %70 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %71 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AL_TRUE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69
  %76 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_Q_PROMOTION, align 4
  %77 = load i32, i32* %6, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %6, align 4
  br label %84

79:                                               ; preds = %69
  %80 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_Q_PROMOTION, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %75
  %85 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %86 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AL_TRUE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_FORCE_PROMOTION, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  br label %99

94:                                               ; preds = %84
  %95 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_FORCE_PROMOTION, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %6, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %94, %90
  %100 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %101 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @AL_TRUE, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_EN_PREF_PREDICTION, align 4
  %107 = load i32, i32* %6, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %114

109:                                              ; preds = %99
  %110 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_EN_PREF_PREDICTION, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %105
  %115 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_PROMOTION_TH_MASK, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %120 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_PROMOTION_TH_SHIFT, align 4
  %123 = shl i32 %121, %122
  %124 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_2_PROMOTION_TH_MASK, align 4
  %125 = and i32 %123, %124
  %126 = load i32, i32* %6, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %129 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @al_reg_write32(i32* %133, i32 %134)
  %136 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %137 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %136, i32 0, i32 0
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = call i32 @al_reg_read32(i32* %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_3_PREF_THR_MASK, align 4
  %144 = xor i32 %143, -1
  %145 = load i32, i32* %6, align 4
  %146 = and i32 %145, %144
  store i32 %146, i32* %6, align 4
  %147 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %148 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %147, i32 0, i32 6
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_3_PREF_THR_SHIFT, align 4
  %151 = shl i32 %149, %150
  %152 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_3_PREF_THR_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* %6, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %6, align 4
  %156 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR_MASK, align 4
  %157 = xor i32 %156, -1
  %158 = load i32, i32* %6, align 4
  %159 = and i32 %158, %157
  store i32 %159, i32* %6, align 4
  %160 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %161 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %160, i32 0, i32 7
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_3_MIN_BURST_BELOW_THR_MASK, align 4
  %164 = and i32 %162, %163
  %165 = load i32, i32* %6, align 4
  %166 = or i32 %165, %164
  store i32 %166, i32* %6, align 4
  %167 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK, align 4
  %168 = xor i32 %167, -1
  %169 = load i32, i32* %6, align 4
  %170 = and i32 %169, %168
  store i32 %170, i32* %6, align 4
  %171 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %172 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %171, i32 0, i32 8
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_SHIFT, align 4
  %175 = shl i32 %173, %174
  %176 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK, align 4
  %177 = and i32 %175, %176
  %178 = load i32, i32* %6, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %6, align 4
  %180 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %181 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %180, i32 0, i32 0
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = load i32, i32* %6, align 4
  %187 = call i32 @al_reg_write32(i32* %185, i32 %186)
  %188 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %189 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %188, i32 0, i32 0
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %192, i32 0, i32 0
  %194 = call i32 @al_reg_read32(i32* %193)
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_4_A_FULL_THR_MASK, align 4
  %196 = xor i32 %195, -1
  %197 = load i32, i32* %6, align 4
  %198 = and i32 %197, %196
  store i32 %198, i32* %6, align 4
  %199 = load %struct.al_udma_s2m_desc_pref_conf*, %struct.al_udma_s2m_desc_pref_conf** %5, align 8
  %200 = getelementptr inbounds %struct.al_udma_s2m_desc_pref_conf, %struct.al_udma_s2m_desc_pref_conf* %199, i32 0, i32 9
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @UDMA_S2M_RD_DESC_PREF_CFG_4_A_FULL_THR_MASK, align 4
  %203 = and i32 %201, %202
  %204 = load i32, i32* %6, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %6, align 4
  %206 = load %struct.al_udma*, %struct.al_udma** %4, align 8
  %207 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %206, i32 0, i32 0
  %208 = load %struct.TYPE_6__*, %struct.TYPE_6__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @al_reg_write32(i32* %211, i32 %212)
  store i32 0, i32* %3, align 4
  br label %214

214:                                              ; preds = %114, %58
  %215 = load i32, i32* %3, align 4
  ret i32 %215
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

declare dso_local i32 @al_err(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
