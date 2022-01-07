; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c_exclusion_bounce_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_busdma_machdep-v6.c_exclusion_bounce_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUS_SPACE_MAXADDR = common dso_local global i64 0, align 8
@phys_avail = common dso_local global i64* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @exclusion_bounce_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exclusion_bounce_check(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = load i64, i64* @BUS_SPACE_MAXADDR, align 8
  %9 = icmp sge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %68

11:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %64, %11
  %13 = load i64*, i64** @phys_avail, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load i64*, i64** @phys_avail, align 8
  %21 = load i32, i32* %6, align 4
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i64, i64* %20, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %19, %12
  %28 = phi i1 [ false, %12 ], [ %26, %19 ]
  br i1 %28, label %29, label %67

29:                                               ; preds = %27
  %30 = load i64, i64* %4, align 8
  %31 = load i64*, i64** @phys_avail, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp sge i64 %30, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i64, i64* %4, align 8
  %39 = load i64*, i64** @phys_avail, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %39, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %38, %44
  br i1 %45, label %62, label %46

46:                                               ; preds = %37, %29
  %47 = load i64, i64* %4, align 8
  %48 = load i64*, i64** @phys_avail, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %47, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load i64, i64* %5, align 8
  %56 = load i64*, i64** @phys_avail, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i64, i64* %56, i64 %58
  %60 = load i64, i64* %59, align 8
  %61 = icmp sge i64 %55, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %54, %37
  store i32 1, i32* %3, align 4
  br label %68

63:                                               ; preds = %54, %46
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 2
  store i32 %66, i32* %6, align 4
  br label %12

67:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %62, %10
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
