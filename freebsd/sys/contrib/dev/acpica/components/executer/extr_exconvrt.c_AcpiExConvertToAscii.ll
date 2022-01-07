; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exconvrt.c_AcpiExConvertToAscii.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exconvrt.c_AcpiExConvertToAscii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ACPI_MAX8_DECIMAL_DIGITS = common dso_local global i64 0, align 8
@ACPI_MAX32_DECIMAL_DIGITS = common dso_local global i64 0, align 8
@ACPI_MAX64_DECIMAL_DIGITS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ACPI_ASCII_ZERO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i32*, i32)* @AcpiExConvertToAscii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @AcpiExConvertToAscii(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %18 = call i32 (...) @ACPI_FUNCTION_ENTRY()
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %96 [
    i32 10, label %20
    i32 16, label %70
  ]

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %27 [
    i32 1, label %22
    i32 4, label %24
    i32 8, label %26
  ]

22:                                               ; preds = %20
  %23 = load i64, i64* @ACPI_MAX8_DECIMAL_DIGITS, align 8
  store i64 %23, i64* %15, align 8
  br label %29

24:                                               ; preds = %20
  %25 = load i64, i64* @ACPI_MAX32_DECIMAL_DIGITS, align 8
  store i64 %25, i64* %15, align 8
  br label %29

26:                                               ; preds = %20
  br label %27

27:                                               ; preds = %20, %26
  %28 = load i64, i64* @ACPI_MAX64_DECIMAL_DIGITS, align 8
  store i64 %28, i64* %15, align 8
  br label %29

29:                                               ; preds = %27, %24, %22
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %17, align 4
  store i64 0, i64* %16, align 8
  %31 = load i64, i64* %15, align 8
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %66, %29
  %33 = load i64, i64* %11, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %69

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %10, align 4
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %44, %35
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @AcpiUtShortDivide(i32 %42, i32 10, i32* %10, i64* %16)
  br label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %12, align 8
  %46 = add i64 %45, 1
  store i64 %46, i64* %12, align 8
  br label %37

47:                                               ; preds = %37
  %48 = load i64, i64* %16, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @FALSE, align 4
  store i32 %51, i32* %17, align 4
  br label %52

52:                                               ; preds = %50, %47
  %53 = load i32, i32* %17, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %65, label %55

55:                                               ; preds = %52
  %56 = load i64, i64* @ACPI_ASCII_ZERO, align 8
  %57 = load i64, i64* %16, align 8
  %58 = add i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32*, i32** %8, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32 %59, i32* %62, align 4
  %63 = load i64, i64* %13, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %13, align 8
  br label %65

65:                                               ; preds = %55, %52
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %11, align 8
  %68 = add i64 %67, -1
  store i64 %68, i64* %11, align 8
  br label %32

69:                                               ; preds = %32
  br label %97

70:                                               ; preds = %4
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %14, align 8
  store i64 0, i64* %11, align 8
  %74 = load i64, i64* %14, align 8
  %75 = sub i64 %74, 1
  store i64 %75, i64* %12, align 8
  br label %76

76:                                               ; preds = %90, %70
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %14, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %95

80:                                               ; preds = %76
  %81 = load i32, i32* %6, align 4
  %82 = load i64, i64* %12, align 8
  %83 = call i32 @ACPI_MUL_4(i64 %82)
  %84 = call i32 @AcpiUtHexToAsciiChar(i32 %81, i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = load i64, i64* %13, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %84, i32* %87, align 4
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %80
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* %12, align 8
  %94 = add i64 %93, -1
  store i64 %94, i64* %12, align 8
  br label %76

95:                                               ; preds = %76
  br label %97

96:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  br label %110

97:                                               ; preds = %95, %69
  %98 = load i64, i64* %13, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* @ACPI_ASCII_ZERO, align 8
  %102 = trunc i64 %101 to i32
  %103 = load i32*, i32** %8, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 %102, i32* %104, align 4
  store i64 1, i64* %13, align 8
  br label %105

105:                                              ; preds = %100, %97
  %106 = load i32*, i32** %8, align 8
  %107 = load i64, i64* %13, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 0, i32* %108, align 4
  %109 = load i64, i64* %13, align 8
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %105, %96
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local i32 @ACPI_FUNCTION_ENTRY(...) #1

declare dso_local i32 @AcpiUtShortDivide(i32, i32, i32*, i64*) #1

declare dso_local i32 @AcpiUtHexToAsciiChar(i32, i32) #1

declare dso_local i32 @ACPI_MUL_4(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
