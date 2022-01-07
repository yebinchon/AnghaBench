; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdInterrupt.c_acpi_intr_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdInterrupt.c_acpi_intr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_intr = type { i32, i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_ACPIINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.acpi_intr*)* @acpi_intr_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_intr_destroy(i32 %0, %struct.acpi_intr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_intr*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.acpi_intr* %1, %struct.acpi_intr** %4, align 8
  %5 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %6 = getelementptr inbounds %struct.acpi_intr, %struct.acpi_intr* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %12 = getelementptr inbounds %struct.acpi_intr, %struct.acpi_intr* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_intr, %struct.acpi_intr* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @bus_teardown_intr(i32 %10, i32* %13, i32* %16)
  br label %18

18:                                               ; preds = %9, %2
  %19 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %20 = getelementptr inbounds %struct.acpi_intr, %struct.acpi_intr* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %33

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @SYS_RES_IRQ, align 4
  %26 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %27 = getelementptr inbounds %struct.acpi_intr, %struct.acpi_intr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %30 = getelementptr inbounds %struct.acpi_intr, %struct.acpi_intr* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @bus_release_resource(i32 %24, i32 %25, i32 %28, i32* %31)
  br label %33

33:                                               ; preds = %23, %18
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @SYS_RES_IRQ, align 4
  %36 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %37 = getelementptr inbounds %struct.acpi_intr, %struct.acpi_intr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @bus_delete_resource(i32 %34, i32 %35, i32 %38)
  %40 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %41 = load i32, i32* @M_ACPIINTR, align 4
  %42 = call i32 @free(%struct.acpi_intr* %40, i32 %41)
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

declare dso_local i32 @free(%struct.acpi_intr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
