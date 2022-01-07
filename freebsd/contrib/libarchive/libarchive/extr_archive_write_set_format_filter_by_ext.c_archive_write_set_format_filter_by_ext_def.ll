; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_filter_by_ext.c_archive_write_set_format_filter_by_ext_def.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_filter_by_ext.c_archive_write_set_format_filter_by_ext_def.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.archive*)*, i32 (%struct.archive*)* }
%struct.archive = type { i32 }

@names = common dso_local global %struct.TYPE_2__* null, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"No such format '%s'\00", align 1
@ARCHIVE_STATE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_write_set_format_filter_by_ext_def(%struct.archive* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i32 @get_array_index(i8* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @get_array_index(i8* %15)
  store i32 %16, i32* %8, align 4
  br label %17

17:                                               ; preds = %14, %3
  %18 = load i32, i32* %8, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %17
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @names, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %25, align 8
  %27 = load %struct.archive*, %struct.archive** %5, align 8
  %28 = call i32 %26(%struct.archive* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ARCHIVE_OK, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %20
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @names, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32 (%struct.archive*)*, i32 (%struct.archive*)** %37, align 8
  %39 = load %struct.archive*, %struct.archive** %5, align 8
  %40 = call i32 %38(%struct.archive* %39)
  store i32 %40, i32* %4, align 4
  br label %52

41:                                               ; preds = %20
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %52

43:                                               ; preds = %17
  %44 = load %struct.archive*, %struct.archive** %5, align 8
  %45 = load i32, i32* @EINVAL, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = call i32 @archive_set_error(%struct.archive* %44, i32 %45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @ARCHIVE_STATE_FATAL, align 4
  %49 = load %struct.archive*, %struct.archive** %5, align 8
  %50 = getelementptr inbounds %struct.archive, %struct.archive* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %43, %41, %32
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @get_array_index(i8*) #1

declare dso_local i32 @archive_set_error(%struct.archive*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
