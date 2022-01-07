; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_teardown_hw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_teardown_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i64, i64, i32 }

@M_AMDVI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amdvi_teardown_hw(%struct.amdvi_softc* %0) #0 {
  %2 = alloca %struct.amdvi_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %2, align 8
  %4 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @amdvi_free_evt_intr_res(i32 %7)
  %9 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %10 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %15 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @M_AMDVI, align 4
  %18 = call i32 @free(i64 %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %21 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %26 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* @M_AMDVI, align 4
  %29 = call i32 @free(i64 %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  ret i32 0
}

declare dso_local i32 @amdvi_free_evt_intr_res(i32) #1

declare dso_local i32 @free(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
