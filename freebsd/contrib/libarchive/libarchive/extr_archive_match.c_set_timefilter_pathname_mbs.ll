; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_set_timefilter_pathname_mbs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_set_timefilter_pathname_mbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.stat = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pathname is empty\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Failed to stat()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, i32, i8*)* @set_timefilter_pathname_mbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_timefilter_pathname_mbs(%struct.archive_match* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_match*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.stat, align 4
  store %struct.archive_match* %0, %struct.archive_match** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = load i8*, i8** %7, align 8
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11, %3
  %17 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %18 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %17, i32 0, i32 0
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @archive_set_error(i32* %18, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %21, i32* %4, align 4
  br label %36

22:                                               ; preds = %11
  %23 = load i8*, i8** %7, align 8
  %24 = call i64 @la_stat(i8* %23, %struct.stat* %8)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %28 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %27, i32 0, i32 0
  %29 = load i32, i32* @errno, align 4
  %30 = call i32 @archive_set_error(i32* %28, i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %31, i32* %4, align 4
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @set_timefilter_stat(%struct.archive_match* %33, i32 %34, %struct.stat* %8)
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %32, %26, %16
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @la_stat(i8*, %struct.stat*) #1

declare dso_local i32 @set_timefilter_stat(%struct.archive_match*, i32, %struct.stat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
