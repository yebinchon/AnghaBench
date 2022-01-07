; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtcompile.c_DtCompileTwoSubtables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_dtcompile.c_DtCompileTwoSubtables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @DtCompileTwoSubtables(i8** %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32**, align 8
  store i8** %0, i8*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8**, i8*** %5, align 8
  %13 = bitcast i8** %12 to i32**
  store i32** %13, i32*** %11, align 8
  %14 = load i32**, i32*** %11, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = call i32 @DtCompileTable(i32** %14, i32* %15, i32** %9)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i64 @ACPI_FAILURE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %46

22:                                               ; preds = %3
  %23 = call i32* (...) @DtPeekSubtable()
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @DtInsertSubtable(i32* %24, i32* %25)
  br label %27

27:                                               ; preds = %40, %22
  %28 = load i32**, i32*** %11, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %27
  %32 = load i32**, i32*** %11, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @DtCompileTable(i32** %32, i32* %33, i32** %9)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @ACPI_FAILURE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %46

40:                                               ; preds = %31
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @DtInsertSubtable(i32* %41, i32* %42)
  br label %27

44:                                               ; preds = %27
  %45 = load i32, i32* @AE_OK, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %38, %20
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @DtCompileTable(i32**, i32*, i32**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32* @DtPeekSubtable(...) #1

declare dso_local i32 @DtInsertSubtable(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
