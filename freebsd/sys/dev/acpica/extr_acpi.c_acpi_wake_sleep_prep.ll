; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_wake_sleep_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_wake_sleep_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_prw_data = type { i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ACPI_GPE_DISABLE = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"wake_prep disabled wake for %s (S%d)\0A\00", align 1
@ACPI_FLAG_WAKE_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_PSW\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"wake_prep enabled for %s (S%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @acpi_wake_sleep_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_wake_sleep_prep(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_prw_data, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @acpi_parse_prw(i32 %8, %struct.acpi_prw_data* %6)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %3, align 4
  br label %61

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @acpi_get_device(i32 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %16, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %6, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ACPI_GPE_DISABLE, align 4
  %26 = call i32 @AcpiSetGpeWakeMask(i32 %22, i32 %24, i32 %25)
  %27 = load i64, i64* @bootverbose, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %20
  %30 = load i64, i64* %7, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @acpi_name(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @device_printf(i64 %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %29, %20
  br label %60

36:                                               ; preds = %13
  %37 = load i64, i64* %7, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %36
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @acpi_get_flags(i64 %40)
  %42 = load i32, i32* @ACPI_FLAG_WAKE_ENABLED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %59

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @acpi_pwr_wake_enable(i32 %46, i32 1)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @acpi_SetInteger(i32 %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 1)
  %50 = load i64, i64* @bootverbose, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @acpi_name(i32 %54)
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @device_printf(i64 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58, %39, %36
  br label %60

60:                                               ; preds = %59, %35
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %11
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @acpi_parse_prw(i32, %struct.acpi_prw_data*) #1

declare dso_local i64 @acpi_get_device(i32) #1

declare dso_local i32 @AcpiSetGpeWakeMask(i32, i32, i32) #1

declare dso_local i32 @device_printf(i64, i8*, i32, i32) #1

declare dso_local i32 @acpi_name(i32) #1

declare dso_local i32 @acpi_get_flags(i64) #1

declare dso_local i32 @acpi_pwr_wake_enable(i32, i32) #1

declare dso_local i32 @acpi_SetInteger(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
