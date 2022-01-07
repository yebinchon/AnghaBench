; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c__archive_write_disk_data_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c__archive_write_disk_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_write_disk = type { i32, i64, i32, i32 }

@ARCHIVE_WRITE_DISK_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"archive_write_data_block\00", align 1
@TODO_HFS_COMPRESSION = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Too much data: Truncating file at %ju bytes\00", align 1
@ARCHIVE_WARN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.archive*, i8*, i64, i32)* @_archive_write_disk_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_archive_write_disk_data_block(%struct.archive* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.archive_write_disk*, align 8
  %11 = alloca i64, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.archive*, %struct.archive** %6, align 8
  %13 = bitcast %struct.archive* %12 to %struct.archive_write_disk*
  store %struct.archive_write_disk* %13, %struct.archive_write_disk** %10, align 8
  %14 = load %struct.archive_write_disk*, %struct.archive_write_disk** %10, align 8
  %15 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %14, i32 0, i32 2
  %16 = load i32, i32* @ARCHIVE_WRITE_DISK_MAGIC, align 4
  %17 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %18 = call i32 @archive_check_magic(i32* %15, i32 %16, i32 %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.archive_write_disk*, %struct.archive_write_disk** %10, align 8
  %21 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.archive_write_disk*, %struct.archive_write_disk** %10, align 8
  %23 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @TODO_HFS_COMPRESSION, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %4
  %29 = load %struct.archive_write_disk*, %struct.archive_write_disk** %10, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @hfs_write_data_block(%struct.archive_write_disk* %29, i8* %30, i64 %31)
  store i64 %32, i64* %11, align 8
  br label %38

33:                                               ; preds = %4
  %34 = load %struct.archive_write_disk*, %struct.archive_write_disk** %10, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @write_data_block(%struct.archive_write_disk* %34, i8* %35, i64 %36)
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @ARCHIVE_OK, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8
  store i64 %43, i64* %5, align 8
  br label %59

44:                                               ; preds = %38
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %44
  %49 = load %struct.archive_write_disk*, %struct.archive_write_disk** %10, align 8
  %50 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %49, i32 0, i32 2
  %51 = load %struct.archive_write_disk*, %struct.archive_write_disk** %10, align 8
  %52 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = trunc i64 %53 to i32
  %55 = call i32 @archive_set_error(i32* %50, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i64, i64* @ARCHIVE_WARN, align 8
  store i64 %56, i64* %5, align 8
  br label %59

57:                                               ; preds = %44
  %58 = load i64, i64* @ARCHIVE_OK, align 8
  store i64 %58, i64* %5, align 8
  br label %59

59:                                               ; preds = %57, %48, %42
  %60 = load i64, i64* %5, align 8
  ret i64 %60
}

declare dso_local i32 @archive_check_magic(i32*, i32, i32, i8*) #1

declare dso_local i64 @hfs_write_data_block(%struct.archive_write_disk*, i8*, i64) #1

declare dso_local i64 @write_data_block(%struct.archive_write_disk*, i8*, i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
