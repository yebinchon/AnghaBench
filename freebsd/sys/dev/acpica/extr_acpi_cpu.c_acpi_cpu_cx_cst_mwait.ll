; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_cx_cst_mwait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_cx_cst_mwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cx = type { i32, i32, i32, i32 }

@CST_FFH_MWAIT_HW_COORD = common dso_local global i32 0, align 4
@CST_FFH_MWAIT_BM_AVOID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_cx*, i32, i32)* @acpi_cpu_cx_cst_mwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_cpu_cx_cst_mwait(%struct.acpi_cx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.acpi_cx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.acpi_cx* %0, %struct.acpi_cx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %8 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @CST_FFH_MWAIT_HW_COORD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i32
  %17 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @CST_FFH_MWAIT_BM_AVOID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %25 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
