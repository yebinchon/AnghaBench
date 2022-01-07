; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_sparse_basic.c_verify_sparse_file2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_sparse_basic.c_verify_sparse_file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.sparse = type { i32 }
%struct.archive_entry = type { i32 }

@O_RDONLY = common dso_local global i32 0, align 4
@O_BINARY = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive*, i8*, %struct.sparse*, i32, i32)* @verify_sparse_file2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_sparse_file2(%struct.archive* %0, i8* %1, %struct.sparse* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sparse*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.archive_entry*, align 8
  %12 = alloca i32, align 4
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store %struct.sparse* %2, %struct.sparse** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.sparse*, %struct.sparse** %8, align 8
  %14 = call %struct.archive_entry* (...) @archive_entry_new()
  store %struct.archive_entry* %14, %struct.archive_entry** %11, align 8
  %15 = icmp ne %struct.archive_entry* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %18, i8* %19)
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %5
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* @O_RDONLY, align 4
  %26 = load i32, i32* @O_BINARY, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @open(i8* %24, i32 %27)
  store i32 %28, i32* %12, align 4
  br label %30

29:                                               ; preds = %5
  store i32 -1, i32* %12, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.archive*, %struct.archive** %6, align 8
  %32 = load i32, i32* @ARCHIVE_OK, align 4
  %33 = load %struct.archive*, %struct.archive** %6, align 8
  %34 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @archive_read_disk_entry_from_file(%struct.archive* %33, %struct.archive_entry* %34, i32 %35, i32* null)
  %37 = call i32 @assertEqualIntA(%struct.archive* %31, i32 %32, i32 %36)
  %38 = load i32, i32* %12, align 4
  %39 = icmp sge i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @close(i32 %41)
  br label %43

43:                                               ; preds = %40, %30
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @failure(i8* %44)
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %48 = call i32 @archive_entry_sparse_count(%struct.archive_entry* %47)
  %49 = call i32 @assertEqualInt(i32 %46, i32 %48)
  %50 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %51 = call i32 @archive_entry_free(%struct.archive_entry* %50)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive_entry* @archive_entry_new(...) #1

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_read_disk_entry_from_file(%struct.archive*, %struct.archive_entry*, i32, i32*) #1

declare dso_local i32 @close(i32) #1

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
