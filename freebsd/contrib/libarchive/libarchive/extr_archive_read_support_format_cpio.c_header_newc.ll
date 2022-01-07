; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_header_newc.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_header_newc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.cpio = type { i32, i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_WARN = common dso_local global i32 0, align 4
@newc_header_size = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@newc_magic_offset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"070701\00", align 1
@ARCHIVE_FORMAT_CPIO_SVR4_NOCRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ASCII cpio (SVR4 with no CRC)\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"070702\00", align 1
@ARCHIVE_FORMAT_CPIO_SVR4_CRC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"ASCII cpio (SVR4 with CRC)\00", align 1
@newc_devmajor_offset = common dso_local global i32 0, align 4
@newc_devmajor_size = common dso_local global i32 0, align 4
@newc_devminor_offset = common dso_local global i32 0, align 4
@newc_devminor_size = common dso_local global i32 0, align 4
@newc_ino_offset = common dso_local global i32 0, align 4
@newc_ino_size = common dso_local global i32 0, align 4
@newc_mode_offset = common dso_local global i32 0, align 4
@newc_mode_size = common dso_local global i32 0, align 4
@newc_uid_offset = common dso_local global i32 0, align 4
@newc_uid_size = common dso_local global i32 0, align 4
@newc_gid_offset = common dso_local global i32 0, align 4
@newc_gid_size = common dso_local global i32 0, align 4
@newc_nlink_offset = common dso_local global i32 0, align 4
@newc_nlink_size = common dso_local global i32 0, align 4
@newc_rdevmajor_offset = common dso_local global i32 0, align 4
@newc_rdevmajor_size = common dso_local global i32 0, align 4
@newc_rdevminor_offset = common dso_local global i32 0, align 4
@newc_rdevminor_size = common dso_local global i32 0, align 4
@newc_mtime_offset = common dso_local global i32 0, align 4
@newc_mtime_size = common dso_local global i32 0, align 4
@newc_namesize_offset = common dso_local global i32 0, align 4
@newc_namesize_size = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"cpio archive has invalid namelength\00", align 1
@newc_filesize_offset = common dso_local global i32 0, align 4
@newc_filesize_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.cpio*, %struct.archive_entry*, i64*, i64*)* @header_newc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @header_newc(%struct.archive_read* %0, %struct.cpio* %1, %struct.archive_entry* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.cpio*, align 8
  %9 = alloca %struct.archive_entry*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.cpio* %1, %struct.cpio** %8, align 8
  store %struct.archive_entry* %2, %struct.archive_entry** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %16 = call i32 @find_newc_header(%struct.archive_read* %15)
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @ARCHIVE_WARN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %14, align 4
  store i32 %21, i32* %6, align 4
  br label %195

22:                                               ; preds = %5
  %23 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %24 = load i32, i32* @newc_header_size, align 4
  %25 = call i8* @__archive_read_ahead(%struct.archive_read* %23, i32 %24, i32* null)
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %29, i32* %6, align 4
  br label %195

30:                                               ; preds = %22
  %31 = load i8*, i8** %12, align 8
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load i32, i32* @newc_magic_offset, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %32, i64 %34
  %36 = call i64 @memcmp(i8* %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %30
  %39 = load i32, i32* @ARCHIVE_FORMAT_CPIO_SVR4_NOCRC, align 4
  %40 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %41 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 8
  %43 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %44 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %45, align 8
  br label %63

46:                                               ; preds = %30
  %47 = load i8*, i8** %13, align 8
  %48 = load i32, i32* @newc_magic_offset, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, i8* %47, i64 %49
  %51 = call i64 @memcmp(i8* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 6)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %46
  %54 = load i32, i32* @ARCHIVE_FORMAT_CPIO_SVR4_CRC, align 4
  %55 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %56 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 8
  %58 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %59 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8** %60, align 8
  br label %62

61:                                               ; preds = %46
  br label %62

62:                                               ; preds = %61, %53
  br label %63

63:                                               ; preds = %62, %38
  %64 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %65 = load i8*, i8** %13, align 8
  %66 = load i32, i32* @newc_devmajor_offset, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, i8* %65, i64 %67
  %69 = load i32, i32* @newc_devmajor_size, align 4
  %70 = call i32 @atol16(i8* %68, i32 %69)
  %71 = call i32 @archive_entry_set_devmajor(%struct.archive_entry* %64, i32 %70)
  %72 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = load i32, i32* @newc_devminor_offset, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i32, i32* @newc_devminor_size, align 4
  %78 = call i32 @atol16(i8* %76, i32 %77)
  %79 = call i32 @archive_entry_set_devminor(%struct.archive_entry* %72, i32 %78)
  %80 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %81 = load i8*, i8** %13, align 8
  %82 = load i32, i32* @newc_ino_offset, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i32, i32* @newc_ino_size, align 4
  %86 = call i32 @atol16(i8* %84, i32 %85)
  %87 = call i32 @archive_entry_set_ino(%struct.archive_entry* %80, i32 %86)
  %88 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %89 = load i8*, i8** %13, align 8
  %90 = load i32, i32* @newc_mode_offset, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i32, i32* @newc_mode_size, align 4
  %94 = call i32 @atol16(i8* %92, i32 %93)
  %95 = call i32 @archive_entry_set_mode(%struct.archive_entry* %88, i32 %94)
  %96 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = load i32, i32* @newc_uid_offset, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* @newc_uid_size, align 4
  %102 = call i32 @atol16(i8* %100, i32 %101)
  %103 = call i32 @archive_entry_set_uid(%struct.archive_entry* %96, i32 %102)
  %104 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %105 = load i8*, i8** %13, align 8
  %106 = load i32, i32* @newc_gid_offset, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %105, i64 %107
  %109 = load i32, i32* @newc_gid_size, align 4
  %110 = call i32 @atol16(i8* %108, i32 %109)
  %111 = call i32 @archive_entry_set_gid(%struct.archive_entry* %104, i32 %110)
  %112 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = load i32, i32* @newc_nlink_offset, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* @newc_nlink_size, align 4
  %118 = call i32 @atol16(i8* %116, i32 %117)
  %119 = call i32 @archive_entry_set_nlink(%struct.archive_entry* %112, i32 %118)
  %120 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %121 = load i8*, i8** %13, align 8
  %122 = load i32, i32* @newc_rdevmajor_offset, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i32, i32* @newc_rdevmajor_size, align 4
  %126 = call i32 @atol16(i8* %124, i32 %125)
  %127 = call i32 @archive_entry_set_rdevmajor(%struct.archive_entry* %120, i32 %126)
  %128 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %129 = load i8*, i8** %13, align 8
  %130 = load i32, i32* @newc_rdevminor_offset, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i32, i32* @newc_rdevminor_size, align 4
  %134 = call i32 @atol16(i8* %132, i32 %133)
  %135 = call i32 @archive_entry_set_rdevminor(%struct.archive_entry* %128, i32 %134)
  %136 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %137 = load i8*, i8** %13, align 8
  %138 = load i32, i32* @newc_mtime_offset, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i8, i8* %137, i64 %139
  %141 = load i32, i32* @newc_mtime_size, align 4
  %142 = call i32 @atol16(i8* %140, i32 %141)
  %143 = call i32 @archive_entry_set_mtime(%struct.archive_entry* %136, i32 %142, i32 0)
  %144 = load i8*, i8** %13, align 8
  %145 = load i32, i32* @newc_namesize_offset, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i32, i32* @newc_namesize_size, align 4
  %149 = call i32 @atol16(i8* %147, i32 %148)
  %150 = sext i32 %149 to i64
  %151 = load i64*, i64** %10, align 8
  store i64 %150, i64* %151, align 8
  %152 = load i64*, i64** %10, align 8
  %153 = load i64, i64* %152, align 8
  %154 = sub i64 2, %153
  %155 = and i64 %154, 3
  %156 = load i64*, i64** %11, align 8
  store i64 %155, i64* %156, align 8
  %157 = load i64*, i64** %11, align 8
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @SIZE_MAX, align 8
  %160 = load i64*, i64** %10, align 8
  %161 = load i64, i64* %160, align 8
  %162 = sub i64 %159, %161
  %163 = icmp ugt i64 %158, %162
  br i1 %163, label %164, label %170

164:                                              ; preds = %63
  %165 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %166 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %165, i32 0, i32 0
  %167 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %168 = call i32 @archive_set_error(%struct.TYPE_2__* %166, i32 %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %169, i32* %6, align 4
  br label %195

170:                                              ; preds = %63
  %171 = load i8*, i8** %13, align 8
  %172 = load i32, i32* @newc_filesize_offset, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i32, i32* @newc_filesize_size, align 4
  %176 = call i32 @atol16(i8* %174, i32 %175)
  %177 = load %struct.cpio*, %struct.cpio** %8, align 8
  %178 = getelementptr inbounds %struct.cpio, %struct.cpio* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load %struct.archive_entry*, %struct.archive_entry** %9, align 8
  %180 = load %struct.cpio*, %struct.cpio** %8, align 8
  %181 = getelementptr inbounds %struct.cpio, %struct.cpio* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @archive_entry_set_size(%struct.archive_entry* %179, i32 %182)
  %184 = load %struct.cpio*, %struct.cpio** %8, align 8
  %185 = getelementptr inbounds %struct.cpio, %struct.cpio* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = sub nsw i32 0, %186
  %188 = and i32 3, %187
  %189 = load %struct.cpio*, %struct.cpio** %8, align 8
  %190 = getelementptr inbounds %struct.cpio, %struct.cpio* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 4
  %191 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %192 = load i32, i32* @newc_header_size, align 4
  %193 = call i32 @__archive_read_consume(%struct.archive_read* %191, i32 %192)
  %194 = load i32, i32* %14, align 4
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %170, %164, %28, %20
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i32 @find_newc_header(%struct.archive_read*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @archive_entry_set_devmajor(%struct.archive_entry*, i32) #1

declare dso_local i32 @atol16(i8*, i32) #1

declare dso_local i32 @archive_entry_set_devminor(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_ino(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mode(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_uid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_gid(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_nlink(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_rdevmajor(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_rdevminor(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_mtime(%struct.archive_entry*, i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_2__*, i32, i8*) #1

declare dso_local i32 @archive_entry_set_size(%struct.archive_entry*, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
