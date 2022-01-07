; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_check_variable.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_parser.c_ucl_check_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucl_parser = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ucl_parser*, i8*, i64, i64*, i32*)* @ucl_check_variable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ucl_check_variable(%struct.ucl_parser* %0, i8* %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca %struct.ucl_parser*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.ucl_parser* %0, %struct.ucl_parser** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i8*, i8** %7, align 8
  store i8* %15, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 123
  br i1 %19, label %20, label %67

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 1
  store i8* %22, i8** %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %12, align 8
  br label %26

26:                                               ; preds = %63, %20
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %12, align 8
  %29 = icmp ult i8* %27, %28
  br i1 %29, label %30, label %66

30:                                               ; preds = %26
  %31 = load i8*, i8** %11, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 125
  br i1 %34, label %35, label %63

35:                                               ; preds = %30
  %36 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 1
  %39 = load i8*, i8** %11, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = ptrtoint i8* %39 to i64
  %42 = ptrtoint i8* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sub nsw i64 %43, 1
  %45 = load i64*, i64** %9, align 8
  %46 = call i8* @ucl_check_variable_safe(%struct.ucl_parser* %36, i8* %38, i64 %44, i64* %45, i32 1, i32* %14)
  store i8* %46, i8** %13, align 8
  %47 = load i32, i32* %14, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %35
  %50 = load i8*, i8** %13, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %13, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = load i32*, i32** %10, align 8
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %55, %49
  br label %62

58:                                               ; preds = %35
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, 2
  store i64 %61, i64* %59, align 8
  br label %62

62:                                               ; preds = %58, %57
  br label %66

63:                                               ; preds = %30
  %64 = load i8*, i8** %11, align 8
  %65 = getelementptr inbounds i8, i8* %64, i32 1
  store i8* %65, i8** %11, align 8
  br label %26

66:                                               ; preds = %62, %26
  br label %101

67:                                               ; preds = %5
  %68 = load i8*, i8** %7, align 8
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp ne i32 %70, 36
  br i1 %71, label %72, label %94

72:                                               ; preds = %67
  %73 = load %struct.ucl_parser*, %struct.ucl_parser** %6, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = load i64*, i64** %9, align 8
  %77 = call i8* @ucl_check_variable_safe(%struct.ucl_parser* %73, i8* %74, i64 %75, i64* %76, i32 0, i32* %14)
  store i8* %77, i8** %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %72
  %81 = load i32*, i32** %10, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %86, label %84

84:                                               ; preds = %80
  %85 = load i32*, i32** %10, align 8
  store i32 1, i32* %85, align 4
  br label %86

86:                                               ; preds = %84, %80, %72
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load i64*, i64** %9, align 8
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %90, align 8
  br label %93

93:                                               ; preds = %89, %86
  br label %100

94:                                               ; preds = %67
  %95 = load i8*, i8** %13, align 8
  %96 = getelementptr inbounds i8, i8* %95, i32 1
  store i8* %96, i8** %13, align 8
  %97 = load i64*, i64** %9, align 8
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %97, align 8
  br label %100

100:                                              ; preds = %94, %93
  br label %101

101:                                              ; preds = %100, %66
  %102 = load i8*, i8** %13, align 8
  ret i8* %102
}

declare dso_local i8* @ucl_check_variable_safe(%struct.ucl_parser*, i8*, i64, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
