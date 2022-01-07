; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_sdma.c_sdma_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_sdma.c_sdma_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdma_softc = type { %struct.sdma_channel* }
%struct.sdma_channel = type { i64, i64 }

@sdma_sc = common dso_local global %struct.sdma_softc* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdma_free(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdma_channel*, align 8
  %4 = alloca %struct.sdma_softc*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.sdma_softc*, %struct.sdma_softc** @sdma_sc, align 8
  store %struct.sdma_softc* %5, %struct.sdma_softc** %4, align 8
  %6 = load %struct.sdma_softc*, %struct.sdma_softc** %4, align 8
  %7 = getelementptr inbounds %struct.sdma_softc, %struct.sdma_softc* %6, i32 0, i32 0
  %8 = load %struct.sdma_channel*, %struct.sdma_channel** %7, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %8, i64 %10
  store %struct.sdma_channel* %11, %struct.sdma_channel** %3, align 8
  %12 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %13 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %12, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = load %struct.sdma_channel*, %struct.sdma_channel** %3, align 8
  %15 = getelementptr inbounds %struct.sdma_channel, %struct.sdma_channel* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = call i32 @kmem_free(i32 %17, i32 %18)
  ret i32 0
}

declare dso_local i32 @kmem_free(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
