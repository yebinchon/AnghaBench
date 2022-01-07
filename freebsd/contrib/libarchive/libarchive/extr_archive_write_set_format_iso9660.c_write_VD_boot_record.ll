; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_VD_boot_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_write_VD_boot_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { %struct.iso9660* }
%struct.iso9660 = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@VDT_BOOT_RECORD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EL TORITO SPECIFICATION\00", align 1
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @write_VD_boot_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_VD_boot_record(%struct.archive_write* %0) #0 {
  %2 = alloca %struct.archive_write*, align 8
  %3 = alloca %struct.iso9660*, align 8
  %4 = alloca i8*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %2, align 8
  %5 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %6 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %5, i32 0, i32 0
  %7 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  store %struct.iso9660* %7, %struct.iso9660** %3, align 8
  %8 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %9 = call i8* @wb_buffptr(%struct.archive_write* %8)
  %10 = getelementptr inbounds i8, i8* %9, i64 -1
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load i32, i32* @VDT_BOOT_RECORD, align 4
  %13 = call i32 @set_VD_bp(i8* %11, i32 %12, i32 1)
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 8
  %16 = call i32 @memcpy(i8* %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 23)
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 @set_unused_field_bp(i8* %17, i32 31, i32 39)
  %19 = load i8*, i8** %4, align 8
  %20 = call i32 @set_unused_field_bp(i8* %19, i32 40, i32 71)
  %21 = load i8*, i8** %4, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 72
  %23 = load %struct.iso9660*, %struct.iso9660** %3, align 8
  %24 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_num_731(i8* %22, i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %35 = call i32 @set_unused_field_bp(i8* %33, i32 76, i32 %34)
  %36 = load %struct.archive_write*, %struct.archive_write** %2, align 8
  %37 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %38 = call i32 @wb_consume(%struct.archive_write* %36, i32 %37)
  ret i32 %38
}

declare dso_local i8* @wb_buffptr(%struct.archive_write*) #1

declare dso_local i32 @set_VD_bp(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @set_unused_field_bp(i8*, i32, i32) #1

declare dso_local i32 @set_num_731(i8*, i32) #1

declare dso_local i32 @wb_consume(%struct.archive_write*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
