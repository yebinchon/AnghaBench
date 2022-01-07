; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_count_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_count_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_addr*, %struct.delegpt_addr*, %struct.delegpt_addr* }
%struct.delegpt_addr = type { %struct.delegpt_addr*, %struct.delegpt_addr*, %struct.delegpt_addr* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delegpt_count_addr(%struct.delegpt* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca %struct.delegpt*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.delegpt_addr*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load i64*, i64** %6, align 8
  store i64 0, i64* %10, align 8
  %11 = load i64*, i64** %7, align 8
  store i64 0, i64* %11, align 8
  %12 = load i64*, i64** %8, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %14 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %13, i32 0, i32 2
  %15 = load %struct.delegpt_addr*, %struct.delegpt_addr** %14, align 8
  store %struct.delegpt_addr* %15, %struct.delegpt_addr** %9, align 8
  br label %16

16:                                               ; preds = %23, %4
  %17 = load %struct.delegpt_addr*, %struct.delegpt_addr** %9, align 8
  %18 = icmp ne %struct.delegpt_addr* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i64*, i64** %6, align 8
  %21 = load i64, i64* %20, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %20, align 8
  br label %23

23:                                               ; preds = %19
  %24 = load %struct.delegpt_addr*, %struct.delegpt_addr** %9, align 8
  %25 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %24, i32 0, i32 2
  %26 = load %struct.delegpt_addr*, %struct.delegpt_addr** %25, align 8
  store %struct.delegpt_addr* %26, %struct.delegpt_addr** %9, align 8
  br label %16

27:                                               ; preds = %16
  %28 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %29 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %28, i32 0, i32 1
  %30 = load %struct.delegpt_addr*, %struct.delegpt_addr** %29, align 8
  store %struct.delegpt_addr* %30, %struct.delegpt_addr** %9, align 8
  br label %31

31:                                               ; preds = %38, %27
  %32 = load %struct.delegpt_addr*, %struct.delegpt_addr** %9, align 8
  %33 = icmp ne %struct.delegpt_addr* %32, null
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %34
  %39 = load %struct.delegpt_addr*, %struct.delegpt_addr** %9, align 8
  %40 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %39, i32 0, i32 1
  %41 = load %struct.delegpt_addr*, %struct.delegpt_addr** %40, align 8
  store %struct.delegpt_addr* %41, %struct.delegpt_addr** %9, align 8
  br label %31

42:                                               ; preds = %31
  %43 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %44 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %43, i32 0, i32 0
  %45 = load %struct.delegpt_addr*, %struct.delegpt_addr** %44, align 8
  store %struct.delegpt_addr* %45, %struct.delegpt_addr** %9, align 8
  br label %46

46:                                               ; preds = %53, %42
  %47 = load %struct.delegpt_addr*, %struct.delegpt_addr** %9, align 8
  %48 = icmp ne %struct.delegpt_addr* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load i64*, i64** %8, align 8
  %51 = load i64, i64* %50, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %50, align 8
  br label %53

53:                                               ; preds = %49
  %54 = load %struct.delegpt_addr*, %struct.delegpt_addr** %9, align 8
  %55 = getelementptr inbounds %struct.delegpt_addr, %struct.delegpt_addr* %54, i32 0, i32 0
  %56 = load %struct.delegpt_addr*, %struct.delegpt_addr** %55, align 8
  store %struct.delegpt_addr* %56, %struct.delegpt_addr** %9, align 8
  br label %46

57:                                               ; preds = %46
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
