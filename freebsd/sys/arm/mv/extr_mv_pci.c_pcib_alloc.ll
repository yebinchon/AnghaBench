; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_pcib_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_pcib_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i32, i32*, i32, i32*, i64, i64 }

@PCI_MIN_IO_ALLOC = common dso_local global i32 0, align 4
@PCI_MIN_MEM_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mv_pcib_softc*, i32)* @pcib_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pcib_alloc(%struct.mv_pcib_softc* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mv_pcib_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.mv_pcib_softc* %0, %struct.mv_pcib_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %19 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %13, align 8
  %21 = load i32, i32* @PCI_MIN_IO_ALLOC, align 4
  store i32 %21, i32* %10, align 4
  %22 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %23 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sdiv i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %28 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %9, align 8
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, -4
  store i32 %31, i32* %5, align 4
  br label %47

32:                                               ; preds = %2
  %33 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %34 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %13, align 8
  %36 = load i32, i32* @PCI_MIN_MEM_ALLOC, align 4
  store i32 %36, i32* %10, align 4
  %37 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %38 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sdiv i32 %39, %40
  store i32 %41, i32* %7, align 4
  %42 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %4, align 8
  %43 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %9, align 8
  %45 = load i32, i32* %5, align 4
  %46 = and i32 %45, -16
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %32, %17
  %48 = load i32, i32* %5, align 4
  %49 = xor i32 %48, -1
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %79, %47
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = icmp sle i32 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %54
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i64 @pcib_map_check(i32* %61, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %78

66:                                               ; preds = %60
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @pcib_map_set(i32* %67, i32 %68, i32 %69)
  %71 = load i64, i64* %13, align 8
  %72 = load i32, i32* %8, align 4
  %73 = load i32, i32* %10, align 4
  %74 = mul nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = add nsw i64 %71, %75
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  store i64 %77, i64* %3, align 8
  br label %85

78:                                               ; preds = %60
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %54

83:                                               ; preds = %54
  %84 = load i64, i64* %12, align 8
  store i64 %84, i64* %3, align 8
  br label %85

85:                                               ; preds = %83, %66
  %86 = load i64, i64* %3, align 8
  ret i64 %86
}

declare dso_local i64 @pcib_map_check(i32*, i32, i32) #1

declare dso_local i32 @pcib_map_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
