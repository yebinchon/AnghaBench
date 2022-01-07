; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_test_pathname_newer_mtime.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_test_pathname_newer_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@ARCHIVE_MATCH_MTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_OLDER = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_EQUAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"file2\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"file3\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_pathname_newer_mtime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_pathname_newer_mtime() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca %struct.archive*, align 8
  %3 = call %struct.archive* (...) @archive_match_new()
  store %struct.archive* %3, %struct.archive** %2, align 8
  %4 = icmp ne %struct.archive* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %67

9:                                                ; preds = %0
  %10 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %10, %struct.archive_entry** %1, align 8
  %11 = icmp ne %struct.archive_entry* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %9
  %16 = load %struct.archive*, %struct.archive** %2, align 8
  %17 = call i32 @archive_match_free(%struct.archive* %16)
  br label %67

18:                                               ; preds = %9
  %19 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %20 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %22 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %21, i32 7880, i32 0)
  %23 = load %struct.archive*, %struct.archive** %2, align 8
  %24 = load %struct.archive*, %struct.archive** %2, align 8
  %25 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %26 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %31 = call i32 @archive_match_exclude_entry(%struct.archive* %24, i32 %29, %struct.archive_entry* %30)
  %32 = call i32 @assertEqualIntA(%struct.archive* %23, i32 0, i32 %31)
  %33 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %34 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %36 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %35, i32 1, i32 0)
  %37 = load %struct.archive*, %struct.archive** %2, align 8
  %38 = load %struct.archive*, %struct.archive** %2, align 8
  %39 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %40 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %43 = or i32 %41, %42
  %44 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %45 = call i32 @archive_match_exclude_entry(%struct.archive* %38, i32 %43, %struct.archive_entry* %44)
  %46 = call i32 @assertEqualIntA(%struct.archive* %37, i32 0, i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %48 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %50 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %49, i32 99999, i32 0)
  %51 = load %struct.archive*, %struct.archive** %2, align 8
  %52 = load %struct.archive*, %struct.archive** %2, align 8
  %53 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %54 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @ARCHIVE_MATCH_EQUAL, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %59 = call i32 @archive_match_exclude_entry(%struct.archive* %52, i32 %57, %struct.archive_entry* %58)
  %60 = call i32 @assertEqualIntA(%struct.archive* %51, i32 0, i32 %59)
  %61 = load %struct.archive*, %struct.archive** %2, align 8
  %62 = call i32 @excluded(%struct.archive* %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %64 = call i32 @archive_entry_free(%struct.archive_entry* %63)
  %65 = load %struct.archive*, %struct.archive** %2, align 8
  %66 = call i32 @archive_match_free(%struct.archive* %65)
  br label %67

67:                                               ; preds = %18, %15, %8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_exclude_entry(%struct.archive*, i32, %struct.archive_entry*) #1

declare dso_local i32 @excluded(%struct.archive*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
