; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_test_older_time.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_time.c_test_older_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@ARCHIVE_MATCH_MTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_CTIME = common dso_local global i32 0, align 4
@ARCHIVE_MATCH_OLDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"file1\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Both Its mtime and ctime should be excluded\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Both Its mtime and ctime should not be excluded\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Its mtime should be excluded\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Its ctime should be excluded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_older_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_older_time() #0 {
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
  br label %99

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
  br label %99

18:                                               ; preds = %9
  %19 = load %struct.archive*, %struct.archive** %2, align 8
  %20 = load %struct.archive*, %struct.archive** %2, align 8
  %21 = load i32, i32* @ARCHIVE_MATCH_MTIME, align 4
  %22 = load i32, i32* @ARCHIVE_MATCH_CTIME, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ARCHIVE_MATCH_OLDER, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @archive_match_include_time(%struct.archive* %20, i32 %25, i32 7880, i32 0)
  %27 = call i32 @assertEqualIntA(%struct.archive* %19, i32 0, i32 %26)
  %28 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %29 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %28, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %31 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %30, i32 7880, i32 0)
  %32 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %33 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %32, i32 7880, i32 0)
  %34 = call i32 @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.archive*, %struct.archive** %2, align 8
  %36 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %37 = call i32 @archive_match_time_excluded(%struct.archive* %35, %struct.archive_entry* %36)
  %38 = call i32 @assertEqualInt(i32 1, i32 %37)
  %39 = load %struct.archive*, %struct.archive** %2, align 8
  %40 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %41 = call i32 @archive_match_excluded(%struct.archive* %39, %struct.archive_entry* %40)
  %42 = call i32 @assertEqualInt(i32 1, i32 %41)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %44 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %43, i32 7879, i32 999)
  %45 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %46 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %45, i32 7879, i32 999)
  %47 = call i32 @failure(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %48 = load %struct.archive*, %struct.archive** %2, align 8
  %49 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %50 = call i32 @archive_match_time_excluded(%struct.archive* %48, %struct.archive_entry* %49)
  %51 = call i32 @assertEqualInt(i32 0, i32 %50)
  %52 = load %struct.archive*, %struct.archive** %2, align 8
  %53 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %54 = call i32 @archive_match_excluded(%struct.archive* %52, %struct.archive_entry* %53)
  %55 = call i32 @assertEqualInt(i32 0, i32 %54)
  %56 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %57 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %56, i32 7881, i32 0)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %59 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %58, i32 7881, i32 0)
  %60 = call i32 @failure(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %61 = load %struct.archive*, %struct.archive** %2, align 8
  %62 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %63 = call i32 @archive_match_time_excluded(%struct.archive* %61, %struct.archive_entry* %62)
  %64 = call i32 @assertEqualInt(i32 1, i32 %63)
  %65 = load %struct.archive*, %struct.archive** %2, align 8
  %66 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %67 = call i32 @archive_match_excluded(%struct.archive* %65, %struct.archive_entry* %66)
  %68 = call i32 @assertEqualInt(i32 1, i32 %67)
  %69 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %70 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %69, i32 7880, i32 1)
  %71 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %72 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %71, i32 7879, i32 0)
  %73 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %74 = load %struct.archive*, %struct.archive** %2, align 8
  %75 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %76 = call i32 @archive_match_time_excluded(%struct.archive* %74, %struct.archive_entry* %75)
  %77 = call i32 @assertEqualInt(i32 1, i32 %76)
  %78 = load %struct.archive*, %struct.archive** %2, align 8
  %79 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %80 = call i32 @archive_match_excluded(%struct.archive* %78, %struct.archive_entry* %79)
  %81 = call i32 @assertEqualInt(i32 1, i32 %80)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %83 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %82, i32 7879, i32 0)
  %84 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %85 = call i32 @archive_entry_set_ctime(%struct.archive_entry* %84, i32 7880, i32 1)
  %86 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %87 = load %struct.archive*, %struct.archive** %2, align 8
  %88 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %89 = call i32 @archive_match_time_excluded(%struct.archive* %87, %struct.archive_entry* %88)
  %90 = call i32 @assertEqualInt(i32 1, i32 %89)
  %91 = load %struct.archive*, %struct.archive** %2, align 8
  %92 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %93 = call i32 @archive_match_excluded(%struct.archive* %91, %struct.archive_entry* %92)
  %94 = call i32 @assertEqualInt(i32 1, i32 %93)
  %95 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %96 = call i32 @archive_entry_free(%struct.archive_entry* %95)
  %97 = load %struct.archive*, %struct.archive** %2, align 8
  %98 = call i32 @archive_match_free(%struct.archive* %97)
  br label %99

99:                                               ; preds = %18, %15, %8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_include_time(%struct.archive*, i32, i32, i32) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_entry_set_ctime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_match_time_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_match_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
