; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_edma.c_edma_transfer_complete_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_edma.c_edma_transfer_complete_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edma_channel = type { i32, i32, i32 (i32, i32)* }
%struct.edma_softc = type { i32 }

@DMA_INT = common dso_local global i32 0, align 4
@DMA_CINT = common dso_local global i32 0, align 4
@CINT_CAIR = common dso_local global i32 0, align 4
@EDMA_NUM_CHANNELS = common dso_local global i32 0, align 4
@edma_map = common dso_local global %struct.edma_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @edma_transfer_complete_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @edma_transfer_complete_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.edma_channel*, align 8
  %4 = alloca %struct.edma_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.edma_softc*
  store %struct.edma_softc* %8, %struct.edma_softc** %4, align 8
  %9 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %10 = load i32, i32* @DMA_INT, align 4
  %11 = call i32 @READ4(%struct.edma_softc* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.edma_softc*, %struct.edma_softc** %4, align 8
  %13 = load i32, i32* @DMA_CINT, align 4
  %14 = load i32, i32* @CINT_CAIR, align 4
  %15 = call i32 @WRITE1(%struct.edma_softc* %12, i32 %13, i32 %14)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %52, %1
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @EDMA_NUM_CHANNELS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %16
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load %struct.edma_channel*, %struct.edma_channel** @edma_map, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %27, i64 %29
  store %struct.edma_channel* %30, %struct.edma_channel** %3, align 8
  %31 = load %struct.edma_channel*, %struct.edma_channel** %3, align 8
  %32 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %50

35:                                               ; preds = %26
  %36 = load %struct.edma_channel*, %struct.edma_channel** %3, align 8
  %37 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %36, i32 0, i32 2
  %38 = load i32 (i32, i32)*, i32 (i32, i32)** %37, align 8
  %39 = icmp ne i32 (i32, i32)* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %35
  %41 = load %struct.edma_channel*, %struct.edma_channel** %3, align 8
  %42 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %41, i32 0, i32 2
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.edma_channel*, %struct.edma_channel** %3, align 8
  %45 = getelementptr inbounds %struct.edma_channel, %struct.edma_channel* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 %43(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %40, %35
  br label %50

50:                                               ; preds = %49, %26
  br label %51

51:                                               ; preds = %50, %20
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %16

55:                                               ; preds = %16
  ret void
}

declare dso_local i32 @READ4(%struct.edma_softc*, i32) #1

declare dso_local i32 @WRITE1(%struct.edma_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
