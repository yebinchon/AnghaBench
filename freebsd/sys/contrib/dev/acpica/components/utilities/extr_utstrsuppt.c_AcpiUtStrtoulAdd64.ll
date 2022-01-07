; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utstrsuppt.c_AcpiUtStrtoulAdd64.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/utilities/extr_utstrsuppt.c_AcpiUtStrtoulAdd64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_UINT64_MAX = common dso_local global i64 0, align 8
@AE_NUMERIC_OVERFLOW = common dso_local global i32 0, align 4
@AcpiGbl_IntegerBitWidth = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*)* @AcpiUtStrtoulAdd64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiUtStrtoulAdd64(i64 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = icmp sgt i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %3
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @ACPI_UINT64_MAX, align 8
  %14 = load i64, i64* %5, align 8
  %15 = sub nsw i64 %13, %14
  %16 = icmp sgt i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @AE_NUMERIC_OVERFLOW, align 4
  store i32 %18, i32* %4, align 4
  br label %35

19:                                               ; preds = %11, %3
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %20, %21
  store i64 %22, i64* %8, align 8
  %23 = load i32, i32* @AcpiGbl_IntegerBitWidth, align 4
  %24 = icmp eq i32 %23, 32
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @AE_NUMERIC_OVERFLOW, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %25, %19
  %32 = load i64, i64* %8, align 8
  %33 = load i64*, i64** %7, align 8
  store i64 %32, i64* %33, align 8
  %34 = load i32, i32* @AE_OK, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %29, %17
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
