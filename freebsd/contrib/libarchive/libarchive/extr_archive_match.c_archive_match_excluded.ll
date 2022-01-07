; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_archive_match_excluded.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_archive_match_excluded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_match = type { i32, i32 }

@ARCHIVE_MATCH_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"archive_match_excluded_ae\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"entry is NULL\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@PATTERN_IS_SET = common dso_local global i32 0, align 4
@TIME_IS_SET = common dso_local global i32 0, align 4
@ID_IS_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_match_excluded(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive_match*, align 8
  %7 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %8 = load %struct.archive*, %struct.archive** %4, align 8
  %9 = load i32, i32* @ARCHIVE_MATCH_MAGIC, align 4
  %10 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %11 = call i32 @archive_check_magic(%struct.archive* %8, i32 %9, i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.archive*, %struct.archive** %4, align 8
  %13 = bitcast %struct.archive* %12 to %struct.archive_match*
  store %struct.archive_match* %13, %struct.archive_match** %6, align 8
  %14 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %15 = icmp eq %struct.archive_entry* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %18 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %17, i32 0, i32 1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @archive_set_error(i32* %18, i32 %19, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %21, i32* %3, align 4
  br label %68

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %23 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %24 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PATTERN_IS_SET, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %39

29:                                               ; preds = %22
  %30 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %31 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %32 = call i32 @archive_entry_pathname(%struct.archive_entry* %31)
  %33 = call i32 @path_excluded(%struct.archive_match* %30, i32 1, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %68

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %22
  %40 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %41 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @TIME_IS_SET, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %48 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %49 = call i32 @time_excluded(%struct.archive_match* %47, %struct.archive_entry* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %68

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %39
  %56 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %57 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @ID_IS_SET, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %64 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %65 = call i32 @owner_excluded(%struct.archive_match* %63, %struct.archive_entry* %64)
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %55
  %67 = load i32, i32* %7, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %52, %36, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @path_excluded(%struct.archive_match*, i32, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @time_excluded(%struct.archive_match*, %struct.archive_entry*) #1

declare dso_local i32 @owner_excluded(%struct.archive_match*, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
