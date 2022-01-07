; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_dp_cangodown.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/iterator/extr_iter_utils.c_iter_dp_cangodown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.query_info = type { i32 }
%struct.delegpt = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iter_dp_cangodown(%struct.query_info* %0, %struct.delegpt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.query_info*, align 8
  %5 = alloca %struct.delegpt*, align 8
  store %struct.query_info* %0, %struct.query_info** %4, align 8
  store %struct.delegpt* %1, %struct.delegpt** %5, align 8
  %6 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %7 = icmp ne %struct.delegpt* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

9:                                                ; preds = %2
  %10 = load %struct.query_info*, %struct.query_info** %4, align 8
  %11 = getelementptr inbounds %struct.query_info, %struct.query_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %14 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @query_dname_compare(i32 %12, i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %31

19:                                               ; preds = %9
  %20 = load %struct.query_info*, %struct.query_info** %4, align 8
  %21 = getelementptr inbounds %struct.query_info, %struct.query_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @dname_count_labels(i32 %22)
  %24 = load %struct.delegpt*, %struct.delegpt** %5, align 8
  %25 = getelementptr inbounds %struct.delegpt, %struct.delegpt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1
  %28 = icmp eq i64 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %31

30:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %30, %29, %18, %8
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i64 @query_dname_compare(i32, i32) #1

declare dso_local i64 @dname_count_labels(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
