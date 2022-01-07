; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_sc_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_sc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.al_udma_m2s_dwrr_conf = type { i64, i64, i32, i32, i32 }

@AL_TRUE = common dso_local global i64 0, align 8
@UDMA_M2S_DWRR_CFG_SCHED_EN_DWRR = common dso_local global i32 0, align 4
@UDMA_M2S_DWRR_CFG_SCHED_PKT_MODE_EN = common dso_local global i32 0, align 4
@UDMA_M2S_DWRR_CFG_SCHED_WEIGHT_INC_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_DWRR_CFG_SCHED_WEIGHT_INC_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_DWRR_CFG_SCHED_INC_FACTOR_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_DWRR_CFG_SCHED_INC_FACTOR_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_DWRR_CTRL_DEFICIT_CNT_INIT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_sc_set(%struct.al_udma* %0, %struct.al_udma_m2s_dwrr_conf* %1) #0 {
  %3 = alloca %struct.al_udma*, align 8
  %4 = alloca %struct.al_udma_m2s_dwrr_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.al_udma* %0, %struct.al_udma** %3, align 8
  store %struct.al_udma_m2s_dwrr_conf* %1, %struct.al_udma_m2s_dwrr_conf** %4, align 8
  %6 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %7 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = call i32 @al_reg_read32(i32* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.al_udma_m2s_dwrr_conf*, %struct.al_udma_m2s_dwrr_conf** %4, align 8
  %14 = getelementptr inbounds %struct.al_udma_m2s_dwrr_conf, %struct.al_udma_m2s_dwrr_conf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AL_TRUE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @UDMA_M2S_DWRR_CFG_SCHED_EN_DWRR, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @UDMA_M2S_DWRR_CFG_SCHED_EN_DWRR, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load %struct.al_udma_m2s_dwrr_conf*, %struct.al_udma_m2s_dwrr_conf** %4, align 8
  %29 = getelementptr inbounds %struct.al_udma_m2s_dwrr_conf, %struct.al_udma_m2s_dwrr_conf* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AL_TRUE, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load i32, i32* @UDMA_M2S_DWRR_CFG_SCHED_PKT_MODE_EN, align 4
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %42

37:                                               ; preds = %27
  %38 = load i32, i32* @UDMA_M2S_DWRR_CFG_SCHED_PKT_MODE_EN, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load i32, i32* @UDMA_M2S_DWRR_CFG_SCHED_WEIGHT_INC_MASK, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.al_udma_m2s_dwrr_conf*, %struct.al_udma_m2s_dwrr_conf** %4, align 8
  %48 = getelementptr inbounds %struct.al_udma_m2s_dwrr_conf, %struct.al_udma_m2s_dwrr_conf* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @UDMA_M2S_DWRR_CFG_SCHED_WEIGHT_INC_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* @UDMA_M2S_DWRR_CFG_SCHED_INC_FACTOR_MASK, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %5, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load %struct.al_udma_m2s_dwrr_conf*, %struct.al_udma_m2s_dwrr_conf** %4, align 8
  %59 = getelementptr inbounds %struct.al_udma_m2s_dwrr_conf, %struct.al_udma_m2s_dwrr_conf* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @UDMA_M2S_DWRR_CFG_SCHED_INC_FACTOR_SHIFT, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %66 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @al_reg_write32(i32* %70, i32 %71)
  %73 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %74 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = call i32 @al_reg_read32(i32* %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* @UDMA_M2S_DWRR_CTRL_DEFICIT_CNT_INIT_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %5, align 4
  %84 = load %struct.al_udma_m2s_dwrr_conf*, %struct.al_udma_m2s_dwrr_conf** %4, align 8
  %85 = getelementptr inbounds %struct.al_udma_m2s_dwrr_conf, %struct.al_udma_m2s_dwrr_conf* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %5, align 4
  %89 = load %struct.al_udma*, %struct.al_udma** %3, align 8
  %90 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %89, i32 0, i32 0
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @al_reg_write32(i32* %94, i32 %95)
  ret i32 0
}

declare dso_local i32 @al_reg_read32(i32*) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
