; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_choose_filters.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_choose_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__, %struct.archive_read_filter*, %struct.archive_read_filter_bidder* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.archive_read_filter = type { %struct.archive_read_filter*, %struct.archive_read*, %struct.archive_read_filter_bidder*, i32, i32 }
%struct.archive_read_filter_bidder = type { i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter.0*)*, i32 (%struct.archive_read_filter.1*)* }
%struct.archive_read_filter.0 = type opaque
%struct.archive_read_filter.1 = type opaque

@MAX_NUMBER_FILTERS = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Input requires too many filters for decoding\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @choose_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @choose_filters(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive_read_filter_bidder*, align 8
  %10 = alloca %struct.archive_read_filter_bidder*, align 8
  %11 = alloca %struct.archive_read_filter*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %124, %1
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @MAX_NUMBER_FILTERS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %127

18:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store %struct.archive_read_filter_bidder* null, %struct.archive_read_filter_bidder** %10, align 8
  %19 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %20 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %19, i32 0, i32 2
  %21 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %20, align 8
  store %struct.archive_read_filter_bidder* %21, %struct.archive_read_filter_bidder** %9, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %49, %18
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %22
  %27 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %9, align 8
  %28 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %27, i32 0, i32 0
  %29 = load i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter.0*)*, i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter.0*)** %28, align 8
  %30 = icmp ne i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter.0*)* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %26
  %32 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %9, align 8
  %33 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %32, i32 0, i32 0
  %34 = load i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter.0*)*, i32 (%struct.archive_read_filter_bidder*, %struct.archive_read_filter.0*)** %33, align 8
  %35 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %9, align 8
  %36 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %37 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %36, i32 0, i32 1
  %38 = load %struct.archive_read_filter*, %struct.archive_read_filter** %37, align 8
  %39 = bitcast %struct.archive_read_filter* %38 to %struct.archive_read_filter.0*
  %40 = call i32 %34(%struct.archive_read_filter_bidder* %35, %struct.archive_read_filter.0* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %7, align 4
  %46 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %9, align 8
  store %struct.archive_read_filter_bidder* %46, %struct.archive_read_filter_bidder** %10, align 8
  br label %47

47:                                               ; preds = %44, %31
  br label %48

48:                                               ; preds = %47, %26
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  %52 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %9, align 8
  %53 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %52, i32 1
  store %struct.archive_read_filter_bidder* %53, %struct.archive_read_filter_bidder** %9, align 8
  br label %22

54:                                               ; preds = %22
  %55 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %10, align 8
  %56 = icmp eq %struct.archive_read_filter_bidder* %55, null
  br i1 %56, label %57, label %86

57:                                               ; preds = %54
  %58 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %59 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %58, i32 0, i32 1
  %60 = load %struct.archive_read_filter*, %struct.archive_read_filter** %59, align 8
  %61 = call i32 @__archive_read_filter_ahead(%struct.archive_read_filter* %60, i32 1, i64* %12)
  %62 = load i64, i64* %12, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %66 = call i32 @__archive_read_free_filters(%struct.archive_read* %65)
  %67 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %67, i32* %2, align 4
  br label %133

68:                                               ; preds = %57
  %69 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %70 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %69, i32 0, i32 1
  %71 = load %struct.archive_read_filter*, %struct.archive_read_filter** %70, align 8
  %72 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %75 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %78 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %77, i32 0, i32 1
  %79 = load %struct.archive_read_filter*, %struct.archive_read_filter** %78, align 8
  %80 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %83 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %85, i32* %2, align 4
  br label %133

86:                                               ; preds = %54
  %87 = call i64 @calloc(i32 1, i32 32)
  %88 = inttoptr i64 %87 to %struct.archive_read_filter*
  store %struct.archive_read_filter* %88, %struct.archive_read_filter** %11, align 8
  %89 = load %struct.archive_read_filter*, %struct.archive_read_filter** %11, align 8
  %90 = icmp eq %struct.archive_read_filter* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %92, i32* %2, align 4
  br label %133

93:                                               ; preds = %86
  %94 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %10, align 8
  %95 = load %struct.archive_read_filter*, %struct.archive_read_filter** %11, align 8
  %96 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %95, i32 0, i32 2
  store %struct.archive_read_filter_bidder* %94, %struct.archive_read_filter_bidder** %96, align 8
  %97 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %98 = load %struct.archive_read_filter*, %struct.archive_read_filter** %11, align 8
  %99 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %98, i32 0, i32 1
  store %struct.archive_read* %97, %struct.archive_read** %99, align 8
  %100 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %101 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %100, i32 0, i32 1
  %102 = load %struct.archive_read_filter*, %struct.archive_read_filter** %101, align 8
  %103 = load %struct.archive_read_filter*, %struct.archive_read_filter** %11, align 8
  %104 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %103, i32 0, i32 0
  store %struct.archive_read_filter* %102, %struct.archive_read_filter** %104, align 8
  %105 = load %struct.archive_read_filter*, %struct.archive_read_filter** %11, align 8
  %106 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %107 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %106, i32 0, i32 1
  store %struct.archive_read_filter* %105, %struct.archive_read_filter** %107, align 8
  %108 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %10, align 8
  %109 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %108, i32 0, i32 1
  %110 = load i32 (%struct.archive_read_filter.1*)*, i32 (%struct.archive_read_filter.1*)** %109, align 8
  %111 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %112 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %111, i32 0, i32 1
  %113 = load %struct.archive_read_filter*, %struct.archive_read_filter** %112, align 8
  %114 = bitcast %struct.archive_read_filter* %113 to %struct.archive_read_filter.1*
  %115 = call i32 %110(%struct.archive_read_filter.1* %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @ARCHIVE_OK, align 4
  %118 = icmp ne i32 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %93
  %120 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %121 = call i32 @__archive_read_free_filters(%struct.archive_read* %120)
  %122 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %122, i32* %2, align 4
  br label %133

123:                                              ; preds = %93
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %14

127:                                              ; preds = %14
  %128 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %129 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %128, i32 0, i32 0
  %130 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %131 = call i32 @archive_set_error(%struct.TYPE_2__* %129, i32 %130, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %132 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %127, %119, %91, %68, %64
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i32 @__archive_read_filter_ahead(%struct.archive_read_filter*, i32, i64*) #1

declare dso_local i32 @__archive_read_free_filters(%struct.archive_read*) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
