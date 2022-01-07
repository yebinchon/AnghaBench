; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_test_older_mtime_than_file_wcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_test_older_mtime_than_file_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_MATCH_MTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_OLDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i32] [i32 109, i32 105, i32 100, i32 95, i32 109, i32 116, i32 105, i32 109, i32 101, i32 0], align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"old_mtime\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"old_mtime should not be excluded\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mid_mtime\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"mid_mtime should be excluded\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"new_mtime\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"new_mtime should be excluded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_older_mtime_than_file_wcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_older_mtime_than_file_wcs() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = alloca %struct.archive_entry*, align 8
  %3 = alloca %struct.archive*, align 8
  %4 = call %struct.archive* (...) @archive_match_new()
  store %struct.archive* %4, %struct.archive** %3, align 8
  %5 = icmp ne %struct.archive* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %99

10:                                               ; preds = %0
  %11 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %11, %struct.archive_entry** %2, align 8
  %12 = icmp ne %struct.archive_entry* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load %struct.archive*, %struct.archive** %3, align 8
  %18 = call i32 @archive_match_free(%struct.archive* %17)
  br label %99

19:                                               ; preds = %10
  %20 = call %struct.archive* (...) @archive_read_disk_new()
  store %struct.archive* %20, %struct.archive** %1, align 8
  %21 = icmp ne %struct.archive* %20, null
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %19
  %26 = load %struct.archive*, %struct.archive** %3, align 8
  %27 = call i32 @archive_match_free(%struct.archive* %26)
  %28 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %29 = call i32 @archive_entry_free(%struct.archive_entry* %28)
  br label %99

30:                                               ; preds = %19
  %31 = load %struct.archive*, %struct.archive** %3, align 8
  %32 = load %struct.archive*, %struct.archive** %3, align 8
  %33 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %34 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @archive_match_include_file_time_w(%struct.archive* %32, i32 %35, i8* bitcast ([10 x i32]* @.str to i8*))
  %37 = call i32 @assertEqualIntA(%struct.archive* %31, i32 0, i32 %36)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %39 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %40 = load %struct.archive*, %struct.archive** %1, align 8
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  %42 = load %struct.archive*, %struct.archive** %1, align 8
  %43 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %44 = call i32 @archive_read_disk_entry_from_file(%struct.archive* %42, %struct.archive_entry* %43, i32 -1, i32* null)
  %45 = call i32 @assertEqualIntA(%struct.archive* %40, i32 %41, i32 %44)
  %46 = call i32 @failure(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %47 = load %struct.archive*, %struct.archive** %3, align 8
  %48 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %49 = call i32 @archive_match_time_excluded(%struct.archive* %47, %struct.archive_entry* %48)
  %50 = call i32 @assertEqualInt(i32 0, i32 %49)
  %51 = load %struct.archive*, %struct.archive** %3, align 8
  %52 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %53 = call i32 @archive_match_excluded(%struct.archive* %51, %struct.archive_entry* %52)
  %54 = call i32 @assertEqualInt(i32 0, i32 %53)
  %55 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %56 = call i32 @archive_entry_clear(%struct.archive_entry* %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %58 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %59 = load %struct.archive*, %struct.archive** %1, align 8
  %60 = load i32, i32* @ARCHIVE_OK, align 4
  %61 = load %struct.archive*, %struct.archive** %1, align 8
  %62 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %63 = call i32 @archive_read_disk_entry_from_file(%struct.archive* %61, %struct.archive_entry* %62, i32 -1, i32* null)
  %64 = call i32 @assertEqualIntA(%struct.archive* %59, i32 %60, i32 %63)
  %65 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %66 = load %struct.archive*, %struct.archive** %3, align 8
  %67 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %68 = call i32 @archive_match_time_excluded(%struct.archive* %66, %struct.archive_entry* %67)
  %69 = call i32 @assertEqualInt(i32 1, i32 %68)
  %70 = load %struct.archive*, %struct.archive** %3, align 8
  %71 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %72 = call i32 @archive_match_excluded(%struct.archive* %70, %struct.archive_entry* %71)
  %73 = call i32 @assertEqualInt(i32 1, i32 %72)
  %74 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %75 = call i32 @archive_entry_clear(%struct.archive_entry* %74)
  %76 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %77 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %76, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %78 = load %struct.archive*, %struct.archive** %1, align 8
  %79 = load i32, i32* @ARCHIVE_OK, align 4
  %80 = load %struct.archive*, %struct.archive** %1, align 8
  %81 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %82 = call i32 @archive_read_disk_entry_from_file(%struct.archive* %80, %struct.archive_entry* %81, i32 -1, i32* null)
  %83 = call i32 @assertEqualIntA(%struct.archive* %78, i32 %79, i32 %82)
  %84 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %85 = load %struct.archive*, %struct.archive** %3, align 8
  %86 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %87 = call i32 @archive_match_time_excluded(%struct.archive* %85, %struct.archive_entry* %86)
  %88 = call i32 @assertEqualInt(i32 1, i32 %87)
  %89 = load %struct.archive*, %struct.archive** %3, align 8
  %90 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %91 = call i32 @archive_match_excluded(%struct.archive* %89, %struct.archive_entry* %90)
  %92 = call i32 @assertEqualInt(i32 1, i32 %91)
  %93 = load %struct.archive*, %struct.archive** %1, align 8
  %94 = call i32 @archive_read_free(%struct.archive* %93)
  %95 = load %struct.archive_entry*, %struct.archive_entry** %2, align 8
  %96 = call i32 @archive_entry_free(%struct.archive_entry* %95)
  %97 = load %struct.archive*, %struct.archive** %3, align 8
  %98 = call i32 @archive_match_free(%struct.archive* %97)
  br label %99

99:                                               ; preds = %30, %25, %16, %9
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

declare dso_local %struct.archive* @archive_read_disk_new(...) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_include_file_time_w(%struct.archive*, i32, i8*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_read_disk_entry_from_file(%struct.archive*, %struct.archive_entry*, i32, i32*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_match_time_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_match_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_clear(%struct.archive_entry*) #1

declare dso_local i32 @archive_read_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
