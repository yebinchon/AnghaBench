; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMInitializeScatterGatherDma.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMInitializeScatterGatherDma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NDIS_STATUS_FAILURE = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@MCLBYTES = common dso_local global i32 0, align 4
@NDIS_MAXSEG = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @NdisMInitializeScatterGatherDma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NdisMInitializeScatterGatherDma(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ndis_softc*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @NDIS_STATUS_FAILURE, align 4
  store i32 %14, i32* %4, align 4
  br label %49

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.ndis_softc* @device_get_softc(i32 %22)
  store %struct.ndis_softc* %23, %struct.ndis_softc** %8, align 8
  %24 = load %struct.ndis_softc*, %struct.ndis_softc** %8, align 8
  %25 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %15
  %29 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %29, i32* %4, align 4
  br label %49

30:                                               ; preds = %15
  %31 = load %struct.ndis_softc*, %struct.ndis_softc** %8, align 8
  %32 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ETHER_ALIGN, align 4
  %35 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %36 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %37 = load i32, i32* @MCLBYTES, align 4
  %38 = load i32, i32* @NDIS_MAXSEG, align 4
  %39 = mul nsw i32 %37, %38
  %40 = load i32, i32* @NDIS_MAXSEG, align 4
  %41 = load i32, i32* @MCLBYTES, align 4
  %42 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %43 = load %struct.ndis_softc*, %struct.ndis_softc** %8, align 8
  %44 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %43, i32 0, i32 1
  %45 = call i32 @bus_dma_tag_create(i32 %33, i32 %34, i32 0, i32 %35, i32 %36, i32* null, i32* null, i32 %39, i32 %40, i32 %41, i32 %42, i32* null, i32* null, i32* %44)
  store i32 %45, i32* %10, align 4
  %46 = load %struct.ndis_softc*, %struct.ndis_softc** %8, align 8
  %47 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %30, %28, %13
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
