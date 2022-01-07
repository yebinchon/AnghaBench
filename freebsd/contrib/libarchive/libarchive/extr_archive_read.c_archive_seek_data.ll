; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_seek_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read.c_archive_seek_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive = type { i32 }
%struct.archive_read = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.archive_read*, i32, i32)* }

@ARCHIVE_READ_MAGIC = common dso_local global i32 0, align 4
@ARCHIVE_STATE_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"archive_seek_data_block\00", align 1
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Internal error: No format_seek_data_block function registered\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_seek_data(%struct.archive* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.archive_read*, align 8
  store %struct.archive* %0, %struct.archive** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.archive*, %struct.archive** %5, align 8
  %10 = bitcast %struct.archive* %9 to %struct.archive_read*
  store %struct.archive_read* %10, %struct.archive_read** %8, align 8
  %11 = load %struct.archive*, %struct.archive** %5, align 8
  %12 = load i32, i32* @ARCHIVE_READ_MAGIC, align 4
  %13 = load i32, i32* @ARCHIVE_STATE_DATA, align 4
  %14 = call i32 @archive_check_magic(%struct.archive* %11, i32 %12, i32 %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %16 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.archive_read*, i32, i32)*, i32 (%struct.archive_read*, i32, i32)** %18, align 8
  %20 = icmp eq i32 (%struct.archive_read*, i32, i32)* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %23 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %22, i32 0, i32 1
  %24 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %25 = call i32 @archive_set_error(i32* %23, i32 %24, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %26, i32* %4, align 4
  br label %37

27:                                               ; preds = %3
  %28 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %29 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.archive_read*, i32, i32)*, i32 (%struct.archive_read*, i32, i32)** %31, align 8
  %33 = load %struct.archive_read*, %struct.archive_read** %8, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %32(%struct.archive_read* %33, i32 %34, i32 %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %27, %21
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @archive_check_magic(%struct.archive*, i32, i32, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
