; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_add_128.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/dtrace/extr_dtrace.c_dtrace_add_128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, i64*)* @dtrace_add_128 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_add_128(i64* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca [2 x i64], align 16
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %10, %13
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %14, i64* %15, align 16
  %16 = load i64*, i64** %4, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %24 = load i64, i64* %23, align 16
  %25 = load i64*, i64** %4, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp slt i64 %24, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %3
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %31 = load i64, i64* %30, align 16
  %32 = load i64*, i64** %5, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br label %36

36:                                               ; preds = %29, %3
  %37 = phi i1 [ true, %3 ], [ %35, %29 ]
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %22, %40
  %42 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %41, i64* %42, align 8
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = load i64*, i64** %6, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %44, i64* %46, align 8
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %6, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  store i64 %48, i64* %50, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
