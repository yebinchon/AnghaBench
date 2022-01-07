; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_path.c_test_inclusion_from_file_wcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_archive_match_path.c_test_inclusion_from_file_wcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }

@.str = private unnamed_addr constant [10 x i32] [i32 105, i32 110, i32 99, i32 108, i32 117, i32 115, i32 105, i32 111, i32 110, i32 0], align 4
@.str.1 = private unnamed_addr constant [15 x i32] [i32 105, i32 110, i32 99, i32 108, i32 117, i32 115, i32 105, i32 111, i32 110, i32 95, i32 110, i32 117, i32 108, i32 108, i32 0], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_inclusion_from_file_wcs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_inclusion_from_file_wcs() #0 {
  %1 = alloca %struct.archive*, align 8
  %2 = call %struct.archive* (...) @archive_match_new()
  store %struct.archive* %2, %struct.archive** %1, align 8
  %3 = icmp ne %struct.archive* %2, null
  %4 = zext i1 %3 to i32
  %5 = call i32 @assert(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %32

8:                                                ; preds = %0
  %9 = load %struct.archive*, %struct.archive** %1, align 8
  %10 = load %struct.archive*, %struct.archive** %1, align 8
  %11 = call i32 @archive_match_include_pattern_from_file_w(%struct.archive* %10, i8* bitcast ([10 x i32]* @.str to i8*), i32 0)
  %12 = call i32 @assertEqualIntA(%struct.archive* %9, i32 0, i32 %11)
  %13 = load %struct.archive*, %struct.archive** %1, align 8
  %14 = call i32 @exclusion_from_file(%struct.archive* %13)
  %15 = load %struct.archive*, %struct.archive** %1, align 8
  %16 = call i32 @archive_match_free(%struct.archive* %15)
  %17 = call %struct.archive* (...) @archive_match_new()
  store %struct.archive* %17, %struct.archive** %1, align 8
  %18 = icmp ne %struct.archive* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %8
  br label %32

23:                                               ; preds = %8
  %24 = load %struct.archive*, %struct.archive** %1, align 8
  %25 = load %struct.archive*, %struct.archive** %1, align 8
  %26 = call i32 @archive_match_include_pattern_from_file_w(%struct.archive* %25, i8* bitcast ([15 x i32]* @.str.1 to i8*), i32 1)
  %27 = call i32 @assertEqualIntA(%struct.archive* %24, i32 0, i32 %26)
  %28 = load %struct.archive*, %struct.archive** %1, align 8
  %29 = call i32 @exclusion_from_file(%struct.archive* %28)
  %30 = load %struct.archive*, %struct.archive** %1, align 8
  %31 = call i32 @archive_match_free(%struct.archive* %30)
  br label %32

32:                                               ; preds = %23, %22, %7
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_match_new(...) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_match_include_pattern_from_file_w(%struct.archive*, i8*, i32) #1

declare dso_local i32 @exclusion_from_file(%struct.archive*) #1

declare dso_local i32 @archive_match_free(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
