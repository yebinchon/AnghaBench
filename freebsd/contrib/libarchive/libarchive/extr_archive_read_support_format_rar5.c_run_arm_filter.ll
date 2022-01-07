; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_run_arm_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_run_arm_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32, i32, i32 }
%struct.filter_info = type { i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rar5*, %struct.filter_info*)* @run_arm_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_arm_filter(%struct.rar5* %0, %struct.filter_info* %1) #0 {
  %3 = alloca %struct.rar5*, align 8
  %4 = alloca %struct.filter_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.rar5* %0, %struct.rar5** %3, align 8
  store %struct.filter_info* %1, %struct.filter_info** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.rar5*, %struct.rar5** %3, align 8
  %9 = getelementptr inbounds %struct.rar5, %struct.rar5* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.rar5*, %struct.rar5** %3, align 8
  %13 = getelementptr inbounds %struct.rar5, %struct.rar5* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.rar5*, %struct.rar5** %3, align 8
  %17 = getelementptr inbounds %struct.rar5, %struct.rar5* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.rar5*, %struct.rar5** %3, align 8
  %21 = getelementptr inbounds %struct.rar5, %struct.rar5* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %25 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %23, %26
  %28 = load %struct.rar5*, %struct.rar5** %3, align 8
  %29 = getelementptr inbounds %struct.rar5, %struct.rar5* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %33 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  %36 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %37 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %35, %38
  %40 = call i32 @circular_memcpy(i32 %11, i32* %15, i32 %19, i32 %27, i32 %39)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %109, %2
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %44 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 3
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %112

48:                                               ; preds = %41
  %49 = load %struct.rar5*, %struct.rar5** %3, align 8
  %50 = getelementptr inbounds %struct.rar5, %struct.rar5* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.rar5*, %struct.rar5** %3, align 8
  %54 = getelementptr inbounds %struct.rar5, %struct.rar5* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %58 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %60, %61
  %63 = add nsw i32 %62, 3
  %64 = load %struct.rar5*, %struct.rar5** %3, align 8
  %65 = getelementptr inbounds %struct.rar5, %struct.rar5* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %63, %67
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %52, i64 %69
  store i32* %70, i32** %7, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 235
  br i1 %73, label %74, label %108

74:                                               ; preds = %48
  %75 = load %struct.rar5*, %struct.rar5** %3, align 8
  %76 = load %struct.rar5*, %struct.rar5** %3, align 8
  %77 = getelementptr inbounds %struct.rar5, %struct.rar5* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %81 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %83, %84
  %86 = load %struct.rar5*, %struct.rar5** %3, align 8
  %87 = getelementptr inbounds %struct.rar5, %struct.rar5* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %85, %89
  %91 = call i32 @read_filter_data(%struct.rar5* %75, i32 %90)
  %92 = and i32 %91, 16777215
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.filter_info*, %struct.filter_info** %4, align 8
  %95 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = sdiv i32 %97, 4
  %99 = load i32, i32* %6, align 4
  %100 = sub nsw i32 %99, %98
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = and i32 %101, 16777215
  %103 = or i32 %102, -352321536
  store i32 %103, i32* %6, align 4
  %104 = load %struct.rar5*, %struct.rar5** %3, align 8
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @write_filter_data(%struct.rar5* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %74, %48
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 4
  store i32 %111, i32* %5, align 4
  br label %41

112:                                              ; preds = %41
  %113 = load i32, i32* @ARCHIVE_OK, align 4
  ret i32 %113
}

declare dso_local i32 @circular_memcpy(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @read_filter_data(%struct.rar5*, i32) #1

declare dso_local i32 @write_filter_data(%struct.rar5*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
