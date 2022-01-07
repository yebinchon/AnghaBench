; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_prscan.c_PrGetNextLine.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_prscan.c_PrGetNextLine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AslGbl_CurrentLineBuffer = common dso_local global i8* null, align 8
@AslGbl_LineBufferSize = common dso_local global i64 0, align 8
@EOF = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i64 0, align 8
@ASL_EOF = common dso_local global i64 0, align 8
@AcpiGbl_LineScanState = common dso_local global i32 0, align 4
@ASL_IGNORE_LINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*)* @PrGetNextLine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @PrGetNextLine(i32* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 0, i32* %5, align 4
  %7 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %8 = load i64, i64* @AslGbl_LineBufferSize, align 8
  %9 = call i32 @memset(i8* %7, i32 0, i64 %8)
  store i64 0, i64* %4, align 8
  br label %10

10:                                               ; preds = %98, %1
  %11 = load i64, i64* %4, align 8
  %12 = load i64, i64* @AslGbl_LineBufferSize, align 8
  %13 = icmp uge i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 (...) @UtExpandLineBuffers()
  br label %16

16:                                               ; preds = %14, %10
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %6, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @getc(i32* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EOF, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %16
  %24 = load i64, i64* %4, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %28 = load i64, i64* %4, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8 10, i8* %29, align 1
  %30 = load i64, i64* @AE_OK, align 8
  store i64 %30, i64* %2, align 8
  br label %99

31:                                               ; preds = %23
  %32 = load i64, i64* @ASL_EOF, align 8
  store i64 %32, i64* %2, align 8
  br label %99

33:                                               ; preds = %16
  %34 = load i32, i32* @AcpiGbl_LineScanState, align 4
  switch i32 %34, label %70 [
    i32 130, label %35
    i32 129, label %56
    i32 131, label %61
    i32 128, label %69
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 47
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %39, 42
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 131, i32* @AcpiGbl_LineScanState, align 4
  br label %55

42:                                               ; preds = %38, %35
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = icmp eq i32 %46, 47
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store i32 128, i32* @AcpiGbl_LineScanState, align 4
  br label %54

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %6, align 4
  %51 = icmp eq i32 %50, 34
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 129, i32* @AcpiGbl_LineScanState, align 4
  br label %53

53:                                               ; preds = %52, %49
  br label %54

54:                                               ; preds = %53, %48
  br label %55

55:                                               ; preds = %54, %41
  br label %71

56:                                               ; preds = %33
  %57 = load i32, i32* %6, align 4
  %58 = icmp eq i32 %57, 34
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  store i32 130, i32* @AcpiGbl_LineScanState, align 4
  br label %60

60:                                               ; preds = %59, %56
  br label %71

61:                                               ; preds = %33
  %62 = load i32, i32* %6, align 4
  %63 = icmp eq i32 %62, 42
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = load i32, i32* %5, align 4
  %66 = icmp eq i32 %65, 47
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 130, i32* @AcpiGbl_LineScanState, align 4
  br label %68

68:                                               ; preds = %67, %64, %61
  br label %71

69:                                               ; preds = %33
  br label %70

70:                                               ; preds = %33, %69
  br label %71

71:                                               ; preds = %70, %68, %60, %55
  %72 = load i32, i32* %5, align 4
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** @AslGbl_CurrentLineBuffer, align 8
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8 %73, i8* %76, align 1
  %77 = load i64, i64* %4, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %4, align 8
  %79 = load i32, i32* %5, align 4
  %80 = icmp eq i32 %79, 10
  br i1 %80, label %81, label %98

81:                                               ; preds = %71
  %82 = load i32, i32* @AcpiGbl_LineScanState, align 4
  %83 = icmp eq i32 %82, 131
  br i1 %83, label %84, label %86

84:                                               ; preds = %81
  %85 = load i64, i64* @ASL_IGNORE_LINE, align 8
  store i64 %85, i64* %2, align 8
  br label %99

86:                                               ; preds = %81
  %87 = load i32, i32* @AcpiGbl_LineScanState, align 4
  %88 = icmp eq i32 %87, 128
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  store i32 130, i32* @AcpiGbl_LineScanState, align 4
  %90 = load i64, i64* @AE_OK, align 8
  store i64 %90, i64* %2, align 8
  br label %99

91:                                               ; preds = %86
  %92 = load i64, i64* %4, align 8
  %93 = icmp eq i64 %92, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %91
  %95 = load i64, i64* @ASL_IGNORE_LINE, align 8
  store i64 %95, i64* %2, align 8
  br label %99

96:                                               ; preds = %91
  %97 = load i64, i64* @AE_OK, align 8
  store i64 %97, i64* %2, align 8
  br label %99

98:                                               ; preds = %71
  br label %10

99:                                               ; preds = %96, %94, %89, %84, %31, %26
  %100 = load i64, i64* %2, align 8
  ret i64 %100
}

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @UtExpandLineBuffers(...) #1

declare dso_local i32 @getc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
