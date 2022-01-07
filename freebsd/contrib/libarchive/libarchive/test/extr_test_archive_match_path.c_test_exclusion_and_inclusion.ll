; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_path.c_test_exclusion_and_inclusion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_path.c_test_exclusion_and_inclusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"^aaa*\00", align 1
@.str.1 = private unnamed_addr constant [5 x i32] [i32 94, i32 97, i32 97, i32 42, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"^a1*\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"aa1234\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"'aa1234' should not be excluded\00", align 1
@.str.5 = private unnamed_addr constant [7 x i32] [i32 97, i32 97, i32 49, i32 50, i32 51, i32 52, i32 0], align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"aaa1234\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"'aaa1234' should be excluded\00", align 1
@.str.8 = private unnamed_addr constant [8 x i32] [i32 97, i32 97, i32 97, i32 49, i32 50, i32 51, i32 52, i32 0], align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i32] [i32 94, i32 97, i32 49, i32 42, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_exclusion_and_inclusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_exclusion_and_inclusion() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca %struct.archive*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = call %struct.archive* (...) @archive_match_new()
  store %struct.archive* %5, %struct.archive** %2, align 8
  %6 = icmp ne %struct.archive* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @assert(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %0
  br label %112

11:                                               ; preds = %0
  %12 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %12, %struct.archive_entry** %1, align 8
  %13 = icmp ne %struct.archive_entry* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.archive*, %struct.archive** %2, align 8
  %19 = call i32 @archive_match_free(%struct.archive* %18)
  br label %112

20:                                               ; preds = %11
  %21 = load %struct.archive*, %struct.archive** %2, align 8
  %22 = load %struct.archive*, %struct.archive** %2, align 8
  %23 = call i32 @archive_match_exclude_pattern(%struct.archive* %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %24 = call i32 @assertEqualIntA(%struct.archive* %21, i32 0, i32 %23)
  %25 = load %struct.archive*, %struct.archive** %2, align 8
  %26 = load %struct.archive*, %struct.archive** %2, align 8
  %27 = call i32 @archive_match_include_pattern_w(%struct.archive* %26, i8* bitcast ([5 x i32]* @.str.1 to i8*))
  %28 = call i32 @assertEqualIntA(%struct.archive* %25, i32 0, i32 %27)
  %29 = load %struct.archive*, %struct.archive** %2, align 8
  %30 = load %struct.archive*, %struct.archive** %2, align 8
  %31 = call i32 @archive_match_include_pattern(%struct.archive* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @assertEqualIntA(%struct.archive* %29, i32 0, i32 %31)
  %33 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %34 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %36 = load %struct.archive*, %struct.archive** %2, align 8
  %37 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %38 = call i32 @archive_match_path_excluded(%struct.archive* %36, %struct.archive_entry* %37)
  %39 = call i32 @assertEqualInt(i32 0, i32 %38)
  %40 = load %struct.archive*, %struct.archive** %2, align 8
  %41 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %42 = call i32 @archive_match_excluded(%struct.archive* %40, %struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i32 0, i32 %42)
  %44 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %45 = call i32 @archive_entry_clear(%struct.archive_entry* %44)
  %46 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %47 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %46, i8* bitcast ([7 x i32]* @.str.5 to i8*))
  %48 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %49 = load %struct.archive*, %struct.archive** %2, align 8
  %50 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %51 = call i32 @archive_match_path_excluded(%struct.archive* %49, %struct.archive_entry* %50)
  %52 = call i32 @assertEqualInt(i32 0, i32 %51)
  %53 = load %struct.archive*, %struct.archive** %2, align 8
  %54 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %55 = call i32 @archive_match_excluded(%struct.archive* %53, %struct.archive_entry* %54)
  %56 = call i32 @assertEqualInt(i32 0, i32 %55)
  %57 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %58 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %57, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %59 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %60 = load %struct.archive*, %struct.archive** %2, align 8
  %61 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %62 = call i32 @archive_match_path_excluded(%struct.archive* %60, %struct.archive_entry* %61)
  %63 = call i32 @assertEqualInt(i32 1, i32 %62)
  %64 = load %struct.archive*, %struct.archive** %2, align 8
  %65 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %66 = call i32 @archive_match_excluded(%struct.archive* %64, %struct.archive_entry* %65)
  %67 = call i32 @assertEqualInt(i32 1, i32 %66)
  %68 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %69 = call i32 @archive_entry_clear(%struct.archive_entry* %68)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %71 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %70, i8* bitcast ([8 x i32]* @.str.8 to i8*))
  %72 = call i32 @failure(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  %73 = load %struct.archive*, %struct.archive** %2, align 8
  %74 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %75 = call i32 @archive_match_path_excluded(%struct.archive* %73, %struct.archive_entry* %74)
  %76 = call i32 @assertEqualInt(i32 1, i32 %75)
  %77 = load %struct.archive*, %struct.archive** %2, align 8
  %78 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %79 = call i32 @archive_match_excluded(%struct.archive* %77, %struct.archive_entry* %78)
  %80 = call i32 @assertEqualInt(i32 1, i32 %79)
  %81 = load %struct.archive*, %struct.archive** %2, align 8
  %82 = call i32 @archive_match_path_unmatched_inclusions(%struct.archive* %81)
  %83 = call i32 @assertEqualInt(i32 1, i32 %82)
  %84 = load %struct.archive*, %struct.archive** %2, align 8
  %85 = load i32, i32* @ARCHIVE_OK, align 4
  %86 = load %struct.archive*, %struct.archive** %2, align 8
  %87 = call i32 @archive_match_path_unmatched_inclusions_next(%struct.archive* %86, i8** %3)
  %88 = call i32 @assertEqualIntA(%struct.archive* %84, i32 %85, i32 %87)
  %89 = load i8*, i8** %3, align 8
  %90 = call i32 @assertEqualString(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  %91 = load %struct.archive*, %struct.archive** %2, align 8
  %92 = load i32, i32* @ARCHIVE_EOF, align 4
  %93 = load %struct.archive*, %struct.archive** %2, align 8
  %94 = call i32 @archive_match_path_unmatched_inclusions_next(%struct.archive* %93, i8** %3)
  %95 = call i32 @assertEqualIntA(%struct.archive* %91, i32 %92, i32 %94)
  %96 = load %struct.archive*, %struct.archive** %2, align 8
  %97 = load i32, i32* @ARCHIVE_OK, align 4
  %98 = load %struct.archive*, %struct.archive** %2, align 8
  %99 = call i32 @archive_match_path_unmatched_inclusions_next_w(%struct.archive* %98, i32** %4)
  %100 = call i32 @assertEqualIntA(%struct.archive* %96, i32 %97, i32 %99)
  %101 = load i32*, i32** %4, align 8
  %102 = call i32 @assertEqualWString(i8* bitcast ([5 x i32]* @.str.9 to i8*), i32* %101)
  %103 = load %struct.archive*, %struct.archive** %2, align 8
  %104 = load i32, i32* @ARCHIVE_EOF, align 4
  %105 = load %struct.archive*, %struct.archive** %2, align 8
  %106 = call i32 @archive_match_path_unmatched_inclusions_next_w(%struct.archive* %105, i32** %4)
  %107 = call i32 @assertEqualIntA(%struct.archive* %103, i32 %104, i32 %106)
  %108 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %109 = call i32 @archive_entry_free(%struct.archive_entry* %108)
  %110 = load %struct.archive*, %struct.archive** %2, align 8
  %111 = call i32 @archive_match_free(%struct.archive* %110)
  br label %112

112:                                              ; preds = %20, %17, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_exclude_pattern(%struct.archive*, i8*) #1

declare dso_local i32 @archive_match_include_pattern_w(%struct.archive*, i8*) #1

declare dso_local i32 @archive_match_include_pattern(%struct.archive*, i8*) #1

declare dso_local i32 @archive_entry_copy_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_match_path_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_match_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_clear(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_copy_pathname_w(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_match_path_unmatched_inclusions(%struct.archive*) #1

declare dso_local i32 @archive_match_path_unmatched_inclusions_next(%struct.archive*, i8**) #1

declare dso_local i32 @assertEqualString(i8*, i8*) #1

declare dso_local i32 @archive_match_path_unmatched_inclusions_next_w(%struct.archive*, i32**) #1

declare dso_local i32 @assertEqualWString(i8*, i32*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
