; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_metadata_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_read_disk_directory_traversals.c_metadata_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_entry = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"CTime should be set\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"MTime should be set\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"archive_read_disk_can_descend should work in metadata filter\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"archive_read_disk_descend should work in metadata filter\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8*, %struct.archive_entry*)* @metadata_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metadata_filter(%struct.archive* %0, i8* %1, %struct.archive_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.archive_entry*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %7, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = call i32 @failure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %11 = call i32 @archive_entry_ctime_is_set(%struct.archive_entry* %10)
  %12 = call i32 @assertEqualInt(i32 8, i32 %11)
  %13 = call i32 @failure(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %15 = call i32 @archive_entry_mtime_is_set(%struct.archive_entry* %14)
  %16 = call i32 @assertEqualInt(i32 16, i32 %15)
  %17 = load %struct.archive_entry*, %struct.archive_entry** %7, align 8
  %18 = call i32 @archive_entry_mtime(%struct.archive_entry* %17)
  %19 = icmp slt i32 %18, 886611
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

21:                                               ; preds = %3
  %22 = load %struct.archive*, %struct.archive** %5, align 8
  %23 = call i64 @archive_read_disk_can_descend(%struct.archive* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = call i32 @failure(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.archive*, %struct.archive** %5, align 8
  %28 = load %struct.archive*, %struct.archive** %5, align 8
  %29 = call i64 @archive_read_disk_can_descend(%struct.archive* %28)
  %30 = call i32 @assertEqualIntA(%struct.archive* %27, i32 1, i64 %29)
  %31 = call i32 @failure(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0))
  %32 = load %struct.archive*, %struct.archive** %5, align 8
  %33 = load i32, i32* @ARCHIVE_OK, align 4
  %34 = load %struct.archive*, %struct.archive** %5, align 8
  %35 = call i64 @archive_read_disk_descend(%struct.archive* %34)
  %36 = call i32 @assertEqualIntA(%struct.archive* %32, i32 %33, i64 %35)
  br label %37

37:                                               ; preds = %25, %21
  store i32 1, i32* %4, align 4
  br label %38

38:                                               ; preds = %37, %20
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @failure(i8*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_entry_ctime_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime_is_set(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mtime(%struct.archive_entry*) #1

declare dso_local i64 @archive_read_disk_can_descend(%struct.archive*) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i64) #1

declare dso_local i64 @archive_read_disk_descend(%struct.archive*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
