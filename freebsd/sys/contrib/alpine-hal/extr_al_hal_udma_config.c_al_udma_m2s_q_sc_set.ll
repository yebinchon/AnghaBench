; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_q_sc_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_m2s_q_sc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_q = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.al_udma_m2s_q_dwrr_conf = type { i32, i64, i32, i32, i32 }

@UDMA_M2S_Q_DWRR_CFG_1_MAX_DEFICIT_CNT_SIZE_MASK = common dso_local global i32 0, align 4
@AL_TRUE = common dso_local global i64 0, align 8
@UDMA_M2S_Q_DWRR_CFG_1_STRICT = common dso_local global i32 0, align 4
@UDMA_M2S_Q_DWRR_CFG_2_Q_QOS_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_Q_DWRR_CFG_2_Q_QOS_SHIFT = common dso_local global i32 0, align 4
@UDMA_M2S_Q_DWRR_CFG_3_WEIGHT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_m2s_q_sc_set(%struct.al_udma_q* %0, %struct.al_udma_m2s_q_dwrr_conf* %1) #0 {
  %3 = alloca %struct.al_udma_q*, align 8
  %4 = alloca %struct.al_udma_m2s_q_dwrr_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.al_udma_q* %0, %struct.al_udma_q** %3, align 8
  store %struct.al_udma_m2s_q_dwrr_conf* %1, %struct.al_udma_m2s_q_dwrr_conf** %4, align 8
  %6 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %7 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %11 = call i32 @al_reg_read32(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_1_MAX_DEFICIT_CNT_SIZE_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.al_udma_m2s_q_dwrr_conf*, %struct.al_udma_m2s_q_dwrr_conf** %4, align 8
  %17 = getelementptr inbounds %struct.al_udma_m2s_q_dwrr_conf, %struct.al_udma_m2s_q_dwrr_conf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_1_MAX_DEFICIT_CNT_SIZE_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load %struct.al_udma_m2s_q_dwrr_conf*, %struct.al_udma_m2s_q_dwrr_conf** %4, align 8
  %24 = getelementptr inbounds %struct.al_udma_m2s_q_dwrr_conf, %struct.al_udma_m2s_q_dwrr_conf* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @AL_TRUE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_1_STRICT, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_1_STRICT, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %39 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @al_reg_write32(i32* %42, i32 %43)
  %45 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %46 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = call i32 @al_reg_read32(i32* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_2_Q_QOS_MASK, align 4
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %5, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %5, align 4
  %55 = load %struct.al_udma_m2s_q_dwrr_conf*, %struct.al_udma_m2s_q_dwrr_conf** %4, align 8
  %56 = getelementptr inbounds %struct.al_udma_m2s_q_dwrr_conf, %struct.al_udma_m2s_q_dwrr_conf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_2_Q_QOS_SHIFT, align 4
  %59 = shl i32 %57, %58
  %60 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_2_Q_QOS_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_2_Q_QOS_MASK, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %5, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load %struct.al_udma_m2s_q_dwrr_conf*, %struct.al_udma_m2s_q_dwrr_conf** %4, align 8
  %69 = getelementptr inbounds %struct.al_udma_m2s_q_dwrr_conf, %struct.al_udma_m2s_q_dwrr_conf* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_2_Q_QOS_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  %75 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %76 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @al_reg_write32(i32* %79, i32 %80)
  %82 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %83 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = call i32 @al_reg_read32(i32* %86)
  store i32 %87, i32* %5, align 4
  %88 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_3_WEIGHT_MASK, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %5, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %5, align 4
  %92 = load %struct.al_udma_m2s_q_dwrr_conf*, %struct.al_udma_m2s_q_dwrr_conf** %4, align 8
  %93 = getelementptr inbounds %struct.al_udma_m2s_q_dwrr_conf, %struct.al_udma_m2s_q_dwrr_conf* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @UDMA_M2S_Q_DWRR_CFG_3_WEIGHT_MASK, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %5, align 4
  %99 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %100 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @al_reg_write32(i32* %103, i32 %104)
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
