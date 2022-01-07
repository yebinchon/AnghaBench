; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_set_xattrs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_disk_posix.c_set_xattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_disk = type { i32, i32 }

@set_xattrs.warning_done = internal global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Cannot restore extended attributes on this system\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_disk*)* @set_xattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_xattrs(%struct.archive_write_disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write_disk*, align 8
  store %struct.archive_write_disk* %0, %struct.archive_write_disk** %3, align 8
  %4 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %5 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i64 @archive_entry_xattr_count(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @set_xattrs.warning_done, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %9
  store i32 1, i32* @set_xattrs.warning_done, align 4
  %13 = load %struct.archive_write_disk*, %struct.archive_write_disk** %3, align 8
  %14 = getelementptr inbounds %struct.archive_write_disk, %struct.archive_write_disk* %13, i32 0, i32 0
  %15 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %16 = call i32 @archive_set_error(i32* %14, i32 %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %17, i32* %2, align 4
  br label %20

18:                                               ; preds = %9, %1
  %19 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i64 @archive_entry_xattr_count(i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
