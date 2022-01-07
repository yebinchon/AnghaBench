; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_archive_match_time_excluded.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_match.c_archive_match_time_excluded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }
%struct.archive_match = type { i32, i32 }

@ARCHIVE_MATCH_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_NEW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"archive_match_time_excluded_ae\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"entry is NULL\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@TIME_IS_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_match_time_excluded(%struct.archive* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.archive_match*, align 8
  store %struct.archive* %0, %struct.archive** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %7 = load %struct.archive*, %struct.archive** %4, align 8
  %8 = load i32, i32* @ARCHIVE_MATCH_MAGIC, align 4
  %9 = load i32, i32* @ARCHIVE_STATE_NEW, align 4
  %10 = call i32 @archive_check_magic(%struct.archive* %7, i32 %8, i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.archive*, %struct.archive** %4, align 8
  %12 = bitcast %struct.archive* %11 to %struct.archive_match*
  store %struct.archive_match* %12, %struct.archive_match** %6, align 8
  %13 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %14 = icmp eq %struct.archive_entry* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %17 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %16, i32 0, i32 1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = call i32 @archive_set_error(i32* %17, i32 %18, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %20, i32* %3, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %23 = getelementptr inbounds %struct.archive_match, %struct.archive_match* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @TIME_IS_SET, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %33

29:                                               ; preds = %21
  %30 = load %struct.archive_match*, %struct.archive_match** %6, align 8
  %31 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %32 = call i32 @time_excluded(%struct.archive_match* %30, %struct.archive_entry* %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %28, %15
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @time_excluded(%struct.archive_match*, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
