; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_merge_byte_arrays.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/utils/extr_common.c_merge_byte_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @merge_byte_arrays(i32* %0, i64 %1, i32* %2, i64 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load i64, i64* %9, align 8
  %17 = call i32 @os_memset(i32* %15, i32 0, i64 %16)
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %38

20:                                               ; preds = %6
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %9, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i32*, i32** %8, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @os_memcpy(i32* %25, i32* %26, i64 %27)
  %29 = load i64, i64* %9, align 8
  store i64 %29, i64* %7, align 8
  br label %69

30:                                               ; preds = %20
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @os_memcpy(i32* %31, i32* %32, i64 %33)
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %14, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %14, align 8
  br label %38

38:                                               ; preds = %30, %6
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %67

41:                                               ; preds = %38
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %13, align 8
  %44 = add i64 %42, %43
  %45 = load i64, i64* %9, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %14, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32*, i32** %12, align 8
  %52 = load i64, i64* %9, align 8
  %53 = load i64, i64* %14, align 8
  %54 = sub i64 %52, %53
  %55 = call i32 @os_memcpy(i32* %50, i32* %51, i64 %54)
  %56 = load i64, i64* %9, align 8
  store i64 %56, i64* %7, align 8
  br label %69

57:                                               ; preds = %41
  %58 = load i32*, i32** %8, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  %61 = load i32*, i32** %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i32 @os_memcpy(i32* %60, i32* %61, i64 %62)
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %14, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %14, align 8
  br label %67

67:                                               ; preds = %57, %38
  %68 = load i64, i64* %14, align 8
  store i64 %68, i64* %7, align 8
  br label %69

69:                                               ; preds = %67, %47, %24
  %70 = load i64, i64* %7, align 8
  ret i64 %70
}

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
