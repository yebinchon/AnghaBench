; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_raw.c_archive_read_format_raw_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_raw.c_archive_read_format_raw_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.archive_entry = type { i32 }
%struct.raw_info = type { i64 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_FORMAT_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"raw\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@AE_IFREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_raw_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_raw_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.archive_entry*, align 8
  %6 = alloca %struct.raw_info*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %5, align 8
  %7 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %8 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %7, i32 0, i32 1
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.raw_info*
  store %struct.raw_info* %12, %struct.raw_info** %6, align 8
  %13 = load %struct.raw_info*, %struct.raw_info** %6, align 8
  %14 = getelementptr inbounds %struct.raw_info, %struct.raw_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %18, i32* %3, align 4
  br label %37

19:                                               ; preds = %2
  %20 = load i32, i32* @ARCHIVE_FORMAT_RAW, align 4
  %21 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %22 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  store i32 %20, i32* %23, align 8
  %24 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %25 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %26, align 8
  %27 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %28 = call i32 @archive_entry_set_pathname(%struct.archive_entry* %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %30 = load i32, i32* @AE_IFREG, align 4
  %31 = call i32 @archive_entry_set_filetype(%struct.archive_entry* %29, i32 %30)
  %32 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %33 = call i32 @archive_entry_set_perm(%struct.archive_entry* %32, i32 420)
  %34 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %35 = load %struct.archive_entry*, %struct.archive_entry** %5, align 8
  %36 = call i32 @__archive_read_header(%struct.archive_read* %34, %struct.archive_entry* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %19, %17
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @archive_entry_set_pathname(%struct.archive_entry*, i8*) #1

declare dso_local i32 @archive_entry_set_filetype(%struct.archive_entry*, i32) #1

declare dso_local i32 @archive_entry_set_perm(%struct.archive_entry*, i32) #1

declare dso_local i32 @__archive_read_header(%struct.archive_read*, %struct.archive_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
