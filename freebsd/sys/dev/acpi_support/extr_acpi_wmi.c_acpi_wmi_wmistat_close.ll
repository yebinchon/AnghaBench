; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_wmi.c_acpi_wmi_wmistat_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_wmi.c_acpi_wmi_wmistat_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.acpi_wmi_softc* }
%struct.acpi_wmi_softc = type { i64, i32, i32 }
%struct.thread = type { i32 }

@EBADF = common dso_local global i32 0, align 4
@acpi_wmi = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @acpi_wmi_wmistat_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_wmi_wmistat_close(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.acpi_wmi_softc*, align 8
  %11 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.cdev*, %struct.cdev** %6, align 8
  %13 = icmp eq %struct.cdev* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %4
  %15 = load %struct.cdev*, %struct.cdev** %6, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.acpi_wmi_softc*, %struct.acpi_wmi_softc** %16, align 8
  %18 = icmp eq %struct.acpi_wmi_softc* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %4
  %20 = load i32, i32* @EBADF, align 4
  store i32 %20, i32* %5, align 4
  br label %51

21:                                               ; preds = %14
  %22 = load %struct.cdev*, %struct.cdev** %6, align 8
  %23 = getelementptr inbounds %struct.cdev, %struct.cdev* %22, i32 0, i32 0
  %24 = load %struct.acpi_wmi_softc*, %struct.acpi_wmi_softc** %23, align 8
  store %struct.acpi_wmi_softc* %24, %struct.acpi_wmi_softc** %10, align 8
  %25 = load i32, i32* @acpi_wmi, align 4
  %26 = call i32 @ACPI_SERIAL_BEGIN(i32 %25)
  %27 = load %struct.acpi_wmi_softc*, %struct.acpi_wmi_softc** %10, align 8
  %28 = getelementptr inbounds %struct.acpi_wmi_softc, %struct.acpi_wmi_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @EBADF, align 4
  store i32 %32, i32* %11, align 4
  br label %47

33:                                               ; preds = %21
  %34 = load %struct.acpi_wmi_softc*, %struct.acpi_wmi_softc** %10, align 8
  %35 = getelementptr inbounds %struct.acpi_wmi_softc, %struct.acpi_wmi_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.acpi_wmi_softc*, %struct.acpi_wmi_softc** %10, align 8
  %40 = getelementptr inbounds %struct.acpi_wmi_softc, %struct.acpi_wmi_softc* %39, i32 0, i32 2
  %41 = call i32 @sbuf_delete(i32* %40)
  %42 = load %struct.acpi_wmi_softc*, %struct.acpi_wmi_softc** %10, align 8
  %43 = getelementptr inbounds %struct.acpi_wmi_softc, %struct.acpi_wmi_softc* %42, i32 0, i32 1
  store i32 -1, i32* %43, align 8
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.acpi_wmi_softc*, %struct.acpi_wmi_softc** %10, align 8
  %46 = getelementptr inbounds %struct.acpi_wmi_softc, %struct.acpi_wmi_softc* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  store i32 0, i32* %11, align 4
  br label %47

47:                                               ; preds = %44, %31
  %48 = load i32, i32* @acpi_wmi, align 4
  %49 = call i32 @ACPI_SERIAL_END(i32 %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i32 @sbuf_delete(i32*) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
