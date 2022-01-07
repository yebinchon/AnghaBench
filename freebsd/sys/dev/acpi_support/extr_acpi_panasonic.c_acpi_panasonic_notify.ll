; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_panasonic.c_acpi_panasonic_notify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_panasonic.c_acpi_panasonic_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_panasonic_softc = type { i32 }

@panasonic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Panasonic\00", align 1
@bootverbose = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"unknown notify: %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @acpi_panasonic_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_panasonic_notify(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.acpi_panasonic_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.acpi_panasonic_softc*
  store %struct.acpi_panasonic_softc* %10, %struct.acpi_panasonic_softc** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %35 [
    i32 128, label %12
    i32 129, label %30
  ]

12:                                               ; preds = %3
  %13 = load i32, i32* @panasonic, align 4
  %14 = call i32 @ACPI_SERIAL_BEGIN(i32 %13)
  %15 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %7, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @acpi_panasonic_hkey_event(%struct.acpi_panasonic_softc* %15, i32 %16, i32* %8)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %7, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @acpi_panasonic_hkey_action(%struct.acpi_panasonic_softc* %20, i32 %21, i32 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @acpi_UserNotify(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %19, %12
  %28 = load i32, i32* @panasonic, align 4
  %29 = call i32 @ACPI_SERIAL_END(i32 %28)
  br label %41

30:                                               ; preds = %3
  %31 = load i32, i32* @bootverbose, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %30
  br label %41

34:                                               ; preds = %30
  br label %35

35:                                               ; preds = %3, %34
  %36 = load %struct.acpi_panasonic_softc*, %struct.acpi_panasonic_softc** %7, align 8
  %37 = getelementptr inbounds %struct.acpi_panasonic_softc, %struct.acpi_panasonic_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @device_printf(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %33, %27
  ret void
}

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i32 @acpi_panasonic_hkey_event(%struct.acpi_panasonic_softc*, i32, i32*) #1

declare dso_local i32 @acpi_panasonic_hkey_action(%struct.acpi_panasonic_softc*, i32, i32) #1

declare dso_local i32 @acpi_UserNotify(i8*, i32, i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
