; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_apply_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_apply_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.filter_info = type { i64, i64 }
%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i64, i32 }

@CDE_OK = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @apply_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apply_filters(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.filter_info*, align 8
  %5 = alloca %struct.rar5*, align 8
  %6 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %8 = call %struct.rar5* @get_context(%struct.archive_read* %7)
  store %struct.rar5* %8, %struct.rar5** %5, align 8
  %9 = load %struct.rar5*, %struct.rar5** %5, align 8
  %10 = getelementptr inbounds %struct.rar5, %struct.rar5* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 0, i32* %11, align 8
  %12 = load i64, i64* @CDE_OK, align 8
  %13 = load %struct.rar5*, %struct.rar5** %5, align 8
  %14 = getelementptr inbounds %struct.rar5, %struct.rar5* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = call i32 @cdeque_filter_p(%struct.filter_info** %4)
  %17 = call i64 @cdeque_front(i32* %15, i32 %16)
  %18 = icmp eq i64 %12, %17
  br i1 %18, label %19, label %81

19:                                               ; preds = %1
  %20 = load %struct.rar5*, %struct.rar5** %5, align 8
  %21 = getelementptr inbounds %struct.rar5, %struct.rar5* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %25 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %19
  %29 = load %struct.rar5*, %struct.rar5** %5, align 8
  %30 = getelementptr inbounds %struct.rar5, %struct.rar5* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %34 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %37 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = icmp sge i64 %32, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %28
  %42 = load %struct.rar5*, %struct.rar5** %5, align 8
  %43 = getelementptr inbounds %struct.rar5, %struct.rar5* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %47 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %45, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %41
  %51 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %52 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %53 = call i32 @run_filter(%struct.archive_read* %51, %struct.filter_info* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @ARCHIVE_OK, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %86

59:                                               ; preds = %50
  %60 = load %struct.rar5*, %struct.rar5** %5, align 8
  %61 = getelementptr inbounds %struct.rar5, %struct.rar5* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = call i32 @cdeque_filter_p(%struct.filter_info** %4)
  %64 = call i32 @cdeque_pop_front(i32* %62, i32 %63)
  %65 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %66 = call i32 @free(%struct.filter_info* %65)
  br label %78

67:                                               ; preds = %41
  %68 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %69 = load %struct.rar5*, %struct.rar5** %5, align 8
  %70 = load %struct.rar5*, %struct.rar5** %5, align 8
  %71 = getelementptr inbounds %struct.rar5, %struct.rar5* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %75 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @push_window_data(%struct.archive_read* %68, %struct.rar5* %69, i64 %73, i64 %76)
  br label %78

78:                                               ; preds = %67, %59
  %79 = load i32, i32* @ARCHIVE_RETRY, align 4
  store i32 %79, i32* %2, align 4
  br label %86

80:                                               ; preds = %28, %19
  br label %81

81:                                               ; preds = %80, %1
  %82 = load %struct.rar5*, %struct.rar5** %5, align 8
  %83 = getelementptr inbounds %struct.rar5, %struct.rar5* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %81, %78, %57
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i64 @cdeque_front(i32*, i32) #1

declare dso_local i32 @cdeque_filter_p(%struct.filter_info**) #1

declare dso_local i32 @run_filter(%struct.archive_read*, %struct.filter_info*) #1

declare dso_local i32 @cdeque_pop_front(i32*, i32) #1

declare dso_local i32 @free(%struct.filter_info*) #1

declare dso_local i32 @push_window_data(%struct.archive_read*, %struct.rar5*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
