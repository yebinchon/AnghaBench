; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_algo_needs_set_secure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/validator/extr_val_sigcrypt.c_algo_needs_set_secure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.algo_needs = type { i64, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @algo_needs_set_secure(%struct.algo_needs* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.algo_needs*, align 8
  %5 = alloca i64, align 8
  store %struct.algo_needs* %0, %struct.algo_needs** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.algo_needs*, %struct.algo_needs** %4, align 8
  %7 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %6, i32 0, i32 1
  %8 = load i64*, i64** %7, align 8
  %9 = load i64, i64* %5, align 8
  %10 = getelementptr inbounds i64, i64* %8, i64 %9
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.algo_needs*, %struct.algo_needs** %4, align 8
  %15 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds i64, i64* %16, i64 %17
  store i64 0, i64* %18, align 8
  %19 = load %struct.algo_needs*, %struct.algo_needs** %4, align 8
  %20 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.algo_needs*, %struct.algo_needs** %4, align 8
  %24 = getelementptr inbounds %struct.algo_needs, %struct.algo_needs* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %30

28:                                               ; preds = %13
  br label %29

29:                                               ; preds = %28, %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %27
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
