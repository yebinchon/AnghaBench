; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_find_out_boot_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_isoent_find_out_boot_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.isoent = type { i32 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Can't find the boot image file ``%s''\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@BOOT_IMAGE = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.isoent*)* @isoent_find_out_boot_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isoent_find_out_boot_file(%struct.archive_write* %0, %struct.isoent* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.isoent*, align 8
  %6 = alloca %struct.iso9660*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.isoent* %1, %struct.isoent** %5, align 8
  %7 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %8 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %7, i32 0, i32 1
  %9 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  store %struct.iso9660* %9, %struct.iso9660** %6, align 8
  %10 = load %struct.isoent*, %struct.isoent** %5, align 8
  %11 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %12 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.TYPE_8__* @isoent_find_entry(%struct.isoent* %10, i32 %15)
  %17 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %18 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %19, align 8
  %20 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %21 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = icmp eq %struct.TYPE_8__* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %2
  %26 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %27 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %26, i32 0, i32 0
  %28 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %29 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %30 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @archive_set_error(i32* %27, i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %35, i32* %3, align 4
  br label %46

36:                                               ; preds = %2
  %37 = load i32, i32* @BOOT_IMAGE, align 4
  %38 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %39 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  store i32 %37, i32* %44, align 4
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %36, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.TYPE_8__* @isoent_find_entry(%struct.isoent*, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
