; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_utf8.c_wind_ucs2utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_utf8.c_wind_ucs2utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIND_ERR_OVERRUN = common dso_local global i32 0, align 4
@first_char = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wind_ucs2utf8(i32* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %11, align 8
  br label %14

14:                                               ; preds = %81, %4
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %84

18:                                               ; preds = %14
  %19 = load i32*, i32** %6, align 8
  %20 = load i64, i64* %11, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 128
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i64 1, i64* %12, align 8
  br label %32

26:                                               ; preds = %18
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 2048
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 2, i64* %12, align 8
  br label %31

30:                                               ; preds = %26
  store i64 3, i64* %12, align 8
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* %13, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %13, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %32
  %39 = load i64, i64* %13, align 8
  %40 = load i64*, i64** %9, align 8
  %41 = load i64, i64* %40, align 8
  %42 = icmp uge i64 %39, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %44, i32* %5, align 4
  br label %99

45:                                               ; preds = %38
  %46 = load i64, i64* %12, align 8
  switch i64 %46, label %76 [
    i64 3, label %47
    i64 2, label %56
    i64 1, label %65
  ]

47:                                               ; preds = %45
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, 128
  %50 = and i32 %49, 191
  %51 = trunc i32 %50 to i8
  %52 = load i8*, i8** %8, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 2
  store i8 %51, i8* %53, align 1
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 6
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %45, %47
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, 128
  %59 = and i32 %58, 191
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 1
  store i8 %60, i8* %62, align 1
  %63 = load i32, i32* %10, align 4
  %64 = ashr i32 %63, 6
  store i32 %64, i32* %10, align 4
  br label %65

65:                                               ; preds = %45, %56
  %66 = load i32, i32* %10, align 4
  %67 = load i32*, i32** @first_char, align 8
  %68 = load i64, i64* %12, align 8
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %66, %71
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %8, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 0
  store i8 %73, i8* %75, align 1
  br label %76

76:                                               ; preds = %65, %45
  %77 = load i64, i64* %12, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 %77
  store i8* %79, i8** %8, align 8
  br label %80

80:                                               ; preds = %76, %32
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %11, align 8
  br label %14

84:                                               ; preds = %14
  %85 = load i8*, i8** %8, align 8
  %86 = icmp ne i8* %85, null
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i64, i64* %13, align 8
  %89 = load i64*, i64** %9, align 8
  %90 = load i64, i64* %89, align 8
  %91 = icmp uge i64 %88, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %93, i32* %5, align 4
  br label %99

94:                                               ; preds = %87
  %95 = load i8*, i8** %8, align 8
  store i8 0, i8* %95, align 1
  br label %96

96:                                               ; preds = %94, %84
  %97 = load i64, i64* %13, align 8
  %98 = load i64*, i64** %9, align 8
  store i64 %97, i64* %98, align 8
  store i32 0, i32* %5, align 4
  br label %99

99:                                               ; preds = %96, %92, %43
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
