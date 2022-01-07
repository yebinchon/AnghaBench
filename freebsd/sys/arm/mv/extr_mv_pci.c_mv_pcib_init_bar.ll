; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_init_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_init_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"PCI %u:%u:%u: reg %x: smask=%08x: addr=%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_pcib_softc*, i32, i32, i32, i32)* @mv_pcib_init_bar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pcib_init_bar(%struct.mv_pcib_softc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv_pcib_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mv_pcib_softc* %0, %struct.mv_pcib_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @PCIR_BAR(i32 %16)
  store i32 %17, i32* %14, align 4
  %18 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %19 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %14, align 4
  %25 = call i32 @mv_pcib_write_config(i32 %20, i32 %21, i32 %22, i32 %23, i32 %24, i32 -1, i32 4)
  %26 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %27 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @mv_pcib_read_config(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32, i32 4)
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %84

37:                                               ; preds = %5
  %38 = load i32, i32* %13, align 4
  %39 = and i32 %38, 7
  %40 = icmp eq i32 %39, 4
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 2, i32 1
  store i32 %42, i32* %15, align 4
  %43 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %44 = load i32, i32* %13, align 4
  %45 = call i32 @pcib_alloc(%struct.mv_pcib_softc* %43, i32 %44)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  store i32 -1, i32* %6, align 4
  br label %84

49:                                               ; preds = %37
  %50 = load i64, i64* @bootverbose, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %13, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %52, %49
  %61 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %62 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @mv_pcib_write_config(i32 %63, i32 %64, i32 %65, i32 %66, i32 %67, i32 %68, i32 4)
  %70 = load i32, i32* %15, align 4
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %72, label %82

72:                                               ; preds = %60
  %73 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %7, align 8
  %74 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %14, align 4
  %80 = add nsw i32 %79, 4
  %81 = call i32 @mv_pcib_write_config(i32 %75, i32 %76, i32 %77, i32 %78, i32 %80, i32 0, i32 4)
  br label %82

82:                                               ; preds = %72, %60
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %82, %48, %36
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @mv_pcib_write_config(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mv_pcib_read_config(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pcib_alloc(%struct.mv_pcib_softc*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
