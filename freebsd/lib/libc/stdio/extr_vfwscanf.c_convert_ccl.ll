; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_convert_ccl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_convert_ccl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccl = type { i32 }

@initial_mbs = common dso_local global i32 0, align 4
@WEOF = common dso_local global i64 0, align 8
@SUPPRESS_PTR = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32, %struct.ccl*, i32)* @convert_ccl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_ccl(i32* %0, i8* %1, i32 %2, %struct.ccl* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ccl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ccl* %3, %struct.ccl** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* @initial_mbs, align 4
  store i32 %16, i32* %12, align 4
  br label %17

17:                                               ; preds = %49, %5
  %18 = load i32*, i32** %7, align 8
  %19 = load i32, i32* %11, align 4
  %20 = call i64 @__fgetwc(i32* %18, i32 %19)
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* @WEOF, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.ccl*, %struct.ccl** %10, align 8
  %29 = load i64, i64* %14, align 8
  %30 = call i64 @inccl(%struct.ccl* %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %23, %17
  %33 = phi i1 [ false, %23 ], [ false, %17 ], [ %31, %27 ]
  br i1 %33, label %34, label %52

34:                                               ; preds = %32
  %35 = load i8*, i8** %8, align 8
  %36 = load i8*, i8** @SUPPRESS_PTR, align 8
  %37 = icmp ne i8* %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i8*, i8** %8, align 8
  %40 = load i64, i64* %14, align 8
  %41 = call i64 @wcrtomb(i8* %39, i64 %40, i32* %12)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* %13, align 8
  %43 = icmp eq i64 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store i32 -1, i32* %6, align 4
  br label %69

45:                                               ; preds = %38
  %46 = load i64, i64* %13, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 %46
  store i8* %48, i8** %8, align 8
  br label %49

49:                                               ; preds = %45, %34
  %50 = load i32, i32* %15, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %15, align 4
  br label %17

52:                                               ; preds = %32
  %53 = load i64, i64* %14, align 8
  %54 = load i64, i64* @WEOF, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load i64, i64* %14, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @__ungetwc(i64 %57, i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %56, %52
  %62 = load i8*, i8** %8, align 8
  %63 = load i8*, i8** @SUPPRESS_PTR, align 8
  %64 = icmp ne i8* %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i8*, i8** %8, align 8
  store i8 0, i8* %66, align 1
  br label %67

67:                                               ; preds = %65, %61
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %67, %44
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i64 @__fgetwc(i32*, i32) #1

declare dso_local i64 @inccl(%struct.ccl*, i64) #1

declare dso_local i64 @wcrtomb(i8*, i64, i32*) #1

declare dso_local i32 @__ungetwc(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
