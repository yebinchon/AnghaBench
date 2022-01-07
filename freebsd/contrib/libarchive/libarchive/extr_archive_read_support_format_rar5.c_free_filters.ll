; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_free_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_free_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, %struct.cdeque }
%struct.cdeque = type { i32 }
%struct.filter_info = type { i32 }

@CDE_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rar5*)* @free_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_filters(%struct.rar5* %0) #0 {
  %2 = alloca %struct.rar5*, align 8
  %3 = alloca %struct.cdeque*, align 8
  %4 = alloca %struct.filter_info*, align 8
  store %struct.rar5* %0, %struct.rar5** %2, align 8
  %5 = load %struct.rar5*, %struct.rar5** %2, align 8
  %6 = getelementptr inbounds %struct.rar5, %struct.rar5* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 2
  store %struct.cdeque* %7, %struct.cdeque** %3, align 8
  br label %8

8:                                                ; preds = %21, %1
  %9 = load %struct.cdeque*, %struct.cdeque** %3, align 8
  %10 = call i64 @cdeque_size(%struct.cdeque* %9)
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  store %struct.filter_info* null, %struct.filter_info** %4, align 8
  %13 = load i64, i64* @CDE_OK, align 8
  %14 = load %struct.cdeque*, %struct.cdeque** %3, align 8
  %15 = call i32 @cdeque_filter_p(%struct.filter_info** %4)
  %16 = call i64 @cdeque_pop_front(%struct.cdeque* %14, i32 %15)
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %20 = call i32 @free(%struct.filter_info* %19)
  br label %21

21:                                               ; preds = %18, %12
  br label %8

22:                                               ; preds = %8
  %23 = load %struct.cdeque*, %struct.cdeque** %3, align 8
  %24 = call i32 @cdeque_clear(%struct.cdeque* %23)
  %25 = load %struct.rar5*, %struct.rar5** %2, align 8
  %26 = getelementptr inbounds %struct.rar5, %struct.rar5* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.rar5*, %struct.rar5** %2, align 8
  %29 = getelementptr inbounds %struct.rar5, %struct.rar5* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  ret void
}

declare dso_local i64 @cdeque_size(%struct.cdeque*) #1

declare dso_local i64 @cdeque_pop_front(%struct.cdeque*, i32) #1

declare dso_local i32 @cdeque_filter_p(%struct.filter_info**) #1

declare dso_local i32 @free(%struct.filter_info*) #1

declare dso_local i32 @cdeque_clear(%struct.cdeque*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
