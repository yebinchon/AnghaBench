; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_set_timefilter_pathname_wcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_set_timefilter_pathname_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_match = type { i32 }
%struct.archive_string = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"pathname is empty\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to convert WCS to MBS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_match*, i32, i32*)* @set_timefilter_pathname_wcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_timefilter_pathname_wcs(%struct.archive_match* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_match*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.archive_string, align 4
  %9 = alloca i32, align 4
  store %struct.archive_match* %0, %struct.archive_match** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %7, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32*, i32** %7, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %12, %3
  %17 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %18 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %17, i32 0, i32 0
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @archive_set_error(i32* %18, i32 %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %21, i32* %4, align 4
  br label %50

22:                                               ; preds = %12
  %23 = call i32 @archive_string_init(%struct.archive_string* %8)
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @wcslen(i32* %25)
  %27 = call i64 @archive_string_append_from_wcs(%struct.archive_string* %8, i32* %24, i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = call i32 @archive_string_free(%struct.archive_string* %8)
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOMEM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %36 = call i32 @error_nomem(%struct.archive_match* %35)
  store i32 %36, i32* %4, align 4
  br label %50

37:                                               ; preds = %29
  %38 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %39 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %38, i32 0, i32 0
  %40 = call i32 @archive_set_error(i32* %39, i32 -1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %41, i32* %4, align 4
  br label %50

42:                                               ; preds = %22
  %43 = load %struct.archive_match*, %struct.archive_match** %5, align 8
  %44 = load i32, i32* %6, align 4
  %45 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %8, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @set_timefilter_pathname_mbs(%struct.archive_match* %43, i32 %44, i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = call i32 @archive_string_free(%struct.archive_string* %8)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %42, %37, %34, %16
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @archive_string_init(%struct.archive_string*) #1

declare dso_local i64 @archive_string_append_from_wcs(%struct.archive_string*, i32*, i32) #1

declare dso_local i32 @wcslen(i32*) #1

declare dso_local i32 @archive_string_free(%struct.archive_string*) #1

declare dso_local i32 @error_nomem(%struct.archive_match*) #1

declare dso_local i32 @set_timefilter_pathname_mbs(%struct.archive_match*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
