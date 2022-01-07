; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_encoding.c_looks_utf16.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/common/extr_encoding.c_looks_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@text_chars = common dso_local global i64* null, align 8
@T = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @looks_utf16(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %6, align 8
  store i32 0, i32* %11, align 4
  %14 = load i64, i64* %5, align 8
  %15 = icmp ult i64 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %112

17:                                               ; preds = %2
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = shl i32 %20, 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = xor i32 %21, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %26, 65534
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  store i32 0, i32* %7, align 4
  br label %35

29:                                               ; preds = %17
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 65279
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i32 1, i32* %7, align 4
  br label %34

33:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %112

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %28
  store i64 2, i64* %8, align 8
  br label %36

36:                                               ; preds = %106, %35
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  %39 = load i64, i64* %5, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %109

41:                                               ; preds = %36
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %41
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = xor i32 %49, %54
  store i32 %55, i32* %9, align 4
  br label %68

56:                                               ; preds = %41
  %57 = load i32*, i32** %6, align 8
  %58 = load i64, i64* %8, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %6, align 8
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %65, 8
  %67 = xor i32 %60, %66
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %56, %44
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %97, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = icmp ult i32 %72, 55296
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %9, align 4
  %76 = icmp ugt i32 %75, 57343
  br i1 %76, label %77, label %91

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %9, align 4
  %79 = icmp ult i32 %78, 128
  br i1 %79, label %80, label %89

80:                                               ; preds = %77
  %81 = load i64*, i64** @text_chars, align 8
  %82 = load i32, i32* %9, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i64, i64* %81, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @T, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80
  store i32 0, i32* %3, align 4
  br label %112

89:                                               ; preds = %80, %77
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %89
  br label %96

91:                                               ; preds = %74
  %92 = load i32, i32* %9, align 4
  %93 = icmp ugt i32 %92, 56319
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %112

95:                                               ; preds = %91
  store i32 1, i32* %11, align 4
  br label %106

96:                                               ; preds = %90
  br label %105

97:                                               ; preds = %68
  %98 = load i32, i32* %9, align 4
  %99 = icmp ult i32 %98, 56320
  br i1 %99, label %103, label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %9, align 4
  %102 = icmp ugt i32 %101, 57343
  br i1 %102, label %103, label %104

103:                                              ; preds = %100, %97
  store i32 0, i32* %3, align 4
  br label %112

104:                                              ; preds = %100
  br label %105

105:                                              ; preds = %104, %96
  br label %106

106:                                              ; preds = %105, %95
  %107 = load i64, i64* %8, align 8
  %108 = add i64 %107, 2
  store i64 %108, i64* %8, align 8
  br label %36

109:                                              ; preds = %36
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 1, %110
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %109, %103, %94, %88, %33, %16
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
