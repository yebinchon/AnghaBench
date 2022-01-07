; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_acad.c_acpi_acad_get_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_acad.c_acpi_acad_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_acad_softc = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"_PSR\00", align 1
@acad = common dso_local global i32 0, align 4
@POWER_PROFILE_PERFORMANCE = common dso_local global i32 0, align 4
@POWER_PROFILE_ECONOMY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s Line\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"On\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ACAD\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @acpi_acad_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_acad_get_status(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.acpi_acad_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call %struct.acpi_acad_softc* @device_get_softc(i8* %8)
  store %struct.acpi_acad_softc* %9, %struct.acpi_acad_softc** %3, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i32 @acpi_get_handle(i8* %10)
  store i32 %11, i32* %5, align 4
  store i32 -1, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @acpi_GetInteger(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %6)
  %14 = load i32, i32* @acad, align 4
  %15 = call i32 @ACPI_SERIAL_BEGIN(i32 %14)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, -1
  br i1 %17, label %18, label %50

18:                                               ; preds = %1
  %19 = load %struct.acpi_acad_softc*, %struct.acpi_acad_softc** %3, align 8
  %20 = getelementptr inbounds %struct.acpi_acad_softc, %struct.acpi_acad_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %50

24:                                               ; preds = %18
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.acpi_acad_softc*, %struct.acpi_acad_softc** %3, align 8
  %27 = getelementptr inbounds %struct.acpi_acad_softc, %struct.acpi_acad_softc* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @acad, align 4
  %29 = call i32 @ACPI_SERIAL_END(i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @POWER_PROFILE_PERFORMANCE, align 4
  br label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @POWER_PROFILE_ECONOMY, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  %38 = call i32 @power_profile_set_state(i32 %37)
  %39 = load i8*, i8** %4, align 8
  %40 = load i8*, i8** %4, align 8
  %41 = call i32 @acpi_device_get_parent_softc(i8* %40)
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)
  %46 = call i32 @ACPI_VPRINT(i8* %39, i32 %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @acpi_UserNotify(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %47, i32 %48)
  br label %53

50:                                               ; preds = %18, %1
  %51 = load i32, i32* @acad, align 4
  %52 = call i32 @ACPI_SERIAL_END(i32 %51)
  br label %53

53:                                               ; preds = %50, %36
  ret void
}

declare dso_local %struct.acpi_acad_softc* @device_get_softc(i8*) #1

declare dso_local i32 @acpi_get_handle(i8*) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i32*) #1

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

declare dso_local i32 @power_profile_set_state(i32) #1

declare dso_local i32 @ACPI_VPRINT(i8*, i32, i8*, i8*) #1

declare dso_local i32 @acpi_device_get_parent_softc(i8*) #1

declare dso_local i32 @acpi_UserNotify(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
