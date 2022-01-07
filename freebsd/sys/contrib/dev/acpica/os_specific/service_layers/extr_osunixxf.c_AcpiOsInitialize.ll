; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/os_specific/service_layers/extr_osunixxf.c_AcpiOsInitialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/os_specific/service_layers/extr_osunixxf.c_AcpiOsInitialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdout = common dso_local global i32 0, align 4
@AcpiGbl_OutputFile = common dso_local global i32 0, align 4
@AcpiGbl_PrintLock = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiOsInitialize() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @stdout, align 4
  store i32 %3, i32* @AcpiGbl_OutputFile, align 4
  %4 = call i32 (...) @OsEnterLineEditMode()
  %5 = call i32 @AcpiOsCreateLock(i32* @AcpiGbl_PrintLock)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call i64 @ACPI_FAILURE(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %13

11:                                               ; preds = %0
  %12 = load i32, i32* @AE_OK, align 4
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

declare dso_local i32 @OsEnterLineEditMode(...) #1

declare dso_local i32 @AcpiOsCreateLock(i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
