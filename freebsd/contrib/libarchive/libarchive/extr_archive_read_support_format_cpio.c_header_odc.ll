; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_header_odc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_header_odc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i8* }
%struct.cpio = type { i64, i64 }
%struct.archive_entry = type { i32 }

@ARCHIVE_FORMAT_CPIO_POSIX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"POSIX octet-oriented cpio\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_CPIO_AFIO_LARGE = common dso_local global i64 0, align 8
@ARCHIVE_OK = common dso_local global i32 0, align 4
@odc_header_size = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@odc_dev_offset = common dso_local global i32 0, align 4
@odc_dev_size = common dso_local global i32 0, align 4
@odc_ino_offset = common dso_local global i32 0, align 4
@odc_ino_size = common dso_local global i32 0, align 4
@odc_mode_offset = common dso_local global i32 0, align 4
@odc_mode_size = common dso_local global i32 0, align 4
@odc_uid_offset = common dso_local global i32 0, align 4
@odc_uid_size = common dso_local global i32 0, align 4
@odc_gid_offset = common dso_local global i32 0, align 4
@odc_gid_size = common dso_local global i32 0, align 4
@odc_nlink_offset = common dso_local global i32 0, align 4
@odc_nlink_size = common dso_local global i32 0, align 4
@odc_rdev_offset = common dso_local global i32 0, align 4
@odc_rdev_size = common dso_local global i32 0, align 4
@odc_mtime_offset = common dso_local global i32 0, align 4
@odc_mtime_size = common dso_local global i32 0, align 4
@odc_namesize_offset = common dso_local global i32 0, align 4
@odc_namesize_size = common dso_local global i32 0, align 4
@odc_filesize_offset = common dso_local global i32 0, align 4
@odc_filesize_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.cpio*, %struct.archive_entry*, i64*, i64*)* @header_odc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_odc(%struct.archive_read* %0, %struct.cpio* %1, %struct.archive_entry* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.cpio*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.cpio* %1, %struct.cpio** %8, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i64, i64* @ARCHIVE_FORMAT_CPIO_POSIX, align 8
  %17 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %18 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %24 = call i32 @find_odc_header(%struct.archive_read* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @ARCHIVE_WARN, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %13, align 4
  store i32 %29, i32* %6, align 4
  br label %156

30:                                               ; preds = %5
  %31 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %32 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ARCHIVE_FORMAT_CPIO_AFIO_LARGE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %51

37:                                               ; preds = %30
  %38 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %39 = load %struct.cpio*, %struct.cpio** %8, align 8
  %40 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %41 = load i64*, i64** %10, align 8
  %42 = load i64*, i64** %11, align 8
  %43 = call i32 @header_afiol(%struct.archive_read* %38, %struct.cpio* %39, %struct.archive_entry* %40, i64* %41, i64* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @ARCHIVE_OK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %6, align 4
  br label %156

49:                                               ; preds = %37
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %6, align 4
  br label %156

51:                                               ; preds = %30
  %52 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %53 = load i32, i32* @odc_header_size, align 4
  %54 = call i8* @__archive_read_ahead(%struct.archive_read* %52, i32 %53, i32* null)
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %58, i32* %6, align 4
  br label %156

59:                                               ; preds = %51
  %60 = load i8*, i8** %12, align 8
  store i8* %60, i8** %14, align 8
  %61 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load i32, i32* @odc_dev_offset, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, i8* %62, i64 %64
  %66 = load i32, i32* @odc_dev_size, align 4
  %67 = call i64 @atol8(i8* %65, i32 %66)
  %68 = trunc i64 %67 to i32
  %69 = call i32 @archive_entry_set_dev(%struct.archive_entry* %61, i32 %68)
  %70 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %71 = load i8*, i8** %14, align 8
  %72 = load i32, i32* @odc_ino_offset, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i32, i32* @odc_ino_size, align 4
  %76 = call i64 @atol8(i8* %74, i32 %75)
  %77 = call i32 @archive_entry_set_ino(%struct.archive_entry* %70, i64 %76)
  %78 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = load i32, i32* @odc_mode_offset, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i32, i32* @odc_mode_size, align 4
  %84 = call i64 @atol8(i8* %82, i32 %83)
  %85 = trunc i64 %84 to i32
  %86 = call i32 @archive_entry_set_mode(%struct.archive_entry* %78, i32 %85)
  %87 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %88 = load i8*, i8** %14, align 8
  %89 = load i32, i32* @odc_uid_offset, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %88, i64 %90
  %92 = load i32, i32* @odc_uid_size, align 4
  %93 = call i64 @atol8(i8* %91, i32 %92)
  %94 = call i32 @archive_entry_set_uid(%struct.archive_entry* %87, i64 %93)
  %95 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %96 = load i8*, i8** %14, align 8
  %97 = load i32, i32* @odc_gid_offset, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i32, i32* @odc_gid_size, align 4
  %101 = call i64 @atol8(i8* %99, i32 %100)
  %102 = call i32 @archive_entry_set_gid(%struct.archive_entry* %95, i64 %101)
  %103 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %104 = load i8*, i8** %14, align 8
  %105 = load i32, i32* @odc_nlink_offset, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i8, i8* %104, i64 %106
  %108 = load i32, i32* @odc_nlink_size, align 4
  %109 = call i64 @atol8(i8* %107, i32 %108)
  %110 = trunc i64 %109 to i32
  %111 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %103, i32 %110)
  %112 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i32, i32* @odc_rdev_offset, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* @odc_rdev_size, align 4
  %118 = call i64 @atol8(i8* %116, i32 %117)
  %119 = trunc i64 %118 to i32
  %120 = call i32 @archive_entry_set_rdev(%struct.archive_entry* %112, i32 %119)
  %121 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = load i32, i32* @odc_mtime_offset, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i32, i32* @odc_mtime_size, align 4
  %127 = call i64 @atol8(i8* %125, i32 %126)
  %128 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %121, i64 %127, i32 0)
  %129 = load i8*, i8** %14, align 8
  %130 = load i32, i32* @odc_namesize_offset, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* @odc_namesize_size, align 4
  %134 = call i64 @atol8(i8* %132, i32 %133)
  %135 = load i64*, i64** %10, align 8
  store i64 %134, i64* %135, align 8
  %136 = load i64*, i64** %11, align 8
  store i64 0, i64* %136, align 8
  %137 = load i8*, i8** %14, align 8
  %138 = load i32, i32* @odc_filesize_offset, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i32, i32* @odc_filesize_size, align 4
  %142 = call i64 @atol8(i8* %140, i32 %141)
  %143 = load %struct.cpio*, %struct.cpio** %8, align 8
  %144 = getelementptr inbounds %struct.cpio, %struct.cpio* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  %145 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %146 = load %struct.cpio*, %struct.cpio** %8, align 8
  %147 = getelementptr inbounds %struct.cpio, %struct.cpio* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @archive_entry_set_size(%struct.archive_entry* %145, i64 %148)
  %150 = load %struct.cpio*, %struct.cpio** %8, align 8
  %151 = getelementptr inbounds %struct.cpio, %struct.cpio* %150, i32 0, i32 0
  store i64 0, i64* %151, align 8
  %152 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %153 = load i32, i32* @odc_header_size, align 4
  %154 = call i32 @__archive_read_consume(%struct.archive_read* %152, i32 %153)
  %155 = load i32, i32* %13, align 4
  store i32 %155, i32* %6, align 4
  br label %156

156:                                              ; preds = %59, %57, %49, %47, %28
  %157 = load i32, i32* %6, align 4
  ret i32 %157
}

declare dso_local i32 @find_odc_header(%struct.archive_read*) #1

declare dso_local i32 @header_afiol(%struct.archive_read*, %struct.cpio*, %struct.archive_entry*, i64*, i64*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_entry_set_dev(%struct.archive_entry*, i32) #1

declare dso_local i64 @atol8(i8*, i32) #1

declare dso_local i32 @archive_entry_set_ino(%struct.archive_entry*, i64) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

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
