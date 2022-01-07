; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_memcpy_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-debug.c_cvmx_debug_memcpy_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @cvmx_debug_memcpy_align to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cvmx_debug_memcpy_align(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %7, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to i64*
  store i64* %18, i64** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 40
  br i1 %20, label %21, label %52

21:                                               ; preds = %3
  %22 = load i64*, i64** %8, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %11, align 8
  %28 = load i64*, i64** %8, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 3
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %13, align 8
  %34 = load i64*, i64** %8, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 4
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %14, align 8
  %37 = load i64, i64* %10, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 0
  store i64 %37, i64* %39, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i64*, i64** %7, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 %40, i64* %42, align 8
  %43 = load i64, i64* %12, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 2
  store i64 %43, i64* %45, align 8
  %46 = load i64, i64* %13, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  store i64 %46, i64* %48, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i64*, i64** %7, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 4
  store i64 %49, i64* %51, align 8
  br label %68

52:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %65, %52
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %53
  %58 = load i64*, i64** %8, align 8
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %7, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = getelementptr inbounds i64, i64* %61, i32 1
  store i64* %62, i64** %7, align 8
  %63 = load i64*, i64** %8, align 8
  %64 = getelementptr inbounds i64, i64* %63, i32 1
  store i64* %64, i64** %8, align 8
  br label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 8
  store i32 %67, i32* %9, align 4
  br label %53

68:                                               ; preds = %21, %53
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
