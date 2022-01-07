; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_find_ns.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_find_ns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt_ns = type { i64, %struct.delegpt_ns*, i32 }
%struct.delegpt = type { %struct.delegpt_ns* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.delegpt_ns* @delegpt_find_ns(%struct.delegpt* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.delegpt_ns*, align 8
  %5 = alloca %struct.delegpt*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.delegpt_ns*, align 8
  store %struct.delegpt* %0, %struct.delegpt** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %10 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %9, i32 0, i32 0
  %11 = load %struct.delegpt_ns*, %struct.delegpt_ns** %10, align 8
  store %struct.delegpt_ns* %11, %struct.delegpt_ns** %8, align 8
  br label %12

12:                                               ; preds = %30, %3
  %13 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %14 = icmp ne %struct.delegpt_ns* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %12
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %18 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %15
  %22 = load i32*, i32** %6, align 8
  %23 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %24 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @query_dname_compare(i32* %22, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  store %struct.delegpt_ns* %29, %struct.delegpt_ns** %4, align 8
  br label %35

30:                                               ; preds = %21, %15
  %31 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %32 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %31, i32 0, i32 1
  %33 = load %struct.delegpt_ns*, %struct.delegpt_ns** %32, align 8
  store %struct.delegpt_ns* %33, %struct.delegpt_ns** %8, align 8
  br label %12

34:                                               ; preds = %12
  store %struct.delegpt_ns* null, %struct.delegpt_ns** %4, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.delegpt_ns*, %struct.delegpt_ns** %4, align 8
  ret %struct.delegpt_ns* %36
}

declare dso_local i64 @query_dname_compare(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
