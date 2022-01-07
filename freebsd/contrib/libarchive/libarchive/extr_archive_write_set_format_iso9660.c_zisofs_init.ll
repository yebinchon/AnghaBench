; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_zisofs_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_zisofs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, %struct.iso9660* }
%struct.iso9660 = type { %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i32, i32, i8*, i8*, i32*, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.isofile = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@MULTI_EXTENT_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@ZF_BLOCK_SIZE = common dso_local global i32 0, align 4
@ZF_HEADER_SIZE = common dso_local global i32 0, align 4
@ZF_LOG2_BS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, %struct.isofile*)* @zisofs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zisofs_init(%struct.archive_write* %0, %struct.isofile* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_write*, align 8
  %5 = alloca %struct.isofile*, align 8
  %6 = alloca %struct.iso9660*, align 8
  store %struct.archive_write* %0, %struct.archive_write** %4, align 8
  store %struct.isofile* %1, %struct.isofile** %5, align 8
  %7 = load %struct.archive_write*, %struct.archive_write** %4, align 8
  %8 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %7, i32 0, i32 1
  %9 = load %struct.iso9660*, %struct.iso9660** %8, align 8
  store %struct.iso9660* %9, %struct.iso9660** %6, align 8
  %10 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %11 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %14 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %17 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %23 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %21, %2
  %28 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %28, i32* %3, align 4
  br label %59

29:                                               ; preds = %21
  %30 = load %struct.isofile*, %struct.isofile** %5, align 8
  %31 = getelementptr inbounds %struct.isofile, %struct.isofile* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @archive_entry_size(i32 %32)
  %34 = icmp sge i32 %33, 24
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.isofile*, %struct.isofile** %5, align 8
  %37 = getelementptr inbounds %struct.isofile, %struct.isofile* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @archive_entry_size(i32 %38)
  %40 = load i32, i32* @MULTI_EXTENT_SIZE, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %44 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %47 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 10
  store i64 0, i64* %48, align 8
  br label %49

49:                                               ; preds = %42, %35, %29
  %50 = load %struct.iso9660*, %struct.iso9660** %6, align 8
  %51 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %57, label %55

55:                                               ; preds = %49
  %56 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %55, %27
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @archive_entry_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
