; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_convert_wccl.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_vfwscanf.c_convert_wccl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccl = type { i32 }

@SUPPRESS_PTR = common dso_local global i64* null, align 8
@WEOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64*, i32, %struct.ccl*, i32)* @convert_wccl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @convert_wccl(i32* %0, i64* %1, i32 %2, %struct.ccl* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ccl*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i64* %1, i64** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ccl* %3, %struct.ccl** %10, align 8
  store i32 %4, i32* %11, align 4
  %15 = load i64*, i64** %8, align 8
  %16 = load i64*, i64** @SUPPRESS_PTR, align 8
  %17 = icmp eq i64* %15, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %11, align 4
  %22 = call i64 @__fgetwc(i32* %20, i32 %21)
  store i64 %22, i64* %13, align 8
  %23 = load i64, i64* @WEOF, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %9, align 4
  %28 = icmp ne i32 %26, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25
  %30 = load %struct.ccl*, %struct.ccl** %10, align 8
  %31 = load i64, i64* %13, align 8
  %32 = call i64 @inccl(%struct.ccl* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br label %34

34:                                               ; preds = %29, %25, %19
  %35 = phi i1 [ false, %25 ], [ false, %19 ], [ %33, %29 ]
  br i1 %35, label %36, label %39

36:                                               ; preds = %34
  %37 = load i32, i32* %14, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %14, align 4
  br label %19

39:                                               ; preds = %34
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* @WEOF, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load i64, i64* %13, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @__ungetwc(i64 %44, i32* %45, i32 %46)
  br label %48

48:                                               ; preds = %43, %39
  br label %94

49:                                               ; preds = %5
  %50 = load i64*, i64** %8, align 8
  store i64* %50, i64** %12, align 8
  br label %51

51:                                               ; preds = %68, %49
  %52 = load i32*, i32** %7, align 8
  %53 = load i32, i32* %11, align 4
  %54 = call i64 @__fgetwc(i32* %52, i32 %53)
  store i64 %54, i64* %13, align 8
  %55 = load i64, i64* @WEOF, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %51
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %9, align 4
  %60 = icmp ne i32 %58, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %57
  %62 = load %struct.ccl*, %struct.ccl** %10, align 8
  %63 = load i64, i64* %13, align 8
  %64 = call i64 @inccl(%struct.ccl* %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %61, %57, %51
  %67 = phi i1 [ false, %57 ], [ false, %51 ], [ %65, %61 ]
  br i1 %67, label %68, label %72

68:                                               ; preds = %66
  %69 = load i64, i64* %13, align 8
  %70 = load i64*, i64** %8, align 8
  %71 = getelementptr inbounds i64, i64* %70, i32 1
  store i64* %71, i64** %8, align 8
  store i64 %69, i64* %70, align 8
  br label %51

72:                                               ; preds = %66
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* @WEOF, align 8
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i64, i64* %13, align 8
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @__ungetwc(i64 %77, i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %72
  %82 = load i64*, i64** %8, align 8
  %83 = load i64*, i64** %12, align 8
  %84 = ptrtoint i64* %82 to i64
  %85 = ptrtoint i64* %83 to i64
  %86 = sub i64 %84, %85
  %87 = sdiv exact i64 %86, 8
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  store i32 0, i32* %6, align 4
  br label %96

92:                                               ; preds = %81
  %93 = load i64*, i64** %8, align 8
  store i64 0, i64* %93, align 8
  br label %94

94:                                               ; preds = %92, %48
  %95 = load i32, i32* %14, align 4
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %94, %91
  %97 = load i32, i32* %6, align 4
  ret i32 %97
}

declare dso_local i64 @__fgetwc(i32*, i32) #1

declare dso_local i64 @inccl(%struct.ccl*, i64) #1

declare dso_local i32 @__ungetwc(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
