; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_max_descs_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_max_descs_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@AL_UDMA_M2S_MAX_ALLOWED_DESCS_PER_PACKET = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_max_descs_set(%struct.al_udma* %0, i32 %1) #0 {
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %5, align 4
  store i32 4, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @AL_UDMA_M2S_MAX_ALLOWED_DESCS_PER_PACKET, align 4
  %10 = icmp sle i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @al_assert(i32 %11)
  %13 = load i32, i32* %4, align 4
  %14 = icmp sgt i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @al_assert(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp sge i32 %17, 8
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 8, i32* %6, align 4
  br label %21

20:                                               ; preds = %2
  store i32 4, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %19
  %22 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %23 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_MASK, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_2_MAX_DESC_PER_PKT_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = call i32 @al_reg_write32_masked(i32* %27, i32 %28, i32 %31)
  %33 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %34 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_MASK, align 4
  %40 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_MASK, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_PREF_THR_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @UDMA_M2S_RD_DESC_PREF_CFG_3_MIN_BURST_ABOVE_THR_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  %49 = call i32 @al_reg_write32_masked(i32* %38, i32 %41, i32 %48)
  ret i32 0
}

declare dso_local i32 @al_assert(i32) #1

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
