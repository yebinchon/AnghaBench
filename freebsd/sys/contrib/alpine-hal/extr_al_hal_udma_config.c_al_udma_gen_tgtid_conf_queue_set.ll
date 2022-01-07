; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_gen_tgtid_conf_queue_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_gen_tgtid_conf_queue_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_regs = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }
%struct.al_udma_gen_tgtid_conf = type { %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64, i64, i64, i64 }
%struct.TYPE_9__ = type { i64, i64, i64, i64 }

@DMA_MAX_Q = common dso_local global i64 0, align 8
@UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_DESC_EN_SHIFT = common dso_local global i64 0, align 8
@UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_QUEUE_EN_SHIFT = common dso_local global i64 0, align 8
@UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_DESC_EN_SHIFT = common dso_local global i64 0, align 8
@UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_QUEUE_EN_SHIFT = common dso_local global i64 0, align 8
@AL_FALSE = common dso_local global i32 0, align 4
@AL_UDMA_REV_ID_REV2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_udma_gen_tgtid_conf_queue_set(%struct.unit_regs* %0, %struct.al_udma_gen_tgtid_conf* %1, i64 %2) #0 {
  %4 = alloca %struct.unit_regs*, align 8
  %5 = alloca %struct.al_udma_gen_tgtid_conf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  store %struct.unit_regs* %0, %struct.unit_regs** %4, align 8
  store %struct.al_udma_gen_tgtid_conf* %1, %struct.al_udma_gen_tgtid_conf** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @DMA_MAX_Q, align 8
  %14 = icmp ult i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @al_assert(i32 %15)
  %17 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %18 = call i32 @al_udma_get_revision(%struct.unit_regs* %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %20 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %24 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %23, i32 0, i32 1
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = shl i64 %29, %30
  %32 = load i64, i64* @UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_DESC_EN_SHIFT, align 8
  %33 = shl i64 %31, %32
  %34 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %35 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = shl i64 %40, %41
  %43 = load i64, i64* @UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_DESC_EN_SHIFT, align 8
  %44 = shl i64 %42, %43
  %45 = call i32 @al_reg_write32_masked(i64* %22, i64 %33, i64 %44)
  %46 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %47 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %51 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %50, i32 0, i32 1
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = shl i64 %56, %57
  %59 = load i64, i64* @UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_QUEUE_EN_SHIFT, align 8
  %60 = shl i64 %58, %59
  %61 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %62 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = shl i64 %67, %68
  %70 = load i64, i64* @UDMA_GEN_TGTID_CFG_TGTID_0_TX_Q_TGTID_QUEUE_EN_SHIFT, align 8
  %71 = shl i64 %69, %70
  %72 = call i32 @al_reg_write32_masked(i64* %49, i64 %60, i64 %71)
  %73 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %74 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %78 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = load i64, i64* %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = shl i64 %83, %84
  %86 = load i64, i64* @UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_DESC_EN_SHIFT, align 8
  %87 = shl i64 %85, %86
  %88 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %89 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %88, i32 0, i32 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load i64, i64* %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %6, align 8
  %96 = shl i64 %94, %95
  %97 = load i64, i64* @UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_DESC_EN_SHIFT, align 8
  %98 = shl i64 %96, %97
  %99 = call i32 @al_reg_write32_masked(i64* %76, i64 %87, i64 %98)
  %100 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %101 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %105 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %104, i32 0, i32 0
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %6, align 8
  %112 = shl i64 %110, %111
  %113 = load i64, i64* @UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_QUEUE_EN_SHIFT, align 8
  %114 = shl i64 %112, %113
  %115 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %116 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %115, i32 0, i32 0
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %116, align 8
  %118 = load i64, i64* %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* %6, align 8
  %123 = shl i64 %121, %122
  %124 = load i64, i64* @UDMA_GEN_TGTID_CFG_TGTID_0_RX_Q_TGTID_QUEUE_EN_SHIFT, align 8
  %125 = shl i64 %123, %124
  %126 = call i32 @al_reg_write32_masked(i64* %103, i64 %114, i64 %125)
  %127 = load i64, i64* %6, align 8
  switch i64 %127, label %162 [
    i64 0, label %128
    i64 1, label %128
    i64 2, label %145
    i64 3, label %145
  ]

128:                                              ; preds = %3, %3
  %129 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %130 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  store i64* %132, i64** %7, align 8
  %133 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %134 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  store i64* %136, i64** %8, align 8
  %137 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %138 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 0
  store i64* %140, i64** %9, align 8
  %141 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %142 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 1
  store i64* %144, i64** %10, align 8
  br label %165

145:                                              ; preds = %3, %3
  %146 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %147 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  store i64* %149, i64** %7, align 8
  %150 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %151 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 4
  store i64* %153, i64** %8, align 8
  %154 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %155 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  store i64* %157, i64** %9, align 8
  %158 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %159 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 3
  store i64* %161, i64** %10, align 8
  br label %165

162:                                              ; preds = %3
  %163 = load i32, i32* @AL_FALSE, align 4
  %164 = call i32 @al_assert(i32 %163)
  br label %226

165:                                              ; preds = %145, %128
  %166 = load i64*, i64** %7, align 8
  %167 = load i64, i64* %6, align 8
  %168 = call i64 @UDMA_GEN_TGTID_CFG_TGTID_MASK(i64 %167)
  %169 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %170 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %169, i32 0, i32 1
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %170, align 8
  %172 = load i64, i64* %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* %6, align 8
  %177 = call i64 @UDMA_GEN_TGTID_CFG_TGTID_SHIFT(i64 %176)
  %178 = shl i64 %175, %177
  %179 = call i32 @al_reg_write32_masked(i64* %166, i64 %168, i64 %178)
  %180 = load i64*, i64** %8, align 8
  %181 = load i64, i64* %6, align 8
  %182 = call i64 @UDMA_GEN_TGTID_CFG_TGTID_MASK(i64 %181)
  %183 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %184 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %183, i32 0, i32 0
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = load i64, i64* %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %6, align 8
  %191 = call i64 @UDMA_GEN_TGTID_CFG_TGTID_SHIFT(i64 %190)
  %192 = shl i64 %189, %191
  %193 = call i32 @al_reg_write32_masked(i64* %180, i64 %182, i64 %192)
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* @AL_UDMA_REV_ID_REV2, align 4
  %196 = icmp uge i32 %194, %195
  br i1 %196, label %197, label %226

197:                                              ; preds = %165
  %198 = load i64*, i64** %9, align 8
  %199 = load i64, i64* %6, align 8
  %200 = call i64 @UDMA_GEN_TGTADDR_CFG_MASK(i64 %199)
  %201 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %202 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %201, i32 0, i32 1
  %203 = load %struct.TYPE_9__*, %struct.TYPE_9__** %202, align 8
  %204 = load i64, i64* %6, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* %6, align 8
  %209 = call i64 @UDMA_GEN_TGTADDR_CFG_SHIFT(i64 %208)
  %210 = shl i64 %207, %209
  %211 = call i32 @al_reg_write32_masked(i64* %198, i64 %200, i64 %210)
  %212 = load i64*, i64** %10, align 8
  %213 = load i64, i64* %6, align 8
  %214 = call i64 @UDMA_GEN_TGTADDR_CFG_MASK(i64 %213)
  %215 = load %struct.al_udma_gen_tgtid_conf*, %struct.al_udma_gen_tgtid_conf** %5, align 8
  %216 = getelementptr inbounds %struct.al_udma_gen_tgtid_conf, %struct.al_udma_gen_tgtid_conf* %215, i32 0, i32 0
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = load i64, i64* %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* %6, align 8
  %223 = call i64 @UDMA_GEN_TGTADDR_CFG_SHIFT(i64 %222)
  %224 = shl i64 %221, %223
  %225 = call i32 @al_reg_write32_masked(i64* %212, i64 %214, i64 %224)
  br label %226

226:                                              ; preds = %162, %197, %165
  ret void
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_udma_get_revision(%struct.unit_regs*) #1

declare dso_local i32 @al_reg_write32_masked(i64*, i64, i64) #1

declare dso_local i64 @UDMA_GEN_TGTID_CFG_TGTID_MASK(i64) #1

declare dso_local i64 @UDMA_GEN_TGTID_CFG_TGTID_SHIFT(i64) #1

declare dso_local i64 @UDMA_GEN_TGTADDR_CFG_MASK(i64) #1

declare dso_local i64 @UDMA_GEN_TGTADDR_CFG_SHIFT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
