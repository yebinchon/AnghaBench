; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_header_afiol.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_header_afiol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.cpio = type { i64, i64 }
%struct.archive_entry = type { i32 }

@ARCHIVE_FORMAT_CPIO_AFIO_LARGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"afio large ASCII\00", align 1
@afiol_header_size = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@afiol_dev_offset = common dso_local global i32 0, align 4
@afiol_dev_size = common dso_local global i32 0, align 4
@afiol_ino_offset = common dso_local global i32 0, align 4
@afiol_ino_size = common dso_local global i32 0, align 4
@afiol_mode_offset = common dso_local global i32 0, align 4
@afiol_mode_size = common dso_local global i32 0, align 4
@afiol_uid_offset = common dso_local global i32 0, align 4
@afiol_uid_size = common dso_local global i32 0, align 4
@afiol_gid_offset = common dso_local global i32 0, align 4
@afiol_gid_size = common dso_local global i32 0, align 4
@afiol_nlink_offset = common dso_local global i32 0, align 4
@afiol_nlink_size = common dso_local global i32 0, align 4
@afiol_rdev_offset = common dso_local global i32 0, align 4
@afiol_rdev_size = common dso_local global i32 0, align 4
@afiol_mtime_offset = common dso_local global i32 0, align 4
@afiol_mtime_size = common dso_local global i32 0, align 4
@afiol_namesize_offset = common dso_local global i32 0, align 4
@afiol_namesize_size = common dso_local global i32 0, align 4
@afiol_filesize_offset = common dso_local global i32 0, align 4
@afiol_filesize_size = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.cpio*, %struct.archive_entry*, i64*, i64*)* @header_afiol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_afiol(%struct.archive_read* %0, %struct.cpio* %1, %struct.archive_entry* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.cpio*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.cpio* %1, %struct.cpio** %8, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %14 = load i32, i32* @ARCHIVE_FORMAT_CPIO_AFIO_LARGE, align 4
  %15 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  %18 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %22 = load i32, i32* @afiol_header_size, align 4
  %23 = call i8* @__archive_read_ahead(%struct.archive_read* %21, i32 %22, i32* null)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %27, i32* %6, align 4
  br label %125

28:                                               ; preds = %5
  %29 = load i8*, i8** %12, align 8
  store i8* %29, i8** %13, align 8
  %30 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = load i32, i32* @afiol_dev_offset, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i32, i32* @afiol_dev_size, align 4
  %36 = call i64 @atol16(i8* %34, i32 %35)
  %37 = trunc i64 %36 to i32
  %38 = call i32 @archive_entry_set_dev(%struct.archive_entry* %30, i32 %37)
  %39 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = load i32, i32* @afiol_ino_offset, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i32, i32* @afiol_ino_size, align 4
  %45 = call i64 @atol16(i8* %43, i32 %44)
  %46 = call i32 @archive_entry_set_ino(%struct.archive_entry* %39, i64 %45)
  %47 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %48 = load i8*, i8** %13, align 8
  %49 = load i32, i32* @afiol_mode_offset, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i32, i32* @afiol_mode_size, align 4
  %53 = call i64 @atol8(i8* %51, i32 %52)
  %54 = trunc i64 %53 to i32
  %55 = call i32 @archive_entry_set_mode(%struct.archive_entry* %47, i32 %54)
  %56 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %57 = load i8*, i8** %13, align 8
  %58 = load i32, i32* @afiol_uid_offset, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i32, i32* @afiol_uid_size, align 4
  %62 = call i64 @atol16(i8* %60, i32 %61)
  %63 = call i32 @archive_entry_set_uid(%struct.archive_entry* %56, i64 %62)
  %64 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* @afiol_gid_offset, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* @afiol_gid_size, align 4
  %70 = call i64 @atol16(i8* %68, i32 %69)
  %71 = call i32 @archive_entry_set_gid(%struct.archive_entry* %64, i64 %70)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* @afiol_nlink_offset, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* @afiol_nlink_size, align 4
  %78 = call i64 @atol16(i8* %76, i32 %77)
  %79 = trunc i64 %78 to i32
  %80 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %72, i32 %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i32, i32* @afiol_rdev_offset, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i32, i32* @afiol_rdev_size, align 4
  %87 = call i64 @atol16(i8* %85, i32 %86)
  %88 = trunc i64 %87 to i32
  %89 = call i32 @archive_entry_set_rdev(%struct.archive_entry* %81, i32 %88)
  %90 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load i32, i32* @afiol_mtime_offset, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i32, i32* @afiol_mtime_size, align 4
  %96 = call i64 @atol16(i8* %94, i32 %95)
  %97 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %90, i64 %96, i32 0)
  %98 = load i8*, i8** %13, align 8
  %99 = load i32, i32* @afiol_namesize_offset, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i32, i32* @afiol_namesize_size, align 4
  %103 = call i64 @atol16(i8* %101, i32 %102)
  %104 = load i64*, i64** %10, align 8
  store i64 %103, i64* %104, align 8
  %105 = load i64*, i64** %11, align 8
  store i64 0, i64* %105, align 8
  %106 = load i8*, i8** %13, align 8
  %107 = load i32, i32* @afiol_filesize_offset, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  %110 = load i32, i32* @afiol_filesize_size, align 4
  %111 = call i64 @atol16(i8* %109, i32 %110)
  %112 = load %struct.cpio*, %struct.cpio** %8, align 8
  %113 = getelementptr inbounds %struct.cpio, %struct.cpio* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %115 = load %struct.cpio*, %struct.cpio** %8, align 8
  %116 = getelementptr inbounds %struct.cpio, %struct.cpio* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @archive_entry_set_size(%struct.archive_entry* %114, i64 %117)
  %119 = load %struct.cpio*, %struct.cpio** %8, align 8
  %120 = getelementptr inbounds %struct.cpio, %struct.cpio* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  %121 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %122 = load i32, i32* @afiol_header_size, align 4
  %123 = call i32 @__archive_read_consume(%struct.archive_read* %121, i32 %122)
  %124 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %28, %26
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_entry_set_dev(%struct.archive_entry*, i32) #1

declare dso_local i64 @atol16(i8*, i32) #1

declare dso_local i32 @archive_entry_set_ino(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i64 @atol8(i8*, i32) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_nlink(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_rdev(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i64, i32) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i64) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
