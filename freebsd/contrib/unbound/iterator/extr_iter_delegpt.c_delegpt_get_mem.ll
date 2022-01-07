; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_get_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_get_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { i32, %struct.delegpt_ns* }
%struct.delegpt_ns = type { i64, %struct.delegpt_ns* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @delegpt_get_mem(%struct.delegpt* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.delegpt*, align 8
  %4 = alloca %struct.delegpt_ns*, align 8
  %5 = alloca i64, align 8
  store %struct.delegpt* %0, %struct.delegpt** %3, align 8
  %6 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %7 = icmp ne %struct.delegpt* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %39

9:                                                ; preds = %1
  %10 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %11 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = add i64 16, %13
  %15 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %16 = call i32 @delegpt_count_targets(%struct.delegpt* %15)
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = add i64 %14, %18
  store i64 %19, i64* %5, align 8
  %20 = load %struct.delegpt*, %struct.delegpt** %3, align 8
  %21 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %20, i32 0, i32 1
  %22 = load %struct.delegpt_ns*, %struct.delegpt_ns** %21, align 8
  store %struct.delegpt_ns* %22, %struct.delegpt_ns** %4, align 8
  br label %23

23:                                               ; preds = %33, %9
  %24 = load %struct.delegpt_ns*, %struct.delegpt_ns** %4, align 8
  %25 = icmp ne %struct.delegpt_ns* %24, null
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load %struct.delegpt_ns*, %struct.delegpt_ns** %4, align 8
  %28 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 16, %29
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %26
  %34 = load %struct.delegpt_ns*, %struct.delegpt_ns** %4, align 8
  %35 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %34, i32 0, i32 1
  %36 = load %struct.delegpt_ns*, %struct.delegpt_ns** %35, align 8
  store %struct.delegpt_ns* %36, %struct.delegpt_ns** %4, align 8
  br label %23

37:                                               ; preds = %23
  %38 = load i64, i64* %5, align 8
  store i64 %38, i64* %2, align 8
  br label %39

39:                                               ; preds = %37, %8
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

declare dso_local i32 @delegpt_count_targets(%struct.delegpt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
