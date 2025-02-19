; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_q_compl_updade_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_config.c_al_udma_s2m_q_compl_updade_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma_q = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@AL_TRUE = common dso_local global i64 0, align 8
@UDMA_S2M_Q_COMP_CFG_EN_COMP_RING_UPDATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_udma_s2m_q_compl_updade_config(%struct.al_udma_q* %0, i64 %1) #0 {
  %3 = alloca %struct.al_udma_q*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.al_udma_q* %0, %struct.al_udma_q** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %7 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %6, i32 0, i32 0
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = call i32 @al_reg_read32(i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* @AL_TRUE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @UDMA_S2M_Q_COMP_CFG_EN_COMP_RING_UPDATE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %24

19:                                               ; preds = %2
  %20 = load i32, i32* @UDMA_S2M_Q_COMP_CFG_EN_COMP_RING_UPDATE, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %5, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %19, %15
  %25 = load %struct.al_udma_q*, %struct.al_udma_q** %3, align 8
  %26 = getelementptr inbounds %struct.al_udma_q, %struct.al_udma_q* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @al_reg_write32(i32* %29, i32 %30)
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
