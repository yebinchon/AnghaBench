; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_set_defaults.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_udma_main.c_al_udma_set_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_udma = type { i64, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.unit_regs = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@UDMA_TX = common dso_local global i64 0, align 8
@AL_UDMA_REV_ID_2 = common dso_local global i64 0, align 8
@UDMA_M2S_RD_DATA_CFG_DATA_FIFO_DEPTH_MASK = common dso_local global i32 0, align 4
@UDMA_M2S_RD_DATA_CFG_DATA_FIFO_DEPTH_SHIFT = common dso_local global i32 0, align 4
@UDMA_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_udma*)* @al_udma_set_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_udma_set_defaults(%struct.al_udma* %0) #0 {
  %2 = alloca %struct.al_udma*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.unit_regs*, align 8
  store %struct.al_udma* %0, %struct.al_udma** %2, align 8
  %5 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %6 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %9 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @UDMA_TX, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %1
  %14 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %15 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %14, i32 0, i32 2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %17 = bitcast %struct.TYPE_16__* %16 to %struct.unit_regs*
  store %struct.unit_regs* %17, %struct.unit_regs** %4, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i64, i64* @AL_UDMA_REV_ID_2, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %13
  %22 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %23 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32, i32* @UDMA_M2S_RD_DATA_CFG_DATA_FIFO_DEPTH_MASK, align 4
  %27 = load i32, i32* @UDMA_M2S_RD_DATA_CFG_DATA_FIFO_DEPTH_SHIFT, align 4
  %28 = shl i32 256, %27
  %29 = call i32 @al_reg_write32_masked(i32* %25, i32 %26, i32 %28)
  br label %30

30:                                               ; preds = %21, %13
  %31 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %32 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = call i32 @al_reg_write32(i32* %34, i32 1000000)
  %36 = load %struct.unit_regs*, %struct.unit_regs** %4, align 8
  %37 = getelementptr inbounds %struct.unit_regs, %struct.unit_regs* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = call i32 @al_reg_write32(i32* %39, i32 0)
  br label %41

41:                                               ; preds = %30, %1
  %42 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %43 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @UDMA_RX, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load %struct.al_udma*, %struct.al_udma** %2, align 8
  %49 = getelementptr inbounds %struct.al_udma, %struct.al_udma* %48, i32 0, i32 2
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = call i32 @al_reg_write32(i32* %53, i32 0)
  br label %55

55:                                               ; preds = %47, %41
  ret void
}

declare dso_local i32 @al_reg_write32_masked(i32*, i32, i32) #1

declare dso_local i32 @al_reg_write32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
