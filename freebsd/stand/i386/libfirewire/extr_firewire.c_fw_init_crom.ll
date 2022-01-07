; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_init_crom.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libfirewire/extr_firewire.c_fw_init_crom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwohci_softc = type { %struct.crom_src_buf*, i32*, %struct.crom_src*, %struct.TYPE_8__, i32, i32 }
%struct.crom_src_buf = type { i32, %struct.crom_src }
%struct.crom_src = type { i32, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"fw_init_crom\0A\00", align 1
@CSR_BUS_NAME_IEEE1394 = common dso_local global i32 0, align 4
@MAXROM_4 = common dso_local global i32 0, align 4
@FW_GENERATION_CHANGEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fwohci_softc*)* @fw_init_crom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_init_crom(%struct.fwohci_softc* %0) #0 {
  %2 = alloca %struct.fwohci_softc*, align 8
  %3 = alloca %struct.crom_src*, align 8
  store %struct.fwohci_softc* %0, %struct.fwohci_softc** %2, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %5 = call i64 @malloc(i32 88)
  %6 = inttoptr i64 %5 to %struct.crom_src_buf*
  %7 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %8 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %7, i32 0, i32 0
  store %struct.crom_src_buf* %6, %struct.crom_src_buf** %8, align 8
  %9 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %10 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %9, i32 0, i32 0
  %11 = load %struct.crom_src_buf*, %struct.crom_src_buf** %10, align 8
  %12 = icmp eq %struct.crom_src_buf* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %16 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %15, i32 0, i32 0
  %17 = load %struct.crom_src_buf*, %struct.crom_src_buf** %16, align 8
  %18 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %17, i32 0, i32 1
  store %struct.crom_src* %18, %struct.crom_src** %3, align 8
  %19 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %20 = call i32 @bzero(%struct.crom_src* %19, i32 80)
  %21 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %22 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 4, i32* %23, align 8
  %24 = load i32, i32* @CSR_BUS_NAME_IEEE1394, align 4
  %25 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %26 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 11
  store i32 %24, i32* %27, align 8
  %28 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %29 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %32 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %35 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  %37 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %38 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  store i32 1, i32* %39, align 4
  %40 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %41 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 10
  store i64 0, i64* %42, align 8
  %43 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %44 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 4
  store i32 100, i32* %45, align 8
  %46 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %47 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %50 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 9
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @MAXROM_4, align 4
  %53 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %54 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 8
  store i32 %52, i32* %55, align 4
  %56 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %57 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 7
  store i32 2, i32* %58, align 8
  %59 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %60 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %63 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 6
  store i32 %61, i32* %64, align 4
  %65 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %66 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %70 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  %73 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %74 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %78 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 4
  %81 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %82 = getelementptr inbounds %struct.crom_src, %struct.crom_src* %81, i32 0, i32 0
  %83 = call i32 @STAILQ_INIT(i32* %82)
  %84 = load %struct.crom_src*, %struct.crom_src** %3, align 8
  %85 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %86 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %85, i32 0, i32 2
  store %struct.crom_src* %84, %struct.crom_src** %86, align 8
  %87 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %88 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %87, i32 0, i32 0
  %89 = load %struct.crom_src_buf*, %struct.crom_src_buf** %88, align 8
  %90 = getelementptr inbounds %struct.crom_src_buf, %struct.crom_src_buf* %89, i32 0, i32 0
  %91 = load %struct.fwohci_softc*, %struct.fwohci_softc** %2, align 8
  %92 = getelementptr inbounds %struct.fwohci_softc, %struct.fwohci_softc* %91, i32 0, i32 1
  store i32* %90, i32** %92, align 8
  br label %93

93:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @bzero(%struct.crom_src*, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
