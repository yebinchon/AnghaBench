; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_decode_win.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_decode_win.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mv_pci_range = type { i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"could not retrieve 'ranges' data\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"could not set up CPU decode window for PCI IO\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"could not set up CPU decode windows for PCI MEM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mv_pcib_softc*)* @mv_pcib_decode_win to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pcib_decode_win(i32 %0, %struct.mv_pcib_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv_pcib_softc*, align 8
  %6 = alloca %struct.mv_pci_range, align 4
  %7 = alloca %struct.mv_pci_range, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.mv_pcib_softc* %1, %struct.mv_pcib_softc** %5, align 8
  %10 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %11 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @mv_pci_ranges(i32 %13, %struct.mv_pci_range* %6, %struct.mv_pci_range* %7)
  store i32 %14, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %75

20:                                               ; preds = %2
  %21 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %22 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %25 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %6, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @decode_win_cpu_set(i32 %23, i32 %26, i32 %28, i32 %30, i32 -1)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %20
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %3, align 4
  br label %75

38:                                               ; preds = %20
  %39 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %40 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %43 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %7, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %7, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @decode_win_cpu_set(i32 %41, i32 %44, i32 %46, i32 %48, i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %38
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @device_printf(i32 %55, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i32, i32* @ENXIO, align 4
  store i32 %57, i32* %3, align 4
  br label %75

58:                                               ; preds = %38
  %59 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %6, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %62 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %66 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %7, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %70 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = getelementptr inbounds %struct.mv_pci_range, %struct.mv_pci_range* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %5, align 8
  %74 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %58, %54, %34, %16
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @mv_pci_ranges(i32, %struct.mv_pci_range*, %struct.mv_pci_range*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @decode_win_cpu_set(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
