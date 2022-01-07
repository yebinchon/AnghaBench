; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c___archive_read_get_bidder.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c___archive_read_get_bidder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.archive_read_filter_bidder* }
%struct.archive_read_filter_bidder = type { i32* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Not enough slots for filter registration\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_read_get_bidder(%struct.archive_read* %0, %struct.archive_read_filter_bidder** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_read_filter_bidder**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_read_filter_bidder** %1, %struct.archive_read_filter_bidder*** %5, align 8
  store i32 1, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %13, i32 0, i32 1
  %15 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %15, i64 %17
  %19 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %38

22:                                               ; preds = %12
  %23 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %24 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %23, i32 0, i32 1
  %25 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %25, i64 %27
  %29 = call i32 @memset(%struct.archive_read_filter_bidder* %28, i32 0, i32 8)
  %30 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %31 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %30, i32 0, i32 1
  %32 = load %struct.archive_read_filter_bidder*, %struct.archive_read_filter_bidder** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.archive_read_filter_bidder, %struct.archive_read_filter_bidder* %32, i64 %34
  %36 = load %struct.archive_read_filter_bidder**, %struct.archive_read_filter_bidder*** %5, align 8
  store %struct.archive_read_filter_bidder* %35, %struct.archive_read_filter_bidder** %36, align 8
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %48

38:                                               ; preds = %12
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  br label %8

42:                                               ; preds = %8
  %43 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %44 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %43, i32 0, i32 0
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = call i32 @archive_set_error(i32* %44, i32 %45, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %22
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i32 @memset(%struct.archive_read_filter_bidder*, i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
