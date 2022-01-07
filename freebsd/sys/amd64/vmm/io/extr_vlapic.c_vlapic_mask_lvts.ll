; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_mask_lvts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/io/extr_vlapic.c_vlapic_mask_lvts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vlapic = type { %struct.LAPIC* }
%struct.LAPIC = type { i32, i32, i32, i32, i32, i32, i32 }

@APIC_LVT_M = common dso_local global i32 0, align 4
@APIC_OFFSET_CMCI_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_TIMER_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_THERM_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_PERF_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_LINT0_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_LINT1_LVT = common dso_local global i32 0, align 4
@APIC_OFFSET_ERROR_LVT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vlapic*)* @vlapic_mask_lvts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vlapic_mask_lvts(%struct.vlapic* %0) #0 {
  %2 = alloca %struct.vlapic*, align 8
  %3 = alloca %struct.LAPIC*, align 8
  store %struct.vlapic* %0, %struct.vlapic** %2, align 8
  %4 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %5 = getelementptr inbounds %struct.vlapic, %struct.vlapic* %4, i32 0, i32 0
  %6 = load %struct.LAPIC*, %struct.LAPIC** %5, align 8
  store %struct.LAPIC* %6, %struct.LAPIC** %3, align 8
  %7 = load i32, i32* @APIC_LVT_M, align 4
  %8 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %9 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %13 = load i32, i32* @APIC_OFFSET_CMCI_LVT, align 4
  %14 = call i32 @vlapic_lvt_write_handler(%struct.vlapic* %12, i32 %13)
  %15 = load i32, i32* @APIC_LVT_M, align 4
  %16 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %17 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %21 = load i32, i32* @APIC_OFFSET_TIMER_LVT, align 4
  %22 = call i32 @vlapic_lvt_write_handler(%struct.vlapic* %20, i32 %21)
  %23 = load i32, i32* @APIC_LVT_M, align 4
  %24 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %25 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %29 = load i32, i32* @APIC_OFFSET_THERM_LVT, align 4
  %30 = call i32 @vlapic_lvt_write_handler(%struct.vlapic* %28, i32 %29)
  %31 = load i32, i32* @APIC_LVT_M, align 4
  %32 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %33 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %37 = load i32, i32* @APIC_OFFSET_PERF_LVT, align 4
  %38 = call i32 @vlapic_lvt_write_handler(%struct.vlapic* %36, i32 %37)
  %39 = load i32, i32* @APIC_LVT_M, align 4
  %40 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %41 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %45 = load i32, i32* @APIC_OFFSET_LINT0_LVT, align 4
  %46 = call i32 @vlapic_lvt_write_handler(%struct.vlapic* %44, i32 %45)
  %47 = load i32, i32* @APIC_LVT_M, align 4
  %48 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %49 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %53 = load i32, i32* @APIC_OFFSET_LINT1_LVT, align 4
  %54 = call i32 @vlapic_lvt_write_handler(%struct.vlapic* %52, i32 %53)
  %55 = load i32, i32* @APIC_LVT_M, align 4
  %56 = load %struct.LAPIC*, %struct.LAPIC** %3, align 8
  %57 = getelementptr inbounds %struct.LAPIC, %struct.LAPIC* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.vlapic*, %struct.vlapic** %2, align 8
  %61 = load i32, i32* @APIC_OFFSET_ERROR_LVT, align 4
  %62 = call i32 @vlapic_lvt_write_handler(%struct.vlapic* %60, i32 %61)
  ret void
}

declare dso_local i32 @vlapic_lvt_write_handler(%struct.vlapic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
