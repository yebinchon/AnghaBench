; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_archive_match_exclude_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_archive_match_exclude_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_match = type { i32 }

@ARCHIVE_MATCH_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"archive_match_time_include_entry\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"entry is NULL\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"archive_match_exclude_entry\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_match_exclude_entry(%struct.archive* %0, i32 %1, %struct.archive_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_entry*, align 8
  %8 = alloca %struct.archive_match*, align 8
  %9 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.archive_entry* %2, %struct.archive_entry** %7, align 8
  %10 = load %struct.archive*, %struct.archive** %5, align 8
  %11 = load i32, i32* @ARCHIVE_MATCH_MAGIC, align 4
  %12 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %13 = call i32 @archive_check_magic(%struct.archive* %10, i32 %11, i32 %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.archive*, %struct.archive** %5, align 8
  %15 = bitcast %struct.archive* %14 to %struct.archive_match*
  store %struct.archive_match* %15, %struct.archive_match** %8, align 8
  %16 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %17 = icmp eq %struct.archive_entry* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.archive_match*, %struct.archive_match** %8, align 8
  %20 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %19, i32 0, i32 0
  %21 = load i32, i32* @EINVAL, align 4
  %22 = call i32 @archive_set_error(i32* %20, i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %23, i32* %4, align 4
  br label %38

24:                                               ; preds = %3
  %25 = load %struct.archive*, %struct.archive** %5, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @validate_time_flag(%struct.archive* %25, i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @ARCHIVE_OK, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %4, align 4
  br label %38

33:                                               ; preds = %24
  %34 = load %struct.archive_match*, %struct.archive_match** %8, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %37 = call i32 @add_entry(%struct.archive_match* %34, i32 %35, %struct.archive_entry* %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %33, %31, %18
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @validate_time_flag(%struct.archive*, i32, i8*) #1

declare dso_local i32 @add_entry(%struct.archive_match*, i32, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
