; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_set_fflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_set_fflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i32, i32, i32, i32 }
%struct.fixup_entry = type { i32, i64, i32 }

@TODO_FFLAGS = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@EXT2_APPEND_FL = common dso_local global i32 0, align 4
@EXT2_IMMUTABLE_FL = common dso_local global i32 0, align 4
@FS_APPEND_FL = common dso_local global i32 0, align 4
@FS_IMMUTABLE_FL = common dso_local global i32 0, align 4
@FS_JOURNAL_DATA_FL = common dso_local global i32 0, align 4
@SF_APPEND = common dso_local global i32 0, align 4
@SF_IMMUTABLE = common dso_local global i32 0, align 4
@TODO_MODE = common dso_local global i32 0, align 4
@UF_APPEND = common dso_local global i32 0, align 4
@UF_IMMUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*)* @set_fflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_fflags(%struct.archive_write_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write_disk*, align 8
  %4 = alloca %struct.fixup_entry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %3, align 8
  %10 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %11 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @archive_entry_mode(i32 %12)
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %15 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TODO_FFLAGS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %1
  %21 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %22 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @archive_entry_fflags(i32 %23, i64* %5, i64* %6)
  %25 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %26 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %27 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %30 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @set_fflags_platform(%struct.archive_write_disk* %25, i32 %28, i32 %31, i32 %32, i64 %33, i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %20
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %2, align 4
  br label %44

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %1
  %43 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @archive_entry_mode(i32) #1

declare dso_local i32 @archive_entry_fflags(i32, i64*, i64*) #1

declare dso_local i32 @set_fflags_platform(%struct.archive_write_disk*, i32, i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
