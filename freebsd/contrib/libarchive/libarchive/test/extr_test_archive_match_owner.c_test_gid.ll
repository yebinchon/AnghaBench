; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_owner.c_test_gid.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_owner.c_test_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"uid 0 should be excluded\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"uid 1000 should not be excluded\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"uid 1001 should be excluded\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"uid 1002 should not be excluded\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"uid 1003 should be excluded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_gid() #0 {
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
  br label %86

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
  br label %86

18:                                               ; preds = %9
  %19 = load %struct.archive*, %struct.archive** %2, align 8
  %20 = load %struct.archive*, %struct.archive** %2, align 8
  %21 = call i32 @archive_match_include_gid(%struct.archive* %20, i32 1000)
  %22 = call i32 @assertEqualIntA(%struct.archive* %19, i32 0, i32 %21)
  %23 = load %struct.archive*, %struct.archive** %2, align 8
  %24 = load %struct.archive*, %struct.archive** %2, align 8
  %25 = call i32 @archive_match_include_gid(%struct.archive* %24, i32 1002)
  %26 = call i32 @assertEqualIntA(%struct.archive* %23, i32 0, i32 %25)
  %27 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %28 = call i32 @archive_entry_set_gid(%struct.archive_entry* %27, i32 0)
  %29 = call i32 @failure(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.archive*, %struct.archive** %2, align 8
  %31 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %32 = call i32 @archive_match_owner_excluded(%struct.archive* %30, %struct.archive_entry* %31)
  %33 = call i32 @assertEqualInt(i32 1, i32 %32)
  %34 = load %struct.archive*, %struct.archive** %2, align 8
  %35 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %36 = call i32 @archive_match_excluded(%struct.archive* %34, %struct.archive_entry* %35)
  %37 = call i32 @assertEqualInt(i32 1, i32 %36)
  %38 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %39 = call i32 @archive_entry_set_gid(%struct.archive_entry* %38, i32 1000)
  %40 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.archive*, %struct.archive** %2, align 8
  %42 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %43 = call i32 @archive_match_owner_excluded(%struct.archive* %41, %struct.archive_entry* %42)
  %44 = call i32 @assertEqualInt(i32 0, i32 %43)
  %45 = load %struct.archive*, %struct.archive** %2, align 8
  %46 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %47 = call i32 @archive_match_excluded(%struct.archive* %45, %struct.archive_entry* %46)
  %48 = call i32 @assertEqualInt(i32 0, i32 %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %50 = call i32 @archive_entry_set_gid(%struct.archive_entry* %49, i32 1001)
  %51 = call i32 @failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.archive*, %struct.archive** %2, align 8
  %53 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %54 = call i32 @archive_match_owner_excluded(%struct.archive* %52, %struct.archive_entry* %53)
  %55 = call i32 @assertEqualInt(i32 1, i32 %54)
  %56 = load %struct.archive*, %struct.archive** %2, align 8
  %57 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %58 = call i32 @archive_match_excluded(%struct.archive* %56, %struct.archive_entry* %57)
  %59 = call i32 @assertEqualInt(i32 1, i32 %58)
  %60 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %61 = call i32 @archive_entry_set_gid(%struct.archive_entry* %60, i32 1002)
  %62 = call i32 @failure(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %63 = load %struct.archive*, %struct.archive** %2, align 8
  %64 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %65 = call i32 @archive_match_owner_excluded(%struct.archive* %63, %struct.archive_entry* %64)
  %66 = call i32 @assertEqualInt(i32 0, i32 %65)
  %67 = load %struct.archive*, %struct.archive** %2, align 8
  %68 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %69 = call i32 @archive_match_excluded(%struct.archive* %67, %struct.archive_entry* %68)
  %70 = call i32 @assertEqualInt(i32 0, i32 %69)
  %71 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %72 = call i32 @archive_entry_set_gid(%struct.archive_entry* %71, i32 1003)
  %73 = call i32 @failure(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %74 = load %struct.archive*, %struct.archive** %2, align 8
  %75 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %76 = call i32 @archive_match_owner_excluded(%struct.archive* %74, %struct.archive_entry* %75)
  %77 = call i32 @assertEqualInt(i32 1, i32 %76)
  %78 = load %struct.archive*, %struct.archive** %2, align 8
  %79 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %80 = call i32 @archive_match_excluded(%struct.archive* %78, %struct.archive_entry* %79)
  %81 = call i32 @assertEqualInt(i32 1, i32 %80)
  %82 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %83 = call i32 @archive_entry_free(%struct.archive_entry* %82)
  %84 = load %struct.archive*, %struct.archive** %2, align 8
  %85 = call i32 @archive_match_free(%struct.archive* %84)
  br label %86

86:                                               ; preds = %18, %15, %8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_include_gid(%struct.archive*, i32) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i32) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_match_owner_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_match_excluded(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
