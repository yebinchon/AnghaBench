; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_empty.c_archive_read_format_empty_read_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_empty.c_archive_read_format_empty_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.archive_entry = type { i32 }

@ARCHIVE_FORMAT_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"Empty file\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.archive_entry*)* @archive_read_format_empty_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_empty_read_header(%struct.archive_read* %0, %struct.archive_entry* %1) #0 {
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.archive_entry*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  store %struct.archive_entry* %1, %struct.archive_entry** %4, align 8
  %5 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %6 = load %struct.archive_entry*, %struct.archive_entry** %4, align 8
  %7 = load i32, i32* @ARCHIVE_FORMAT_EMPTY, align 4
  %8 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %9 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8** %13, align 8
  %14 = load i32, i32* @ARCHIVE_EOF, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
