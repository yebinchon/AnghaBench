; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMAllocateMapRegisters.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/ndis/extr_subr_ndis.c_NdisMAllocateMapRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ndis_softc = type { i32, i32*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@NDIS_MAXSEG = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@NDIS_STATUS_RESOURCES = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32, i32, i32)* @NdisMAllocateMapRegisters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NdisMAllocateMapRegisters(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ndis_softc*, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @NDIS_MAXSEG, align 4
  store i32 %17, i32* %16, align 4
  %18 = load i64, i64* %7, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %19, %struct.TYPE_4__** %13, align 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ndis_softc* @device_get_softc(i32 %24)
  store %struct.ndis_softc* %25, %struct.ndis_softc** %12, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @M_DEVBUF, align 4
  %31 = load i32, i32* @M_NOWAIT, align 4
  %32 = load i32, i32* @M_ZERO, align 4
  %33 = or i32 %31, %32
  %34 = call i32* @malloc(i32 %29, i32 %30, i32 %33)
  %35 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %36 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %35, i32 0, i32 1
  store i32* %34, i32** %36, align 8
  %37 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %38 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = load i32, i32* @NDIS_STATUS_RESOURCES, align 4
  store i32 %42, i32* %6, align 4
  br label %92

43:                                               ; preds = %5
  %44 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %45 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETHER_ALIGN, align 4
  %48 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %49 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %16, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %56 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %57 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %56, i32 0, i32 2
  %58 = call i32 @bus_dma_tag_create(i32 %46, i32 %47, i32 0, i32 %48, i32 %49, i32* null, i32* null, i32 %52, i32 %53, i32 %54, i32 %55, i32* null, i32* null, i32* %57)
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %43
  %62 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %63 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* @M_DEVBUF, align 4
  %66 = call i32 @free(i32* %64, i32 %65)
  %67 = load i32, i32* @NDIS_STATUS_RESOURCES, align 4
  store i32 %67, i32* %6, align 4
  br label %92

68:                                               ; preds = %43
  store i32 0, i32* %15, align 4
  br label %69

69:                                               ; preds = %84, %68
  %70 = load i32, i32* %15, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %75 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %78 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %79, i64 %81
  %83 = call i32 @bus_dmamap_create(i32 %76, i32 0, i32* %82)
  br label %84

84:                                               ; preds = %73
  %85 = load i32, i32* %15, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %15, align 4
  br label %69

87:                                               ; preds = %69
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.ndis_softc*, %struct.ndis_softc** %12, align 8
  %90 = getelementptr inbounds %struct.ndis_softc, %struct.ndis_softc* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @NDIS_STATUS_SUCCESS, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %87, %61, %41
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.ndis_softc* @device_get_softc(i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
