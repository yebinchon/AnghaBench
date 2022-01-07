; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdInterrupt.c_acpi_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/Osd/extr_OsdInterrupt.c_acpi_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_intr = type { i64 (i32)*, i32 }

@.str = private unnamed_addr constant [31 x i8] c"invalid ACPI interrupt handler\00", align 1
@ACPI_INTERRUPT_HANDLED = common dso_local global i64 0, align 8
@FILTER_HANDLED = common dso_local global i32 0, align 4
@FILTER_STRAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @acpi_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_intr_handler(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.acpi_intr*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = bitcast i8* %5 to %struct.acpi_intr*
  store %struct.acpi_intr* %6, %struct.acpi_intr** %4, align 8
  %7 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %8 = icmp ne %struct.acpi_intr* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %11 = getelementptr inbounds %struct.acpi_intr, %struct.acpi_intr* %10, i32 0, i32 0
  %12 = load i64 (i32)*, i64 (i32)** %11, align 8
  %13 = icmp ne i64 (i32)* %12, null
  br label %14

14:                                               ; preds = %9, %1
  %15 = phi i1 [ false, %1 ], [ %13, %9 ]
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %19 = getelementptr inbounds %struct.acpi_intr, %struct.acpi_intr* %18, i32 0, i32 0
  %20 = load i64 (i32)*, i64 (i32)** %19, align 8
  %21 = load %struct.acpi_intr*, %struct.acpi_intr** %4, align 8
  %22 = getelementptr inbounds %struct.acpi_intr, %struct.acpi_intr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i64 %20(i32 %23)
  %25 = load i64, i64* @ACPI_INTERRUPT_HANDLED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %14
  %28 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %28, i32* %2, align 4
  br label %31

29:                                               ; preds = %14
  %30 = load i32, i32* @FILTER_STRAY, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
