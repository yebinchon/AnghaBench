; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.alloc.c_findbucket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_tc.alloc.c_findbucket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.overhead = type { %union.overhead* }

@NBUCKETS = common dso_local global i64 0, align 8
@nextf = common dso_local global %union.overhead** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.overhead*, i32)* @findbucket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @findbucket(%union.overhead* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %union.overhead*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.overhead*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %union.overhead* %0, %union.overhead** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %42, %2
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @NBUCKETS, align 8
  %12 = icmp ult i64 %10, %11
  br i1 %12, label %13, label %45

13:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  %14 = load %union.overhead**, %union.overhead*** @nextf, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds %union.overhead*, %union.overhead** %14, i64 %15
  %17 = load %union.overhead*, %union.overhead** %16, align 8
  store %union.overhead* %17, %union.overhead** %6, align 8
  br label %18

18:                                               ; preds = %37, %13
  %19 = load %union.overhead*, %union.overhead** %6, align 8
  %20 = icmp ne %union.overhead* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %22, %23
  br label %25

25:                                               ; preds = %21, %18
  %26 = phi i1 [ false, %18 ], [ %24, %21 ]
  br i1 %26, label %27, label %41

27:                                               ; preds = %25
  %28 = load %union.overhead*, %union.overhead** %6, align 8
  %29 = load %union.overhead*, %union.overhead** %4, align 8
  %30 = icmp eq %union.overhead* %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %3, align 4
  br label %46

34:                                               ; preds = %27
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %34
  %38 = load %union.overhead*, %union.overhead** %6, align 8
  %39 = bitcast %union.overhead* %38 to %union.overhead**
  %40 = load %union.overhead*, %union.overhead** %39, align 8
  store %union.overhead* %40, %union.overhead** %6, align 8
  br label %18

41:                                               ; preds = %25
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %9

45:                                               ; preds = %9
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %31
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
