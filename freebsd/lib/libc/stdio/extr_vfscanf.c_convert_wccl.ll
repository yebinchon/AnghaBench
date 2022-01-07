; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfscanf.c_convert_wccl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfscanf.c_convert_wccl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initial_mbs = common dso_local global i32 0, align 4
@SUPPRESS_PTR = common dso_local global i64* null, align 8
@WEOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32, i8*, i32)* @convert_wccl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_wccl(i32* %0, i64* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @initial_mbs, align 4
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %17 = load i64*, i64** %8, align 8
  %18 = load i64*, i64** @SUPPRESS_PTR, align 8
  %19 = icmp eq i64* %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %41, %20
  %22 = load i32*, i32** %7, align 8
  %23 = load i32, i32* %11, align 4
  %24 = call i64 @__fgetwc_mbs(i32* %22, i32* %12, i32* %15, i32 %23)
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* @WEOF, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %21
  %28 = load i32, i32* %9, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %27
  %32 = load i8*, i8** %10, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i64 @wctob(i64 %33)
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = load i8, i8* %35, align 1
  %37 = sext i8 %36 to i32
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %31, %27, %21
  %40 = phi i1 [ false, %27 ], [ false, %21 ], [ %38, %31 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %14, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %14, align 4
  br label %21

45:                                               ; preds = %39
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @WEOF, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %45
  %50 = load i64, i64* %13, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i32 (...) @__get_locale()
  %53 = call i32 @__ungetwc(i64 %50, i32* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %45
  br label %98

55:                                               ; preds = %5
  br label %56

56:                                               ; preds = %76, %55
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i64 @__fgetwc_mbs(i32* %57, i32* %12, i32* %15, i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* @WEOF, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %74

62:                                               ; preds = %56
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %9, align 4
  %65 = icmp ne i32 %63, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i8*, i8** %10, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i64 @wctob(i64 %68)
  %70 = getelementptr inbounds i8, i8* %67, i64 %69
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %66, %62, %56
  %75 = phi i1 [ false, %62 ], [ false, %56 ], [ %73, %66 ]
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = load i64, i64* %13, align 8
  %78 = load i64*, i64** %8, align 8
  %79 = getelementptr inbounds i64, i64* %78, i32 1
  store i64* %79, i64** %8, align 8
  store i64 %77, i64* %78, align 8
  %80 = load i32, i32* %15, align 4
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, %80
  store i32 %82, i32* %14, align 4
  br label %56

83:                                               ; preds = %74
  %84 = load i64, i64* %13, align 8
  %85 = load i64, i64* @WEOF, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i64, i64* %13, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 (...) @__get_locale()
  %91 = call i32 @__ungetwc(i64 %88, i32* %89, i32 %90)
  br label %92

92:                                               ; preds = %87, %83
  %93 = load i32, i32* %14, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  store i32 0, i32* %6, align 4
  br label %100

96:                                               ; preds = %92
  %97 = load i64*, i64** %8, align 8
  store i64 0, i64* %97, align 8
  br label %98

98:                                               ; preds = %96, %54
  %99 = load i32, i32* %14, align 4
  store i32 %99, i32* %6, align 4
  br label %100

100:                                              ; preds = %98, %95
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @__fgetwc_mbs(i32*, i32*, i32*, i32) #1

declare dso_local i64 @wctob(i64) #1

declare dso_local i32 @__ungetwc(i64, i32*, i32) #1

declare dso_local i32 @__get_locale(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
