; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c___archive_read_filter_consume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c___archive_read_filter_consume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read_filter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ARCHIVE_FATAL = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Truncated input file (needed %jd bytes, only %jd available)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @__archive_read_filter_consume(%struct.archive_read_filter* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.archive_read_filter*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.archive_read_filter* %0, %struct.archive_read_filter** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %10, i64* %3, align 8
  br label %40

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  store i64 0, i64* %3, align 8
  br label %40

15:                                               ; preds = %11
  %16 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @advance_file_pointer(%struct.archive_read_filter* %16, i64 %17)
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* %6, align 8
  store i64 %23, i64* %3, align 8
  br label %40

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i64 0, i64* %6, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.archive_read_filter*, %struct.archive_read_filter** %4, align 8
  %30 = getelementptr inbounds %struct.archive_read_filter, %struct.archive_read_filter* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %34 = load i64, i64* %5, align 8
  %35 = trunc i64 %34 to i32
  %36 = load i64, i64* %6, align 8
  %37 = trunc i64 %36 to i32
  %38 = call i32 @archive_set_error(i32* %32, i32 %33, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load i64, i64* @ARCHIVE_FATAL, align 8
  store i64 %39, i64* %3, align 8
  br label %40

40:                                               ; preds = %28, %22, %14, %9
  %41 = load i64, i64* %3, align 8
  ret i64 %41
}

declare dso_local i64 @advance_file_pointer(%struct.archive_read_filter*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
