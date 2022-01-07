; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtbdump.c_AcpiDmValidateFadtLength.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/common/extr_dmtbdump.c_AcpiDmValidateFadtLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [43 x i8] c"// ACPI Warning: Invalid FADT revision: 0\0A\00", align 1
@ACPI_FADT_V1_SIZE = common dso_local global i32 0, align 4
@ACPI_FADT_V2_SIZE = common dso_local global i32 0, align 4
@ACPI_FADT_V3_SIZE = common dso_local global i32 0, align 4
@ACPI_FADT_V5_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"\0A// ACPI Warning: FADT revision %X does not match length: found %X expected %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @AcpiDmValidateFadtLength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AcpiDmValidateFadtLength(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %17 [
    i32 0, label %7
    i32 1, label %9
    i32 2, label %11
    i32 3, label %13
    i32 4, label %13
    i32 5, label %15
  ]

7:                                                ; preds = %2
  %8 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %28

9:                                                ; preds = %2
  %10 = load i32, i32* @ACPI_FADT_V1_SIZE, align 4
  store i32 %10, i32* %5, align 4
  br label %18

11:                                               ; preds = %2
  %12 = load i32, i32* @ACPI_FADT_V2_SIZE, align 4
  store i32 %12, i32* %5, align 4
  br label %18

13:                                               ; preds = %2, %2
  %14 = load i32, i32* @ACPI_FADT_V3_SIZE, align 4
  store i32 %14, i32* %5, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ACPI_FADT_V5_SIZE, align 4
  store i32 %16, i32* %5, align 4
  br label %18

17:                                               ; preds = %2
  br label %28

18:                                               ; preds = %15, %13, %11, %9
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  br label %28

23:                                               ; preds = %18
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i8*, ...) @AcpiOsPrintf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %22, %17, %7
  ret void
}

declare dso_local i32 @AcpiOsPrintf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
