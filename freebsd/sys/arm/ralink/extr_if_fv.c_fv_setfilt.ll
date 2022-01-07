; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_setfilt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_setfilt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { %struct.TYPE_4__, %struct.ifnet*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.ifnet = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.fv_desc* }
%struct.fv_desc = type { i32, i32, i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@FV_TX_RING_CNT = common dso_local global i32 0, align 4
@FV_SFRAME_LEN = common dso_local global i32 0, align 4
@ADCTL_Tx_SETUP = common dso_local global i32 0, align 4
@fv_set_maddr = common dso_local global i32 0, align 4
@ADSTAT_OWN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@CSR_TXPOLL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fv_softc*)* @fv_setfilt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fv_setfilt(%struct.fv_softc* %0) #0 {
  %2 = alloca %struct.fv_softc*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fv_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i32*, align 8
  store %struct.fv_softc* %0, %struct.fv_softc** %2, align 8
  %9 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %10 = add nsw i32 %9, 1
  %11 = sdiv i32 %10, 2
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %3, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %4, align 8
  %15 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %16 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %15, i32 0, i32 1
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  %18 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %19 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %23 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @FV_TX_RING_CNT, align 4
  %27 = call i32 @FV_INC(i32 %25, i32 %26)
  %28 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %29 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 8
  %33 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %34 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load %struct.fv_desc*, %struct.fv_desc** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %36, i64 %38
  store %struct.fv_desc* %39, %struct.fv_desc** %5, align 8
  %40 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %41 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 5
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* @FV_SFRAME_LEN, align 4
  %47 = call i32 @memset(i32* %45, i32 255, i32 %46)
  %48 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %49 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fv_desc*, %struct.fv_desc** %5, align 8
  %53 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ADCTL_Tx_SETUP, align 4
  %55 = load i32, i32* @FV_SFRAME_LEN, align 4
  %56 = call i32 @FV_DMASIZE(i32 %55)
  %57 = or i32 %54, %56
  %58 = load %struct.fv_desc*, %struct.fv_desc** %5, align 8
  %59 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %61 = load i32, i32* @fv_set_maddr, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @if_foreach_llmaddr(%struct.ifnet* %60, i32 %61, i32* %62)
  %64 = mul nsw i32 %63, 6
  store i32 %64, i32* %6, align 4
  %65 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %66 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %65, i32 0, i32 1
  %67 = load %struct.ifnet*, %struct.ifnet** %66, align 8
  %68 = call i32 @IF_LLADDR(%struct.ifnet* %67)
  %69 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %70 = call i32 @bcopy(i32 %68, i32* %14, i32 %69)
  %71 = getelementptr inbounds i32, i32* %14, i64 0
  %72 = load i32, i32* %71, align 16
  %73 = load i32*, i32** %8, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 91
  store i32 %72, i32* %74, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 90
  store i32 %72, i32* %76, align 4
  %77 = getelementptr inbounds i32, i32* %14, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32*, i32** %8, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 93
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %8, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 92
  store i32 %78, i32* %82, align 4
  %83 = getelementptr inbounds i32, i32* %14, i64 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 95
  store i32 %84, i32* %86, align 4
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 94
  store i32 %84, i32* %88, align 4
  %89 = load i32, i32* @ADSTAT_OWN, align 4
  %90 = load %struct.fv_desc*, %struct.fv_desc** %5, align 8
  %91 = getelementptr inbounds %struct.fv_desc, %struct.fv_desc* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %93 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %97 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %101 = call i32 @bus_dmamap_sync(i32 %95, i32 %99, i32 %100)
  %102 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %103 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %107 = getelementptr inbounds %struct.fv_softc, %struct.fv_softc* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %111 = call i32 @bus_dmamap_sync(i32 %105, i32 %109, i32 %110)
  %112 = load %struct.fv_softc*, %struct.fv_softc** %2, align 8
  %113 = load i32, i32* @CSR_TXPOLL, align 4
  %114 = call i32 @CSR_WRITE_4(%struct.fv_softc* %112, i32 %113, i32 -1)
  %115 = call i32 @DELAY(i32 10000)
  %116 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %116)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @FV_INC(i32, i32) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @FV_DMASIZE(i32) #2

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32*) #2

declare dso_local i32 @bcopy(i32, i32*, i32) #2

declare dso_local i32 @IF_LLADDR(%struct.ifnet*) #2

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #2

declare dso_local i32 @CSR_WRITE_4(%struct.fv_softc*, i32, i32) #2

declare dso_local i32 @DELAY(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
