; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_wake_set_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_wake_set_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_prw_data = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@ACPI_GPE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"enable wake failed\0A\00", align 1
@ACPI_FLAG_WAKE_ENABLED = common dso_local global i32 0, align 4
@ACPI_GPE_DISABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"disable wake failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @acpi_wake_set_enable(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.acpi_prw_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @acpi_get_handle(i32 %9)
  %11 = call i64 @acpi_parse_prw(i32 %10, %struct.acpi_prw_data* %6)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %62

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @acpi_get_flags(i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %40

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %6, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ACPI_GPE_ENABLE, align 4
  %26 = call i32 @AcpiSetGpeWakeMask(i32 %22, i32 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i64 @ACPI_FAILURE(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @device_printf(i32 %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENXIO, align 4
  store i32 %33, i32* %3, align 4
  br label %62

34:                                               ; preds = %20
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ACPI_FLAG_WAKE_ENABLED, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @acpi_set_flags(i32 %35, i32 %38)
  br label %61

40:                                               ; preds = %15
  %41 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %6, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.acpi_prw_data, %struct.acpi_prw_data* %6, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ACPI_GPE_DISABLE, align 4
  %46 = call i32 @AcpiSetGpeWakeMask(i32 %42, i32 %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @ACPI_FAILURE(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %40
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %3, align 4
  br label %62

54:                                               ; preds = %40
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @ACPI_FLAG_WAKE_ENABLED, align 4
  %58 = xor i32 %57, -1
  %59 = and i32 %56, %58
  %60 = call i32 @acpi_set_flags(i32 %55, i32 %59)
  br label %61

61:                                               ; preds = %54, %34
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %50, %30, %13
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @acpi_parse_prw(i32, %struct.acpi_prw_data*) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i32 @acpi_get_flags(i32) #1

declare dso_local i32 @AcpiSetGpeWakeMask(i32, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @acpi_set_flags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
