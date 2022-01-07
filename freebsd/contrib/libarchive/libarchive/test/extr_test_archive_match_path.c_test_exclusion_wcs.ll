; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_path.c_test_exclusion_wcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_path.c_test_exclusion_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [5 x i32] [i32 94, i32 97, i32 97, i32 42, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"aa1234\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"'aa1234' should be excluded\00", align 1
@.str.3 = private unnamed_addr constant [7 x i32] [i32 97, i32 97, i32 49, i32 50, i32 51, i32 52, i32 0], align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"a1234\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"'a1234' should not be excluded\00", align 1
@.str.6 = private unnamed_addr constant [6 x i32] [i32 97, i32 49, i32 50, i32 51, i32 52, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_exclusion_wcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_exclusion_wcs() #0 {
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
  br label %75

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
  br label %75

18:                                               ; preds = %9
  %19 = load %struct.archive*, %struct.archive** %2, align 8
  %20 = load %struct.archive*, %struct.archive** %2, align 8
  %21 = call i32 @archive_match_exclude_pattern_w(%struct.archive* %20, i8* bitcast ([5 x i32]* @.str to i8*))
  %22 = call i32 @assertEqualIntA(%struct.archive* %19, i32 0, i32 %21)
  %23 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %24 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %25 = call i32 @failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %26 = load %struct.archive*, %struct.archive** %2, align 8
  %27 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %28 = call i32 @archive_match_path_excluded(%struct.archive* %26, %struct.archive_entry* %27)
  %29 = call i32 @assertEqualInt(i32 1, i32 %28)
  %30 = load %struct.archive*, %struct.archive** %2, align 8
  %31 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %32 = call i32 @archive_match_excluded(%struct.archive* %30, %struct.archive_entry* %31)
  %33 = call i32 @assertEqualInt(i32 1, i32 %32)
  %34 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %35 = call i32 @archive_entry_clear(%struct.archive_entry* %34)
  %36 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %37 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %36, i8* bitcast ([7 x i32]* @.str.3 to i8*))
  %38 = call i32 @failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.archive*, %struct.archive** %2, align 8
  %40 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %41 = call i32 @archive_match_path_excluded(%struct.archive* %39, %struct.archive_entry* %40)
  %42 = call i32 @assertEqualInt(i32 1, i32 %41)
  %43 = load %struct.archive*, %struct.archive** %2, align 8
  %44 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %45 = call i32 @archive_match_excluded(%struct.archive* %43, %struct.archive_entry* %44)
  %46 = call i32 @assertEqualInt(i32 1, i32 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %48 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %49 = call i32 @failure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %50 = load %struct.archive*, %struct.archive** %2, align 8
  %51 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %52 = call i32 @archive_match_path_excluded(%struct.archive* %50, %struct.archive_entry* %51)
  %53 = call i32 @assertEqualInt(i32 0, i32 %52)
  %54 = load %struct.archive*, %struct.archive** %2, align 8
  %55 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %56 = call i32 @archive_match_excluded(%struct.archive* %54, %struct.archive_entry* %55)
  %57 = call i32 @assertEqualInt(i32 0, i32 %56)
  %58 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %59 = call i32 @archive_entry_clear(%struct.archive_entry* %58)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %61 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %60, i8* bitcast ([6 x i32]* @.str.6 to i8*))
  %62 = call i32 @failure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  %63 = load %struct.archive*, %struct.archive** %2, align 8
  %64 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %65 = call i32 @archive_match_path_excluded(%struct.archive* %63, %struct.archive_entry* %64)
  %66 = call i32 @assertEqualInt(i32 0, i32 %65)
  %67 = load %struct.archive*, %struct.archive** %2, align 8
  %68 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %69 = call i32 @archive_match_excluded(%struct.archive* %67, %struct.archive_entry* %68)
  %70 = call i32 @assertEqualInt(i32 0, i32 %69)
  %71 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %72 = call i32 @archive_entry_free(%struct.archive_entry* %71)
  %73 = load %struct.archive*, %struct.archive** %2, align 8
  %74 = call i32 @archive_match_free(%struct.archive* %73)
  br label %75

75:                                               ; preds = %18, %15, %8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_exclude_pattern_w(%struct.archive*, i8*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_match_path_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_match_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_clear(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_pathname_w(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
