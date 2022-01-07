; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_path.c_exclusion_from_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_path.c_exclusion_from_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"'first' should not be excluded\00", align 1
@.str.2 = private unnamed_addr constant [6 x i32] [i32 102, i32 105, i32 114, i32 115, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"'second' should be excluded\00", align 1
@.str.5 = private unnamed_addr constant [7 x i32] [i32 115, i32 101, i32 99, i32 111, i32 110, i32 100, i32 0], align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"third\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"'third' should not be excluded\00", align 1
@.str.8 = private unnamed_addr constant [6 x i32] [i32 116, i32 104, i32 105, i32 114, i32 100, i32 0], align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"'four' should be excluded\00", align 1
@.str.11 = private unnamed_addr constant [5 x i32] [i32 102, i32 111, i32 117, i32 114, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*)* @exclusion_from_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exclusion_from_file(%struct.archive* %0) #0 {
  %2 = alloca %struct.archive*, align 8
  %3 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %2, align 8
  %4 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %4, %struct.archive_entry** %3, align 8
  %5 = icmp ne %struct.archive_entry* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load %struct.archive*, %struct.archive** %2, align 8
  %11 = call i32 @archive_match_free(%struct.archive* %10)
  br label %111

12:                                               ; preds = %1
  %13 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %14 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @failure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %16 = load %struct.archive*, %struct.archive** %2, align 8
  %17 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %18 = call i32 @archive_match_path_excluded(%struct.archive* %16, %struct.archive_entry* %17)
  %19 = call i32 @assertEqualInt(i32 0, i32 %18)
  %20 = load %struct.archive*, %struct.archive** %2, align 8
  %21 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %22 = call i32 @archive_match_excluded(%struct.archive* %20, %struct.archive_entry* %21)
  %23 = call i32 @assertEqualInt(i32 0, i32 %22)
  %24 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %25 = call i32 @archive_entry_clear(%struct.archive_entry* %24)
  %26 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %27 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %26, i8* bitcast ([6 x i32]* @.str.2 to i8*))
  %28 = call i32 @failure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.archive*, %struct.archive** %2, align 8
  %30 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %31 = call i32 @archive_match_path_excluded(%struct.archive* %29, %struct.archive_entry* %30)
  %32 = call i32 @assertEqualInt(i32 0, i32 %31)
  %33 = load %struct.archive*, %struct.archive** %2, align 8
  %34 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %35 = call i32 @archive_match_excluded(%struct.archive* %33, %struct.archive_entry* %34)
  %36 = call i32 @assertEqualInt(i32 0, i32 %35)
  %37 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %38 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.archive*, %struct.archive** %2, align 8
  %41 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %42 = call i32 @archive_match_path_excluded(%struct.archive* %40, %struct.archive_entry* %41)
  %43 = call i32 @assertEqualInt(i32 1, i32 %42)
  %44 = load %struct.archive*, %struct.archive** %2, align 8
  %45 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %46 = call i32 @archive_match_excluded(%struct.archive* %44, %struct.archive_entry* %45)
  %47 = call i32 @assertEqualInt(i32 1, i32 %46)
  %48 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %49 = call i32 @archive_entry_clear(%struct.archive_entry* %48)
  %50 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %51 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %50, i8* bitcast ([7 x i32]* @.str.5 to i8*))
  %52 = call i32 @failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.archive*, %struct.archive** %2, align 8
  %54 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %55 = call i32 @archive_match_path_excluded(%struct.archive* %53, %struct.archive_entry* %54)
  %56 = call i32 @assertEqualInt(i32 1, i32 %55)
  %57 = load %struct.archive*, %struct.archive** %2, align 8
  %58 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %59 = call i32 @archive_match_excluded(%struct.archive* %57, %struct.archive_entry* %58)
  %60 = call i32 @assertEqualInt(i32 1, i32 %59)
  %61 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %62 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %63 = call i32 @failure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %64 = load %struct.archive*, %struct.archive** %2, align 8
  %65 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %66 = call i32 @archive_match_path_excluded(%struct.archive* %64, %struct.archive_entry* %65)
  %67 = call i32 @assertEqualInt(i32 0, i32 %66)
  %68 = load %struct.archive*, %struct.archive** %2, align 8
  %69 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %70 = call i32 @archive_match_excluded(%struct.archive* %68, %struct.archive_entry* %69)
  %71 = call i32 @assertEqualInt(i32 0, i32 %70)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %73 = call i32 @archive_entry_clear(%struct.archive_entry* %72)
  %74 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %75 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %74, i8* bitcast ([6 x i32]* @.str.8 to i8*))
  %76 = call i32 @failure(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  %77 = load %struct.archive*, %struct.archive** %2, align 8
  %78 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %79 = call i32 @archive_match_path_excluded(%struct.archive* %77, %struct.archive_entry* %78)
  %80 = call i32 @assertEqualInt(i32 0, i32 %79)
  %81 = load %struct.archive*, %struct.archive** %2, align 8
  %82 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %83 = call i32 @archive_match_excluded(%struct.archive* %81, %struct.archive_entry* %82)
  %84 = call i32 @assertEqualInt(i32 0, i32 %83)
  %85 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %86 = call i32 @archive_entry_copy_pathname(%struct.archive_entry* %85, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0))
  %87 = call i32 @failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %88 = load %struct.archive*, %struct.archive** %2, align 8
  %89 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %90 = call i32 @archive_match_path_excluded(%struct.archive* %88, %struct.archive_entry* %89)
  %91 = call i32 @assertEqualInt(i32 1, i32 %90)
  %92 = load %struct.archive*, %struct.archive** %2, align 8
  %93 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %94 = call i32 @archive_match_excluded(%struct.archive* %92, %struct.archive_entry* %93)
  %95 = call i32 @assertEqualInt(i32 1, i32 %94)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %97 = call i32 @archive_entry_clear(%struct.archive_entry* %96)
  %98 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %99 = call i32 @archive_entry_copy_pathname_w(%struct.archive_entry* %98, i8* bitcast ([5 x i32]* @.str.11 to i8*))
  %100 = call i32 @failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %101 = load %struct.archive*, %struct.archive** %2, align 8
  %102 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %103 = call i32 @archive_match_path_excluded(%struct.archive* %101, %struct.archive_entry* %102)
  %104 = call i32 @assertEqualInt(i32 1, i32 %103)
  %105 = load %struct.archive*, %struct.archive** %2, align 8
  %106 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %107 = call i32 @archive_match_excluded(%struct.archive* %105, %struct.archive_entry* %106)
  %108 = call i32 @assertEqualInt(i32 1, i32 %107)
  %109 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %110 = call i32 @archive_entry_free(%struct.archive_entry* %109)
  br label %111

111:                                              ; preds = %12, %9
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

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
