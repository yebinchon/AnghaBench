; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_hp.c_acpi_hp_hpcmi_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_hp.c_acpi_hp_hpcmi_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.acpi_hp_softc* }
%struct.acpi_hp_softc = type { i64, i64, i32 }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EBADF = common dso_local global i32 0, align 4
@hp = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SBUF_AUTOEXTEND = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @acpi_hp_hpcmi_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_hp_hpcmi_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.acpi_hp_softc*, align 8
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
  %17 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %16, align 8
  %18 = icmp eq %struct.acpi_hp_softc* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14, %4
  %20 = load i32, i32* @EBADF, align 4
  store i32 %20, i32* %5, align 4
  br label %56

21:                                               ; preds = %14
  %22 = load %struct.cdev*, %struct.cdev** %6, align 8
  %23 = getelementptr inbounds %struct.cdev, %struct.cdev* %22, i32 0, i32 0
  %24 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %23, align 8
  store %struct.acpi_hp_softc* %24, %struct.acpi_hp_softc** %10, align 8
  %25 = load i32, i32* @hp, align 4
  %26 = call i32 @ACPI_SERIAL_BEGIN(i32 %25)
  %27 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %10, align 8
  %28 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @EBUSY, align 4
  store i32 %32, i32* %11, align 4
  br label %52

33:                                               ; preds = %21
  %34 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %10, align 8
  %35 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %34, i32 0, i32 2
  %36 = load i32, i32* @SBUF_AUTOEXTEND, align 4
  %37 = call i32* @sbuf_new(i32* %35, i32* null, i32 4096, i32 %36)
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %11, align 4
  br label %51

41:                                               ; preds = %33
  %42 = load %struct.thread*, %struct.thread** %9, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %10, align 8
  %48 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  %49 = load %struct.acpi_hp_softc*, %struct.acpi_hp_softc** %10, align 8
  %50 = getelementptr inbounds %struct.acpi_hp_softc, %struct.acpi_hp_softc* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %41, %39
  br label %52

52:                                               ; preds = %51, %31
  %53 = load i32, i32* @hp, align 4
  %54 = call i32 @ACPI_SERIAL_END(i32 %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %52, %19
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i32* @sbuf_new(i32*, i32*, i32, i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
