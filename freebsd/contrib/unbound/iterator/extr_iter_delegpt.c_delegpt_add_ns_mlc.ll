; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_ns_mlc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_delegpt.c_delegpt_add_ns_mlc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delegpt = type { %struct.delegpt_ns*, i32 }
%struct.delegpt_ns = type { i64, i64, i64, i64, i64, i64, i64, %struct.delegpt_ns*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @delegpt_add_ns_mlc(%struct.delegpt* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.delegpt*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.delegpt_ns*, align 8
  %9 = alloca i64, align 8
  store %struct.delegpt* %0, %struct.delegpt** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64*, i64** %6, align 8
  %11 = call i32 @dname_count_size_labels(i64* %10, i64* %9)
  %12 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %13 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @log_assert(i32 %14)
  %16 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = load i64, i64* %9, align 8
  %19 = call i64 @delegpt_find_ns(%struct.delegpt* %16, i64* %17, i64 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %68

22:                                               ; preds = %3
  %23 = call i64 @malloc(i32 72)
  %24 = inttoptr i64 %23 to %struct.delegpt_ns*
  store %struct.delegpt_ns* %24, %struct.delegpt_ns** %8, align 8
  %25 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %26 = icmp ne %struct.delegpt_ns* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %68

28:                                               ; preds = %22
  %29 = load i64, i64* %9, align 8
  %30 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %31 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i64*, i64** %6, align 8
  %33 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %34 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @memdup(i64* %32, i64 %35)
  %37 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %38 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %37, i32 0, i32 8
  store i32 %36, i32* %38, align 8
  %39 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %40 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %39, i32 0, i32 8
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %28
  %44 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %45 = call i32 @free(%struct.delegpt_ns* %44)
  store i32 0, i32* %4, align 4
  br label %68

46:                                               ; preds = %28
  %47 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %48 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %47, i32 0, i32 0
  %49 = load %struct.delegpt_ns*, %struct.delegpt_ns** %48, align 8
  %50 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %51 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %50, i32 0, i32 7
  store %struct.delegpt_ns* %49, %struct.delegpt_ns** %51, align 8
  %52 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %53 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %54 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %53, i32 0, i32 0
  store %struct.delegpt_ns* %52, %struct.delegpt_ns** %54, align 8
  %55 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %56 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %55, i32 0, i32 6
  store i64 0, i64* %56, align 8
  %57 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %58 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %57, i32 0, i32 5
  store i64 0, i64* %58, align 8
  %59 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %60 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %59, i32 0, i32 4
  store i64 0, i64* %60, align 8
  %61 = load i64, i64* %7, align 8
  %62 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %63 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %62, i32 0, i32 3
  store i64 %61, i64* %63, align 8
  %64 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %65 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.delegpt_ns*, %struct.delegpt_ns** %8, align 8
  %67 = getelementptr inbounds %struct.delegpt_ns, %struct.delegpt_ns* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  store i32 1, i32* %4, align 4
  br label %68

68:                                               ; preds = %46, %43, %27, %21
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @dname_count_size_labels(i64*, i64*) #1

declare dso_local i32 @log_assert(i32) #1

declare dso_local i64 @delegpt_find_ns(%struct.delegpt*, i64*, i64) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memdup(i64*, i64) #1

declare dso_local i32 @free(%struct.delegpt_ns*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
