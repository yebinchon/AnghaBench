; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_utf8.c_wind_ucs4utf8.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/wind/extr_utf8.c_wind_ucs4utf8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIND_ERR_INVALID_UTF32 = common dso_local global i32 0, align 4
@WIND_ERR_OVERRUN = common dso_local global i32 0, align 4
@first_char = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wind_ucs4utf8(i32* %0, i64 %1, i8* %2, i64* %3) #0 {
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

14:                                               ; preds = %101, %4
  %15 = load i64, i64* %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %104

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
  br label %43

26:                                               ; preds = %18
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %27, 2048
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i64 2, i64* %12, align 8
  br label %42

30:                                               ; preds = %26
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 65536
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i64 3, i64* %12, align 8
  br label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = icmp sle i32 %35, 1114111
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  store i64 4, i64* %12, align 8
  br label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @WIND_ERR_INVALID_UTF32, align 4
  store i32 %39, i32* %5, align 4
  br label %120

40:                                               ; preds = %37
  br label %41

41:                                               ; preds = %40, %33
  br label %42

42:                                               ; preds = %41, %29
  br label %43

43:                                               ; preds = %42, %25
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %13, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %13, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %97

49:                                               ; preds = %43
  %50 = load i64, i64* %13, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = load i64, i64* %51, align 8
  %53 = icmp uge i64 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %55, i32* %5, align 4
  br label %120

56:                                               ; preds = %49
  %57 = load i64, i64* %12, align 8
  switch i64 %57, label %96 [
    i64 4, label %58
    i64 3, label %67
    i64 2, label %76
    i64 1, label %85
  ]

58:                                               ; preds = %56
  %59 = load i32, i32* %10, align 4
  %60 = or i32 %59, 128
  %61 = and i32 %60, 191
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %8, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 3
  store i8 %62, i8* %64, align 1
  %65 = load i32, i32* %10, align 4
  %66 = ashr i32 %65, 6
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %56, %58
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, 128
  %70 = and i32 %69, 191
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %8, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 2
  store i8 %71, i8* %73, align 1
  %74 = load i32, i32* %10, align 4
  %75 = ashr i32 %74, 6
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %56, %67
  %77 = load i32, i32* %10, align 4
  %78 = or i32 %77, 128
  %79 = and i32 %78, 191
  %80 = trunc i32 %79 to i8
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 1
  store i8 %80, i8* %82, align 1
  %83 = load i32, i32* %10, align 4
  %84 = ashr i32 %83, 6
  store i32 %84, i32* %10, align 4
  br label %85

85:                                               ; preds = %56, %76
  %86 = load i32, i32* %10, align 4
  %87 = load i32*, i32** @first_char, align 8
  %88 = load i64, i64* %12, align 8
  %89 = sub i64 %88, 1
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %86, %91
  %93 = trunc i32 %92 to i8
  %94 = load i8*, i8** %8, align 8
  %95 = getelementptr inbounds i8, i8* %94, i64 0
  store i8 %93, i8* %95, align 1
  br label %96

96:                                               ; preds = %85, %56
  br label %97

97:                                               ; preds = %96, %43
  %98 = load i64, i64* %12, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 %98
  store i8* %100, i8** %8, align 8
  br label %101

101:                                              ; preds = %97
  %102 = load i64, i64* %11, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %11, align 8
  br label %14

104:                                              ; preds = %14
  %105 = load i8*, i8** %8, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %104
  %108 = load i64, i64* %13, align 8
  %109 = add i64 %108, 1
  %110 = load i64*, i64** %9, align 8
  %111 = load i64, i64* %110, align 8
  %112 = icmp uge i64 %109, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* @WIND_ERR_OVERRUN, align 4
  store i32 %114, i32* %5, align 4
  br label %120

115:                                              ; preds = %107
  %116 = load i8*, i8** %8, align 8
  store i8 0, i8* %116, align 1
  br label %117

117:                                              ; preds = %115, %104
  %118 = load i64, i64* %13, align 8
  %119 = load i64*, i64** %9, align 8
  store i64 %118, i64* %119, align 8
  store i32 0, i32* %5, align 4
  br label %120

120:                                              ; preds = %117, %113, %54, %38
  %121 = load i32, i32* %5, align 4
  ret i32 %121
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
