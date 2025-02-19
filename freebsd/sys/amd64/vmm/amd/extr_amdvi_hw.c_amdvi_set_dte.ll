; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_set_dte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_set_dte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_dte = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.amdvi_domain = type { i64, i32, i64 }
%struct.amdvi_softc = type { i64, i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"domain is NULL for pci_rid:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"softc is NULL for pci_rid:0x%x\0A\00", align 1
@amdvi_dte = common dso_local global %struct.amdvi_dte* null, align 8
@amdvi_disable_io_fault = common dso_local global i32 0, align 4
@amdvi_ptp_level = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.amdvi_domain*, i64, i32)* @amdvi_set_dte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_set_dte(%struct.amdvi_domain* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.amdvi_domain*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdvi_softc*, align 8
  %8 = alloca %struct.amdvi_dte*, align 8
  store %struct.amdvi_domain* %0, %struct.amdvi_domain** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.amdvi_domain*, %struct.amdvi_domain** %4, align 8
  %10 = bitcast %struct.amdvi_domain* %9 to %struct.amdvi_softc*
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i32 @KASSERT(%struct.amdvi_softc* %10, i8* %12)
  %14 = load i64, i64* %5, align 8
  %15 = call %struct.amdvi_softc* @amdvi_find_iommu(i64 %14)
  store %struct.amdvi_softc* %15, %struct.amdvi_softc** %7, align 8
  %16 = load %struct.amdvi_softc*, %struct.amdvi_softc** %7, align 8
  %17 = load i64, i64* %5, align 8
  %18 = inttoptr i64 %17 to i8*
  %19 = call i32 @KASSERT(%struct.amdvi_softc* %16, i8* %18)
  %20 = load %struct.amdvi_dte*, %struct.amdvi_dte** @amdvi_dte, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.amdvi_dte, %struct.amdvi_dte* %20, i64 %21
  store %struct.amdvi_dte* %22, %struct.amdvi_dte** %8, align 8
  %23 = load %struct.amdvi_dte*, %struct.amdvi_dte** %8, align 8
  %24 = getelementptr inbounds %struct.amdvi_dte, %struct.amdvi_dte* %23, i32 0, i32 1
  store i32 1, i32* %24, align 4
  %25 = load i32, i32* @amdvi_disable_io_fault, align 4
  %26 = load %struct.amdvi_dte*, %struct.amdvi_dte** %8, align 8
  %27 = getelementptr inbounds %struct.amdvi_dte, %struct.amdvi_dte* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 4
  %28 = load %struct.amdvi_dte*, %struct.amdvi_dte** %8, align 8
  %29 = getelementptr inbounds %struct.amdvi_dte, %struct.amdvi_dte* %28, i32 0, i32 2
  store i32 1, i32* %29, align 4
  %30 = load %struct.amdvi_domain*, %struct.amdvi_domain** %4, align 8
  %31 = getelementptr inbounds %struct.amdvi_domain, %struct.amdvi_domain* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.amdvi_dte*, %struct.amdvi_dte** %8, align 8
  %34 = getelementptr inbounds %struct.amdvi_dte, %struct.amdvi_dte* %33, i32 0, i32 8
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %3
  %38 = load %struct.amdvi_domain*, %struct.amdvi_domain** %4, align 8
  %39 = getelementptr inbounds %struct.amdvi_domain, %struct.amdvi_domain* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load %struct.amdvi_domain*, %struct.amdvi_domain** %4, align 8
  %44 = getelementptr inbounds %struct.amdvi_domain, %struct.amdvi_domain* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @vtophys(i64 %45)
  %47 = ashr i32 %46, 12
  %48 = load %struct.amdvi_dte*, %struct.amdvi_dte** %8, align 8
  %49 = getelementptr inbounds %struct.amdvi_dte, %struct.amdvi_dte* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @amdvi_ptp_level, align 4
  %51 = load %struct.amdvi_dte*, %struct.amdvi_dte** %8, align 8
  %52 = getelementptr inbounds %struct.amdvi_dte, %struct.amdvi_dte* %51, i32 0, i32 7
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %42, %37
  %54 = load %struct.amdvi_dte*, %struct.amdvi_dte** %8, align 8
  %55 = getelementptr inbounds %struct.amdvi_dte, %struct.amdvi_dte* %54, i32 0, i32 4
  store i32 1, i32* %55, align 4
  %56 = load %struct.amdvi_dte*, %struct.amdvi_dte** %8, align 8
  %57 = getelementptr inbounds %struct.amdvi_dte, %struct.amdvi_dte* %56, i32 0, i32 5
  store i32 1, i32* %57, align 4
  %58 = load %struct.amdvi_dte*, %struct.amdvi_dte** %8, align 8
  %59 = getelementptr inbounds %struct.amdvi_dte, %struct.amdvi_dte* %58, i32 0, i32 6
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %3
  ret void
}

declare dso_local i32 @KASSERT(%struct.amdvi_softc*, i8*) #1

declare dso_local %struct.amdvi_softc* @amdvi_find_iommu(i64) #1

declare dso_local i32 @vtophys(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
