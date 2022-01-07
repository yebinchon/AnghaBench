; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_header_bin_le.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_header_bin_le.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.cpio = type { i32, i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_FORMAT_CPIO_BIN_LE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"cpio (little-endian binary)\00", align 1
@bin_header_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"End of file trying to read next cpio header\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@bin_dev_offset = common dso_local global i64 0, align 8
@bin_ino_offset = common dso_local global i64 0, align 8
@bin_mode_offset = common dso_local global i64 0, align 8
@bin_uid_offset = common dso_local global i64 0, align 8
@bin_gid_offset = common dso_local global i64 0, align 8
@bin_nlink_offset = common dso_local global i64 0, align 8
@bin_rdev_offset = common dso_local global i64 0, align 8
@bin_mtime_offset = common dso_local global i32 0, align 4
@bin_namesize_offset = common dso_local global i64 0, align 8
@bin_filesize_offset = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.cpio*, %struct.archive_entry*, i64*, i64*)* @header_bin_le to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_bin_le(%struct.archive_read* %0, %struct.cpio* %1, %struct.archive_entry* %2, i64* %3, i64* %4) #0 {
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
  %14 = load i32, i32* @ARCHIVE_FORMAT_CPIO_BIN_LE, align 4
  %15 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 8
  %18 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %19 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %21 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %22 = load i32, i32* @bin_header_size, align 4
  %23 = call i8* @__archive_read_ahead(%struct.archive_read* %21, i32 %22, i32* null)
  store i8* %23, i8** %12, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %5
  %27 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %28 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %27, i32 0, i32 0
  %29 = call i32 @archive_set_error(%struct.TYPE_2__* %28, i32 0, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %30, i32* %6, align 4
  br label %193

31:                                               ; preds = %5
  %32 = load i8*, i8** %12, align 8
  store i8* %32, i8** %13, align 8
  %33 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = load i64, i64* @bin_dev_offset, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8*, i8** %13, align 8
  %40 = load i64, i64* @bin_dev_offset, align 8
  %41 = add i64 %40, 1
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = mul nsw i32 %44, 256
  %46 = add nsw i32 %38, %45
  %47 = trunc i32 %46 to i8
  %48 = call i32 @archive_entry_set_dev(%struct.archive_entry* %33, i8 zeroext %47)
  %49 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i64, i64* @bin_ino_offset, align 8
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8*, i8** %13, align 8
  %56 = load i64, i64* @bin_ino_offset, align 8
  %57 = add i64 %56, 1
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = mul nsw i32 %60, 256
  %62 = add nsw i32 %54, %61
  %63 = trunc i32 %62 to i8
  %64 = call i32 @archive_entry_set_ino(%struct.archive_entry* %49, i8 zeroext %63)
  %65 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %66 = load i8*, i8** %13, align 8
  %67 = load i64, i64* @bin_mode_offset, align 8
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = load i8*, i8** %13, align 8
  %72 = load i64, i64* @bin_mode_offset, align 8
  %73 = add i64 %72, 1
  %74 = getelementptr inbounds i8, i8* %71, i64 %73
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = mul nsw i32 %76, 256
  %78 = add nsw i32 %70, %77
  %79 = trunc i32 %78 to i8
  %80 = call i32 @archive_entry_set_mode(%struct.archive_entry* %65, i8 zeroext %79)
  %81 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i64, i64* @bin_uid_offset, align 8
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load i8*, i8** %13, align 8
  %88 = load i64, i64* @bin_uid_offset, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i8, i8* %87, i64 %89
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = mul nsw i32 %92, 256
  %94 = add nsw i32 %86, %93
  %95 = trunc i32 %94 to i8
  %96 = call i32 @archive_entry_set_uid(%struct.archive_entry* %81, i8 zeroext %95)
  %97 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %98 = load i8*, i8** %13, align 8
  %99 = load i64, i64* @bin_gid_offset, align 8
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = load i8*, i8** %13, align 8
  %104 = load i64, i64* @bin_gid_offset, align 8
  %105 = add i64 %104, 1
  %106 = getelementptr inbounds i8, i8* %103, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = mul nsw i32 %108, 256
  %110 = add nsw i32 %102, %109
  %111 = trunc i32 %110 to i8
  %112 = call i32 @archive_entry_set_gid(%struct.archive_entry* %97, i8 zeroext %111)
  %113 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %114 = load i8*, i8** %13, align 8
  %115 = load i64, i64* @bin_nlink_offset, align 8
  %116 = getelementptr inbounds i8, i8* %114, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8*, i8** %13, align 8
  %120 = load i64, i64* @bin_nlink_offset, align 8
  %121 = add i64 %120, 1
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = zext i8 %123 to i32
  %125 = mul nsw i32 %124, 256
  %126 = add nsw i32 %118, %125
  %127 = trunc i32 %126 to i8
  %128 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %113, i8 zeroext %127)
  %129 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = load i64, i64* @bin_rdev_offset, align 8
  %132 = getelementptr inbounds i8, i8* %130, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = load i8*, i8** %13, align 8
  %136 = load i64, i64* @bin_rdev_offset, align 8
  %137 = add i64 %136, 1
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = mul nsw i32 %140, 256
  %142 = add nsw i32 %134, %141
  %143 = trunc i32 %142 to i8
  %144 = call i32 @archive_entry_set_rdev(%struct.archive_entry* %129, i8 zeroext %143)
  %145 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %146 = load i8*, i8** %13, align 8
  %147 = load i32, i32* @bin_mtime_offset, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i8, i8* %146, i64 %148
  %150 = call i32 @le4(i8* %149)
  %151 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %145, i32 %150, i32 0)
  %152 = load i8*, i8** %13, align 8
  %153 = load i64, i64* @bin_namesize_offset, align 8
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = load i8*, i8** %13, align 8
  %158 = load i64, i64* @bin_namesize_offset, align 8
  %159 = add i64 %158, 1
  %160 = getelementptr inbounds i8, i8* %157, i64 %159
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = mul nsw i32 %162, 256
  %164 = add nsw i32 %156, %163
  %165 = sext i32 %164 to i64
  %166 = load i64*, i64** %10, align 8
  store i64 %165, i64* %166, align 8
  %167 = load i64*, i64** %10, align 8
  %168 = load i64, i64* %167, align 8
  %169 = and i64 %168, 1
  %170 = load i64*, i64** %11, align 8
  store i64 %169, i64* %170, align 8
  %171 = load i8*, i8** %13, align 8
  %172 = load i32, i32* @bin_filesize_offset, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = call i32 @le4(i8* %174)
  %176 = load %struct.cpio*, %struct.cpio** %8, align 8
  %177 = getelementptr inbounds %struct.cpio, %struct.cpio* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %179 = load %struct.cpio*, %struct.cpio** %8, align 8
  %180 = getelementptr inbounds %struct.cpio, %struct.cpio* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @archive_entry_set_size(%struct.archive_entry* %178, i32 %181)
  %183 = load %struct.cpio*, %struct.cpio** %8, align 8
  %184 = getelementptr inbounds %struct.cpio, %struct.cpio* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = and i32 %185, 1
  %187 = load %struct.cpio*, %struct.cpio** %8, align 8
  %188 = getelementptr inbounds %struct.cpio, %struct.cpio* %187, i32 0, i32 1
  store i32 %186, i32* %188, align 4
  %189 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %190 = load i32, i32* @bin_header_size, align 4
  %191 = call i32 @__archive_read_consume(%struct.archive_read* %189, i32 %190)
  %192 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %31, %26
  %194 = load i32, i32* %6, align 4
  ret i32 %194
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @archive_entry_set_dev(%struct.archive_entry*, i8 zeroext) #1

declare dso_local i32 @archive_entry_set_ino(%struct.archive_entry*, i8 zeroext) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i8 zeroext) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i8 zeroext) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i8 zeroext) #1

declare dso_local i32 @archive_entry_set_nlink(%struct.archive_entry*, i8 zeroext) #1

declare dso_local i32 @archive_entry_set_rdev(%struct.archive_entry*, i8 zeroext) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @le4(i8*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
