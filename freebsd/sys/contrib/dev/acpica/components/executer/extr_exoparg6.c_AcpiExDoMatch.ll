; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exoparg6.c_AcpiExDoMatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exoparg6.c_AcpiExDoMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@AML_LOGICAL_EQUAL_OP = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@AML_LOGICAL_LESS_OP = common dso_local global i32 0, align 4
@AML_LOGICAL_GREATER_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32*)* @AcpiExDoMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiExDoMatch(i32 %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @TRUE, align 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %76 [
    i32 128, label %12
    i32 133, label %13
    i32 130, label %24
    i32 129, label %39
    i32 132, label %50
    i32 131, label %65
  ]

12:                                               ; preds = %3
  br label %78

13:                                               ; preds = %3
  %14 = load i32, i32* @AML_LOGICAL_EQUAL_OP, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @AcpiExDoLogicalOp(i32 %14, i32* %15, i32* %16, i32* %8)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @FALSE, align 4
  store i32 %22, i32* %4, align 4
  br label %80

23:                                               ; preds = %13
  br label %78

24:                                               ; preds = %3
  %25 = load i32, i32* @AML_LOGICAL_LESS_OP, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @AcpiExDoLogicalOp(i32 %25, i32* %26, i32* %27, i32* %8)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @ACPI_FAILURE(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @FALSE, align 4
  store i32 %33, i32* %4, align 4
  br label %80

34:                                               ; preds = %24
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %8, align 4
  br label %78

39:                                               ; preds = %3
  %40 = load i32, i32* @AML_LOGICAL_GREATER_OP, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @AcpiExDoLogicalOp(i32 %40, i32* %41, i32* %42, i32* %8)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @FALSE, align 4
  store i32 %48, i32* %4, align 4
  br label %80

49:                                               ; preds = %39
  br label %78

50:                                               ; preds = %3
  %51 = load i32, i32* @AML_LOGICAL_GREATER_OP, align 4
  %52 = load i32*, i32** %7, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = call i32 @AcpiExDoLogicalOp(i32 %51, i32* %52, i32* %53, i32* %8)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ACPI_FAILURE(i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %50
  %59 = load i32, i32* @FALSE, align 4
  store i32 %59, i32* %4, align 4
  br label %80

60:                                               ; preds = %50
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %8, align 4
  br label %78

65:                                               ; preds = %3
  %66 = load i32, i32* @AML_LOGICAL_LESS_OP, align 4
  %67 = load i32*, i32** %7, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = call i32 @AcpiExDoLogicalOp(i32 %66, i32* %67, i32* %68, i32* %8)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @ACPI_FAILURE(i32 %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %65
  %74 = load i32, i32* @FALSE, align 4
  store i32 %74, i32* %4, align 4
  br label %80

75:                                               ; preds = %65
  br label %78

76:                                               ; preds = %3
  %77 = load i32, i32* @FALSE, align 4
  store i32 %77, i32* %4, align 4
  br label %80

78:                                               ; preds = %75, %60, %49, %34, %23, %12
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %78, %76, %73, %58, %47, %32, %21
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @AcpiExDoLogicalOp(i32, i32*, i32*, i32*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
