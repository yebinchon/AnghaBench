; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_set_powerstate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_set_powerstate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_STATE_D0 = common dso_local global i32 0, align 4
@ACPI_D_STATES_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"set ACPI power state D%d on %s\0A\00", align 1
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to set ACPI power state D%d on %s: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @acpi_set_powerstate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_set_powerstate(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32* @acpi_get_handle(i32 %8)
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @ACPI_STATE_D0, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @ACPI_D_STATES_MAX, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %13
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %54

23:                                               ; preds = %19
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @acpi_pwr_switch_consumer(i32* %24, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i64 @ACPI_SUCCESS(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load i64, i64* @bootverbose, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @acpi_name(i32* %36)
  %38 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  br label %53

40:                                               ; preds = %23
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @AE_NOT_FOUND, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = call i32 @acpi_name(i32* %47)
  %49 = load i64, i64* %7, align 8
  %50 = call i32 @AcpiFormatException(i64 %49)
  %51 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48, i32 %50)
  br label %52

52:                                               ; preds = %44, %40
  br label %53

53:                                               ; preds = %52, %39
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %22, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32* @acpi_get_handle(i32) #1

declare dso_local i64 @acpi_pwr_switch_consumer(i32*, i32) #1

declare dso_local i64 @ACPI_SUCCESS(i64) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @acpi_name(i32*) #1

declare dso_local i32 @AcpiFormatException(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
