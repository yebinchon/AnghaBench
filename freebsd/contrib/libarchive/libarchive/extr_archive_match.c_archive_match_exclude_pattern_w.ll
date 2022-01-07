; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_archive_match_exclude_pattern_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_archive_match_exclude_pattern_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_match = type { i32, i32 }

@ARCHIVE_MATCH_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"archive_match_exclude_pattern_w\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"pattern is empty\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_match_exclude_pattern_w(%struct.archive* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.archive_match*, align 8
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.archive*, %struct.archive** %4, align 8
  %9 = load i32, i32* @ARCHIVE_MATCH_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.archive*, %struct.archive** %4, align 8
  %13 = bitcast %struct.archive* %12 to %struct.archive_match*
  store %struct.archive_match* %13, %struct.archive_match** %6, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %16, %2
  %21 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %22 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %21, i32 0, i32 1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = call i32 @archive_set_error(i32* %22, i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %25, i32* %3, align 4
  br label %38

26:                                               ; preds = %16
  %27 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %28 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %29 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %28, i32 0, i32 0
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @add_pattern_wcs(%struct.archive_match* %27, i32* %29, i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %38

36:                                               ; preds = %26
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %36, %34, %20
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @add_pattern_wcs(%struct.archive_match*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
