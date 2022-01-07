; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c__archive_read_data_block.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c__archive_read_data_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.archive_read*, i8**, i64*, i32*)* }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"archive_read_data_block\00", align 1
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"Internal error: No format->read_data function registered\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive*, i8**, i64*, i32*)* @_archive_read_data_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_archive_read_data_block(%struct.archive* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.archive_read*, align 8
  store %struct.archive* %0, %struct.archive** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load %struct.archive*, %struct.archive** %6, align 8
  %12 = bitcast %struct.archive* %11 to %struct.archive_read*
  store %struct.archive_read* %12, %struct.archive_read** %10, align 8
  %13 = load %struct.archive*, %struct.archive** %6, align 8
  %14 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %15 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %16 = call i32 @archive_check_magic(%struct.archive* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  %18 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.archive_read*, i8**, i64*, i32*)*, i32 (%struct.archive_read*, i8**, i64*, i32*)** %20, align 8
  %22 = icmp eq i32 (%struct.archive_read*, i8**, i64*, i32*)* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %4
  %24 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  %25 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %24, i32 0, i32 1
  %26 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %27 = call i32 @archive_set_error(i32* %25, i32 %26, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %28 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %28, i32* %5, align 4
  br label %40

29:                                               ; preds = %4
  %30 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  %31 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32 (%struct.archive_read*, i8**, i64*, i32*)*, i32 (%struct.archive_read*, i8**, i64*, i32*)** %33, align 8
  %35 = load %struct.archive_read*, %struct.archive_read** %10, align 8
  %36 = load i8**, i8*** %7, align 8
  %37 = load i64*, i64** %8, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 %34(%struct.archive_read* %35, i8** %36, i64* %37, i32* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %29, %23
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
