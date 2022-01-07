; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_do_unpack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_do_unpack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Compression method not supported: 0x%x\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.rar5*, i8**, i64*, i32*)* @do_unpack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_unpack(%struct.archive_read* %0, %struct.rar5* %1, i8** %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.rar5*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.rar5* %1, %struct.rar5** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %12 = load %struct.rar5*, %struct.rar5** %8, align 8
  %13 = getelementptr inbounds %struct.rar5, %struct.rar5* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %5
  %18 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %19 = load %struct.rar5*, %struct.rar5** %8, align 8
  %20 = load i8**, i8*** %9, align 8
  %21 = load i64*, i64** %10, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @do_unstore_file(%struct.archive_read* %18, %struct.rar5* %19, i8** %20, i64* %21, i32* %22)
  store i32 %23, i32* %6, align 4
  br label %49

24:                                               ; preds = %5
  %25 = load %struct.rar5*, %struct.rar5** %8, align 8
  %26 = getelementptr inbounds %struct.rar5, %struct.rar5* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %39 [
    i32 0, label %29
    i32 1, label %36
    i32 2, label %36
    i32 3, label %36
    i32 4, label %36
    i32 5, label %36
  ]

29:                                               ; preds = %24
  %30 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %31 = load %struct.rar5*, %struct.rar5** %8, align 8
  %32 = load i8**, i8*** %9, align 8
  %33 = load i64*, i64** %10, align 8
  %34 = load i32*, i32** %11, align 8
  %35 = call i32 @do_unstore_file(%struct.archive_read* %30, %struct.rar5* %31, i8** %32, i64* %33, i32* %34)
  store i32 %35, i32* %6, align 4
  br label %49

36:                                               ; preds = %24, %24, %24, %24, %24
  %37 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %38 = call i32 @uncompress_file(%struct.archive_read* %37)
  store i32 %38, i32* %6, align 4
  br label %49

39:                                               ; preds = %24
  %40 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %41 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %40, i32 0, i32 0
  %42 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %43 = load %struct.rar5*, %struct.rar5** %8, align 8
  %44 = getelementptr inbounds %struct.rar5, %struct.rar5* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @archive_set_error(i32* %41, i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %39, %36, %29, %17
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @do_unstore_file(%struct.archive_read*, %struct.rar5*, i8**, i64*, i32*) #1

declare dso_local i32 @uncompress_file(%struct.archive_read*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
