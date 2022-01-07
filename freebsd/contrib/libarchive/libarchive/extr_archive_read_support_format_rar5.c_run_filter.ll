; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_run_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_run_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.filter_info = type { i32, i32 }
%struct.rar5 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Can't allocate memory for filter data.\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported filter type: 0x%x\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"Stack overflow when submitting unpacked data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.filter_info*)* @run_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_filter(%struct.archive_read* %0, %struct.filter_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.filter_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rar5*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.filter_info* %1, %struct.filter_info** %5, align 8
  %8 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %9 = call %struct.rar5* @get_context(%struct.archive_read* %8)
  store %struct.rar5* %9, %struct.rar5** %7, align 8
  %10 = load %struct.rar5*, %struct.rar5** %7, align 8
  %11 = getelementptr inbounds %struct.rar5, %struct.rar5* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @free(i32 %13)
  %15 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %16 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @malloc(i32 %17)
  %19 = load %struct.rar5*, %struct.rar5** %7, align 8
  %20 = getelementptr inbounds %struct.rar5, %struct.rar5* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.rar5*, %struct.rar5** %7, align 8
  %23 = getelementptr inbounds %struct.rar5, %struct.rar5* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %2
  %28 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %29 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %28, i32 0, i32 0
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %29, i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %32, i32* %3, align 4
  br label %102

33:                                               ; preds = %2
  %34 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %35 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %54 [
    i32 130, label %37
    i32 129, label %41
    i32 128, label %41
    i32 131, label %50
  ]

37:                                               ; preds = %33
  %38 = load %struct.rar5*, %struct.rar5** %7, align 8
  %39 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %40 = call i32 @run_delta_filter(%struct.rar5* %38, %struct.filter_info* %39)
  store i32 %40, i32* %6, align 4
  br label %63

41:                                               ; preds = %33, %33
  %42 = load %struct.rar5*, %struct.rar5** %7, align 8
  %43 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %44 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %45 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 128
  %48 = zext i1 %47 to i32
  %49 = call i32 @run_e8e9_filter(%struct.rar5* %42, %struct.filter_info* %43, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %63

50:                                               ; preds = %33
  %51 = load %struct.rar5*, %struct.rar5** %7, align 8
  %52 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %53 = call i32 @run_arm_filter(%struct.rar5* %51, %struct.filter_info* %52)
  store i32 %53, i32* %6, align 4
  br label %63

54:                                               ; preds = %33
  %55 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %56 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %55, i32 0, i32 0
  %57 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %58 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %59 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %56, i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %62, i32* %3, align 4
  br label %102

63:                                               ; preds = %50, %41, %37
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ARCHIVE_OK, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %102

69:                                               ; preds = %63
  %70 = load i32, i32* @ARCHIVE_OK, align 4
  %71 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %72 = load %struct.rar5*, %struct.rar5** %7, align 8
  %73 = load %struct.rar5*, %struct.rar5** %7, align 8
  %74 = getelementptr inbounds %struct.rar5, %struct.rar5* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %78 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.rar5*, %struct.rar5** %7, align 8
  %81 = getelementptr inbounds %struct.rar5, %struct.rar5* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @push_data_ready(%struct.archive_read* %71, %struct.rar5* %72, i32 %76, i32 %79, i32 %83)
  %85 = icmp ne i32 %70, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %69
  %87 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %88 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %87, i32 0, i32 0
  %89 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %90 = call i32 (i32*, i32, i8*, ...) @archive_set_error(i32* %88, i32 %89, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %91, i32* %3, align 4
  br label %102

92:                                               ; preds = %69
  %93 = load %struct.filter_info*, %struct.filter_info** %5, align 8
  %94 = getelementptr inbounds %struct.filter_info, %struct.filter_info* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.rar5*, %struct.rar5** %7, align 8
  %97 = getelementptr inbounds %struct.rar5, %struct.rar5* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %95
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %92, %86, %67, %54, %27
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i32 @free(i32) #1

declare dso_local i32 @malloc(i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, ...) #1

declare dso_local i32 @run_delta_filter(%struct.rar5*, %struct.filter_info*) #1

declare dso_local i32 @run_e8e9_filter(%struct.rar5*, %struct.filter_info*, i32) #1

declare dso_local i32 @run_arm_filter(%struct.rar5*, %struct.filter_info*) #1

declare dso_local i32 @push_data_ready(%struct.archive_read*, %struct.rar5*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
