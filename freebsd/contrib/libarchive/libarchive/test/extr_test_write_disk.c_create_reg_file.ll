; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk.c_create_reg_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/test/extr_test_write_disk.c_create_reg_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive = type { i32 }

@create_reg_file.data = internal constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 16
@ARCHIVE_EXTRACT_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"No atime given, so atime should get set to current time\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.archive_entry*, i8*)* @create_reg_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_reg_file(%struct.archive_entry* %0, i8* %1) #0 {
  %3 = alloca %struct.archive_entry*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.archive*, align 8
  store %struct.archive_entry* %0, %struct.archive_entry** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.archive* (...) @archive_write_disk_new()
  store %struct.archive* %6, %struct.archive** %5, align 8
  %7 = icmp ne %struct.archive* %6, null
  %8 = zext i1 %7 to i32
  %9 = call i32 @assert(i32 %8)
  %10 = load %struct.archive*, %struct.archive** %5, align 8
  %11 = load i32, i32* @ARCHIVE_EXTRACT_TIME, align 4
  %12 = call i32 @archive_write_disk_set_options(%struct.archive* %10, i32 %11)
  %13 = load i8*, i8** %4, align 8
  %14 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %13)
  %15 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %16 = call i32 @archive_entry_set_size(%struct.archive_entry* %15, i32 27)
  %17 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %18 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %17, i32 123456789, i32 0)
  %19 = load %struct.archive*, %struct.archive** %5, align 8
  %20 = load %struct.archive*, %struct.archive** %5, align 8
  %21 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %22 = call i32 @archive_write_header(%struct.archive* %20, %struct.archive_entry* %21)
  %23 = call i32 @assertEqualIntA(%struct.archive* %19, i32 0, i32 %22)
  %24 = load %struct.archive*, %struct.archive** %5, align 8
  %25 = call i32 @archive_write_data(%struct.archive* %24, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @create_reg_file.data, i64 0, i64 0), i32 27)
  %26 = call i32 @assertEqualInt(i32 27, i32 %25)
  %27 = load %struct.archive*, %struct.archive** %5, align 8
  %28 = load %struct.archive*, %struct.archive** %5, align 8
  %29 = call i32 @archive_write_finish_entry(%struct.archive* %28)
  %30 = call i32 @assertEqualIntA(%struct.archive* %27, i32 0, i32 %29)
  %31 = load %struct.archive*, %struct.archive** %5, align 8
  %32 = call i32 @archive_write_free(%struct.archive* %31)
  %33 = call i32 @assertEqualInt(i32 0, i32 %32)
  %34 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %35 = call i32 @archive_entry_pathname(%struct.archive_entry* %34)
  %36 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %37 = call i32 @archive_entry_mode(%struct.archive_entry* %36)
  %38 = and i32 %37, 511
  %39 = call i32 @assertIsReg(i32 %35, i32 %38)
  %40 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %41 = call i32 @archive_entry_pathname(%struct.archive_entry* %40)
  %42 = call i32 @assertFileSize(i32 %41, i32 27)
  %43 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %44 = call i32 @archive_entry_pathname(%struct.archive_entry* %43)
  %45 = call i32 @assertFileMtime(i32 %44, i32 123456789, i32 0)
  %46 = call i32 (i8*, ...) @failure(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.archive_entry*, %struct.archive_entry** %3, align 8
  %48 = call i32 @archive_entry_pathname(%struct.archive_entry* %47)
  %49 = call i32 @assertFileAtimeRecent(i32 %48)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.archive* @archive_write_disk_new(...) #1

declare dso_local i32 @archive_write_disk_set_options(%struct.archive*, i32) #1

declare dso_local i32 @failure(i8*, ...) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @assertEqualIntA(%struct.archive*, i32, i32) #1

declare dso_local i32 @archive_write_header(%struct.archive*, %struct.archive_entry*) #1

declare dso_local i32 @assertEqualInt(i32, i32) #1

declare dso_local i32 @archive_write_data(%struct.archive*, i8*, i32) #1

declare dso_local i32 @archive_write_finish_entry(%struct.archive*) #1

declare dso_local i32 @archive_write_free(%struct.archive*) #1

declare dso_local i32 @assertIsReg(i32, i32) #1

declare dso_local i32 @archive_entry_pathname(%struct.archive_entry*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @assertFileSize(i32, i32) #1

declare dso_local i32 @assertFileMtime(i32, i32, i32) #1

declare dso_local i32 @assertFileAtimeRecent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
