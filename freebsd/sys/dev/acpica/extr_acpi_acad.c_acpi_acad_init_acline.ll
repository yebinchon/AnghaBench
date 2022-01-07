; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_acad.c_acpi_acad_init_acline.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_acad.c_acpi_acad_init_acline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_acad_softc = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"acline initialization start\0A\00", align 1
@ACPI_ACAD_RETRY_MAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"acline initialization done, tried %d times\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_acad_init_acline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_acad_init_acline(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_acad_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i64
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call %struct.acpi_acad_softc* @device_get_softc(i64 %8)
  store %struct.acpi_acad_softc* %9, %struct.acpi_acad_softc** %3, align 8
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @acpi_device_get_parent_softc(i64 %11)
  %13 = call i32 (i64, i32, i8*, ...) @ACPI_VPRINT(i64 %10, i32 %12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %28, %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ACPI_ACAD_RETRY_MAX, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %14
  %19 = load i64, i64* %4, align 8
  %20 = call i32 @acpi_acad_get_status(i64 %19)
  %21 = load %struct.acpi_acad_softc*, %struct.acpi_acad_softc** %3, align 8
  %22 = getelementptr inbounds %struct.acpi_acad_softc, %struct.acpi_acad_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, -1
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %31

26:                                               ; preds = %18
  %27 = call i32 @AcpiOsSleep(i32 10000)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %14

31:                                               ; preds = %25, %14
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call i32 @acpi_device_get_parent_softc(i64 %33)
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  %37 = call i32 (i64, i32, i8*, ...) @ACPI_VPRINT(i64 %32, i32 %34, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  ret void
}

declare dso_local %struct.acpi_acad_softc* @device_get_softc(i64) #1

declare dso_local i32 @ACPI_VPRINT(i64, i32, i8*, ...) #1

declare dso_local i32 @acpi_device_get_parent_softc(i64) #1

declare dso_local i32 @acpi_acad_get_status(i64) #1

declare dso_local i32 @AcpiOsSleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
