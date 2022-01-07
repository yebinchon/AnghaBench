; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_sparse_basic.c_test_sparse_whole_file_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_sparse_basic.c_test_sparse_whole_file_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"There should be no sparse\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_sparse_whole_file_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_sparse_whole_file_data() #0 {
  %1 = alloca %struct.archive_entry*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %4, %struct.archive_entry** %1, align 8
  %5 = icmp ne %struct.archive_entry* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %9 = call i32 @archive_entry_set_size(%struct.archive_entry* %8, i32 10240)
  store i64 0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %19, %0
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %22

13:                                               ; preds = %10
  %14 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @archive_entry_sparse_add_entry(%struct.archive_entry* %14, i64 %15, i32 1024)
  %17 = load i64, i64* %2, align 8
  %18 = add nsw i64 %17, 1024
  store i64 %18, i64* %2, align 8
  br label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %10

22:                                               ; preds = %10
  %23 = call i32 @failure(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %25 = call i32 @archive_entry_sparse_count(%struct.archive_entry* %24)
  %26 = call i32 @assertEqualInt(i32 0, i32 %25)
  %27 = load %struct.archive_entry*, %struct.archive_entry** %1, align 8
  %28 = call i32 @archive_entry_free(%struct.archive_entry* %27)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_sparse_add_entry(%struct.archive_entry*, i64, i32) #1

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_sparse_count(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_free(%struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
