; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_add_child.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_add_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpu_device = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i8*, i32)* @acpi_cpu_add_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @acpi_cpu_add_child(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.acpi_cpu_device*, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @M_TEMP, align 4
  %13 = load i32, i32* @M_NOWAIT, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call %struct.acpi_cpu_device* @malloc(i32 4, i32 %12, i32 %15)
  store %struct.acpi_cpu_device* %16, %struct.acpi_cpu_device** %10, align 8
  %17 = icmp eq %struct.acpi_cpu_device* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %40

19:                                               ; preds = %4
  %20 = load %struct.acpi_cpu_device*, %struct.acpi_cpu_device** %10, align 8
  %21 = getelementptr inbounds %struct.acpi_cpu_device, %struct.acpi_cpu_device* %20, i32 0, i32 0
  %22 = call i32 @resource_list_init(i32* %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i8*, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32* @device_add_child_ordered(i32* %23, i32 %24, i8* %25, i32 %26)
  store i32* %27, i32** %11, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load i32*, i32** %11, align 8
  %32 = load %struct.acpi_cpu_device*, %struct.acpi_cpu_device** %10, align 8
  %33 = call i32 @device_set_ivars(i32* %31, %struct.acpi_cpu_device* %32)
  br label %38

34:                                               ; preds = %19
  %35 = load %struct.acpi_cpu_device*, %struct.acpi_cpu_device** %10, align 8
  %36 = load i32, i32* @M_TEMP, align 4
  %37 = call i32 @free(%struct.acpi_cpu_device* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32*, i32** %11, align 8
  store i32* %39, i32** %5, align 8
  br label %40

40:                                               ; preds = %38, %18
  %41 = load i32*, i32** %5, align 8
  ret i32* %41
}

declare dso_local %struct.acpi_cpu_device* @malloc(i32, i32, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32* @device_add_child_ordered(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_set_ivars(i32*, %struct.acpi_cpu_device*) #1

declare dso_local i32 @free(%struct.acpi_cpu_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
