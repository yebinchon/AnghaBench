; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_mem_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_pci.c_mv_pcib_mem_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_pcib_softc = type { %struct.TYPE_4__, %struct.TYPE_4__, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i8* }

@RMAN_ARRAY = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv_pcib_softc*)* @mv_pcib_mem_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_pcib_mem_init(%struct.mv_pcib_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv_pcib_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mv_pcib_softc* %0, %struct.mv_pcib_softc** %3, align 8
  %5 = load i8*, i8** @RMAN_ARRAY, align 8
  %6 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i8* %5, i8** %8, align 8
  %9 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %9, i32 0, i32 1
  %11 = call i32 @rman_init(%struct.TYPE_4__* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %76

16:                                               ; preds = %1
  %17 = load i8*, i8** @RMAN_ARRAY, align 8
  %18 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %19 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i8* %17, i8** %20, align 8
  %21 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %22 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %21, i32 0, i32 0
  %23 = call i32 @rman_init(%struct.TYPE_4__* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %16
  %27 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %27, i32 0, i32 1
  %29 = call i32 @rman_fini(%struct.TYPE_4__* %28)
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %76

31:                                               ; preds = %16
  %32 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %33 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %32, i32 0, i32 1
  %34 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %35 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %34, i32 0, i32 5
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %38 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %37, i32 0, i32 5
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %41 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = sub nsw i64 %43, 1
  %45 = call i32 @rman_manage_region(%struct.TYPE_4__* %33, i64 %36, i64 %44)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %68

49:                                               ; preds = %31
  %50 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %51 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %50, i32 0, i32 0
  %52 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %53 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %56 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %55, i32 0, i32 3
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %59 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = sub nsw i64 %61, 1
  %63 = call i32 @rman_manage_region(%struct.TYPE_4__* %51, i64 %54, i64 %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  br label %68

67:                                               ; preds = %49
  store i32 0, i32* %2, align 4
  br label %76

68:                                               ; preds = %66, %48
  %69 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %70 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %69, i32 0, i32 1
  %71 = call i32 @rman_fini(%struct.TYPE_4__* %70)
  %72 = load %struct.mv_pcib_softc*, %struct.mv_pcib_softc** %3, align 8
  %73 = getelementptr inbounds %struct.mv_pcib_softc, %struct.mv_pcib_softc* %72, i32 0, i32 0
  %74 = call i32 @rman_fini(%struct.TYPE_4__* %73)
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %67, %26, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @rman_init(%struct.TYPE_4__*) #1

declare dso_local i32 @rman_fini(%struct.TYPE_4__*) #1

declare dso_local i32 @rman_manage_region(%struct.TYPE_4__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
