; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk.c_create_reg_file2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk.c_create_reg_file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_entry*, i8*)* @create_reg_file2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_reg_file2(%struct.archive_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.archive*, align 8
  %8 = alloca i32, align 4
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 100000, i32* %5, align 4
  %9 = call i8* @malloc(i32 100000)
  store i8* %9, i8** %6, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 100000
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load i32, i32* %8, align 4
  %15 = srem i32 %14, 256
  %16 = trunc i32 %15 to i8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8 %16, i8* %20, align 1
  br label %21

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %8, align 4
  br label %10

24:                                               ; preds = %10
  %25 = call %struct.archive* (...) @archive_write_disk_new()
  store %struct.archive* %25, %struct.archive** %7, align 8
  %26 = icmp ne %struct.archive* %25, null
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %32 = call i32 @archive_entry_set_size(%struct.archive_entry* %31, i32 100000)
  %33 = load %struct.archive*, %struct.archive** %7, align 8
  %34 = load %struct.archive*, %struct.archive** %7, align 8
  %35 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %36 = call i32 @archive_write_header(%struct.archive* %34, %struct.archive_entry* %35)
  %37 = call i32 @assertEqualIntA(%struct.archive* %33, i32 0, i32 %36)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %52, %24
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 99001
  br i1 %40, label %41, label %55

41:                                               ; preds = %38
  %42 = load %struct.archive*, %struct.archive** %7, align 8
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  %44 = load %struct.archive*, %struct.archive** %7, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @archive_write_data_block(%struct.archive* %44, i8* %48, i32 1000, i32 %49)
  %51 = call i32 @assertEqualIntA(%struct.archive* %42, i32 %43, i32 %50)
  br label %52

52:                                               ; preds = %41
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1000
  store i32 %54, i32* %8, align 4
  br label %38

55:                                               ; preds = %38
  %56 = load %struct.archive*, %struct.archive** %7, align 8
  %57 = load %struct.archive*, %struct.archive** %7, align 8
  %58 = call i32 @archive_write_finish_entry(%struct.archive* %57)
  %59 = call i32 @assertEqualIntA(%struct.archive* %56, i32 0, i32 %58)
  %60 = load %struct.archive*, %struct.archive** %7, align 8
  %61 = call i32 @archive_write_free(%struct.archive* %60)
  %62 = call i32 @assertEqualInt(i32 0, i32 %61)
  %63 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %64 = call i32 @archive_entry_pathname(%struct.archive_entry* %63)
  %65 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %66 = call i32 @archive_entry_mode(%struct.archive_entry* %65)
  %67 = and i32 %66, 511
  %68 = call i32 @assertIsReg(i32 %64, i32 %67)
  %69 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %70 = call i32 @archive_entry_pathname(%struct.archive_entry* %69)
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @assertFileSize(i32 %70, i32 %71)
  %73 = load i8*, i8** %6, align 8
  %74 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %75 = call i32 @archive_entry_pathname(%struct.archive_entry* %74)
  %76 = call i32 @assertFileContents(i8* %73, i32 100000, i32 %75)
  %77 = load i8*, i8** %6, align 8
  %78 = call i32 @free(i8* %77)
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_disk_new(...) #1

declare dso_local i32 @failure(i8*, i8*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @archive_write_data_block(%struct.archive*, i8*, i32, i32) #1

declare dso_local i32 @archive_write_finish_entry(%struct.archive*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @assertIsReg(i32, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assertFileSize(i32, i32) #1

declare dso_local i32 @assertFileContents(i8*, i32, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
