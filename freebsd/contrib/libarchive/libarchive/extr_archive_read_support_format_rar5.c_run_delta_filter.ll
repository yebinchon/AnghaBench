; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_run_delta_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_run_delta_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64*, i64* }
%struct.filter_info = type { i32, i64, i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rar5*, %struct.filter_info*)* @run_delta_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_delta_filter(%struct.rar5* %0, %struct.filter_info* %1) #0 {
  %3 = alloca %struct.rar5*, align 8
  %4 = alloca %struct.filter_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rar5* %0, %struct.rar5** %3, align 8
  store %struct.filter_info* %1, %struct.filter_info** %4, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %67, %2
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %13 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %10
  store i64 0, i64* %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %6, align 8
  br label %19

19:                                               ; preds = %59, %16
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %22 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %20, %23
  br i1 %24, label %25, label %66

25:                                               ; preds = %19
  %26 = load %struct.rar5*, %struct.rar5** %3, align 8
  %27 = getelementptr inbounds %struct.rar5, %struct.rar5* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 3
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.rar5*, %struct.rar5** %3, align 8
  %31 = getelementptr inbounds %struct.rar5, %struct.rar5* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %35 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %33, %36
  %38 = load i64, i64* %7, align 8
  %39 = add i64 %37, %38
  %40 = load %struct.rar5*, %struct.rar5** %3, align 8
  %41 = getelementptr inbounds %struct.rar5, %struct.rar5* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %39, %43
  %45 = getelementptr inbounds i64, i64* %29, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub nsw i64 %48, %47
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load %struct.rar5*, %struct.rar5** %3, align 8
  %52 = getelementptr inbounds %struct.rar5, %struct.rar5* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64*, i64** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i64, i64* %54, i64 %55
  store i64 %50, i64* %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %59

59:                                               ; preds = %25
  %60 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %61 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %6, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %6, align 8
  br label %19

66:                                               ; preds = %19
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %10

70:                                               ; preds = %10
  %71 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %71
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
