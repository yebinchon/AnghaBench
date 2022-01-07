; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_read_ahead_cfdata.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_cab_read_ahead_cfdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.cab = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unsupported CAB compression : %s\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.archive_read*, i32*)* @cab_read_ahead_cfdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cab_read_ahead_cfdata(%struct.archive_read* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cab*, align 8
  %7 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %9 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cab*
  store %struct.cab* %13, %struct.cab** %6, align 8
  %14 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %15 = call i32 @cab_next_cfdata(%struct.archive_read* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @ARCHIVE_OK, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  store i8* null, i8** %3, align 8
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.cab*, %struct.cab** %6, align 8
  %24 = getelementptr inbounds %struct.cab, %struct.cab* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %40 [
    i32 128, label %28
    i32 129, label %32
    i32 130, label %36
  ]

28:                                               ; preds = %22
  %29 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = call i8* @cab_read_ahead_cfdata_none(%struct.archive_read* %29, i32* %30)
  store i8* %31, i8** %3, align 8
  br label %52

32:                                               ; preds = %22
  %33 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = call i8* @cab_read_ahead_cfdata_deflate(%struct.archive_read* %33, i32* %34)
  store i8* %35, i8** %3, align 8
  br label %52

36:                                               ; preds = %22
  %37 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = call i8* @cab_read_ahead_cfdata_lzx(%struct.archive_read* %37, i32* %38)
  store i8* %39, i8** %3, align 8
  br label %52

40:                                               ; preds = %22
  %41 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %42 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %41, i32 0, i32 0
  %43 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %44 = load %struct.cab*, %struct.cab** %6, align 8
  %45 = getelementptr inbounds %struct.cab, %struct.cab* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @archive_set_error(i32* %42, i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ARCHIVE_FAILED, align 4
  %51 = load i32*, i32** %5, align 8
  store i32 %50, i32* %51, align 4
  store i8* null, i8** %3, align 8
  br label %52

52:                                               ; preds = %40, %36, %32, %28, %19
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i32 @cab_next_cfdata(%struct.archive_read*) #1

declare dso_local i8* @cab_read_ahead_cfdata_none(%struct.archive_read*, i32*) #1

declare dso_local i8* @cab_read_ahead_cfdata_deflate(%struct.archive_read*, i32*) #1

declare dso_local i8* @cab_read_ahead_cfdata_lzx(%struct.archive_read*, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
