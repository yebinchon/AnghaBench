; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_path.c_test_inclusion_wcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_path.c_test_inclusion_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [5 x i32] [i32 94, i32 97, i32 97, i32 42, i32 0], align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"aa1234\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"'aa1234' should not be excluded\00", align 1
@.str.3 = private unnamed_addr constant [7 x i32] [i32 97, i32 97, i32 49, i32 50, i32 51, i32 52, i32 0], align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"a1234\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"'a1234' should be excluded\00", align 1
@.str.6 = private unnamed_addr constant [6 x i32] [i32 97, i32 49, i32 50, i32 51, i32 52, i32 0], align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_inclusion_wcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_inclusion_wcs() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca %struct.archive*, align 8
  %3 = alloca i8*, align 8
  %4 = call %struct.archive* (...) @archive_match_new()
  store %struct.archive* %4, %struct.archive** %2, align 8
  %5 = icmp ne %struct.archive* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %0
  br label %84

10:                                               ; preds = %0
  %11 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %11, %struct.archive_entry** %1, align 8
  %12 = icmp ne %struct.archive_entry* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %10
  %17 = load %struct.archive*, %struct.archive** %2, align 8
  %18 = call i32 @archive_match_free(%struct.archive* %17)
  br label %84

19:                                               ; preds = %10
  %20 = load %struct.archive*, %struct.archive** %2, align 8
  %21 = load %struct.archive*, %struct.archive** %2, align 8
  %22 = call i32 @archive_match_include_pattern_w(%struct.archive* %21, i8* bitcast ([5 x i32]* @.str to i8*))
  %23 = call i32 @assertEqualIntA(%struct.archive* %20, i32 0, i32 %22)
  %24 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %25 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %24, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.archive*, %struct.archive** %2, align 8
  %28 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %29 = call i32 @archive_match_path_excluded(%struct.archive* %27, %struct.archive_entry* %28)
  %30 = call i32 @assertEqualInt(i32 0, i32 %29)
  %31 = load %struct.archive*, %struct.archive** %2, align 8
  %32 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %33 = call i32 @archive_match_excluded(%struct.archive* %31, %struct.archive_entry* %32)
  %34 = call i32 @assertEqualInt(i32 0, i32 %33)
  %35 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %36 = call i32 @archive_entry_clear(%struct.archive_entry* %35)
  %37 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %38 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %37, i8* bitcast ([7 x i32]* @.str.3 to i8*))
  %39 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.archive*, %struct.archive** %2, align 8
  %41 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %42 = call i32 @archive_match_path_excluded(%struct.archive* %40, %struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i32 0, i32 %42)
  %44 = load %struct.archive*, %struct.archive** %2, align 8
  %45 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %46 = call i32 @archive_match_excluded(%struct.archive* %44, %struct.archive_entry* %45)
  %47 = call i32 @assertEqualInt(i32 0, i32 %46)
  %48 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %49 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %48, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %50 = call i32 @failure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %51 = load %struct.archive*, %struct.archive** %2, align 8
  %52 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %53 = call i32 @archive_match_path_excluded(%struct.archive* %51, %struct.archive_entry* %52)
  %54 = call i32 @assertEqualInt(i32 1, i32 %53)
  %55 = load %struct.archive*, %struct.archive** %2, align 8
  %56 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %57 = call i32 @archive_match_excluded(%struct.archive* %55, %struct.archive_entry* %56)
  %58 = call i32 @assertEqualInt(i32 1, i32 %57)
  %59 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %60 = call i32 @archive_entry_clear(%struct.archive_entry* %59)
  %61 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %62 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %61, i8* bitcast ([6 x i32]* @.str.6 to i8*))
  %63 = call i32 @failure(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %64 = load %struct.archive*, %struct.archive** %2, align 8
  %65 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %66 = call i32 @archive_match_path_excluded(%struct.archive* %64, %struct.archive_entry* %65)
  %67 = call i32 @assertEqualInt(i32 1, i32 %66)
  %68 = load %struct.archive*, %struct.archive** %2, align 8
  %69 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %70 = call i32 @archive_match_excluded(%struct.archive* %68, %struct.archive_entry* %69)
  %71 = call i32 @assertEqualInt(i32 1, i32 %70)
  %72 = load %struct.archive*, %struct.archive** %2, align 8
  %73 = call i32 @archive_match_path_unmatched_inclusions(%struct.archive* %72)
  %74 = call i32 @assertEqualInt(i32 0, i32 %73)
  %75 = load %struct.archive*, %struct.archive** %2, align 8
  %76 = load i32, i32* @ARCHIVE_EOF, align 4
  %77 = load %struct.archive*, %struct.archive** %2, align 8
  %78 = call i32 @archive_match_path_unmatched_inclusions_next(%struct.archive* %77, i8** %3)
  %79 = call i32 @assertEqualIntA(%struct.archive* %75, i32 %76, i32 %78)
  %80 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %81 = call i32 @archive_entry_free(%struct.archive_entry* %80)
  %82 = load %struct.archive*, %struct.archive** %2, align 8
  %83 = call i32 @archive_match_free(%struct.archive* %82)
  br label %84

84:                                               ; preds = %19, %16, %9
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_include_pattern_w(%struct.archive*, i8*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_match_path_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_match_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_clear(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_pathname_w(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_match_path_unmatched_inclusions(%struct.archive*) #1

declare dso_local i32 @archive_match_path_unmatched_inclusions_next(%struct.archive*, i8**) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
