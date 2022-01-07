; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_algo_needs_missing.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_algo_needs_missing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.algo_needs = type { i32* }

@ALGO_NEEDS_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @algo_needs_missing(%struct.algo_needs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.algo_needs*, align 8
  %4 = alloca i32, align 4
  store %struct.algo_needs* %0, %struct.algo_needs** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %20, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ALGO_NEEDS_MAX, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %5
  %10 = load %struct.algo_needs*, %struct.algo_needs** %3, align 8
  %11 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %44

19:                                               ; preds = %9
  br label %20

20:                                               ; preds = %19
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %4, align 4
  br label %5

23:                                               ; preds = %5
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @ALGO_NEEDS_MAX, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %43

28:                                               ; preds = %24
  %29 = load %struct.algo_needs*, %struct.algo_needs** %3, align 8
  %30 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %44

39:                                               ; preds = %28
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  br label %24

43:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %37, %18
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
