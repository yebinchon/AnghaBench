; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_alloc_decryption_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_zip_alloc_decryption_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.zip = type { i64, i32*, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"No memory for ZIP decryption\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*)* @zip_alloc_decryption_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zip_alloc_decryption_buffer(%struct.archive_read* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_read*, align 8
  %4 = alloca %struct.zip*, align 8
  %5 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %3, align 8
  %6 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %7 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.zip*
  store %struct.zip* %11, %struct.zip** %4, align 8
  store i64 262144, i64* %5, align 8
  %12 = load %struct.zip*, %struct.zip** %4, align 8
  %13 = getelementptr inbounds %struct.zip, %struct.zip* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = load %struct.zip*, %struct.zip** %4, align 8
  %19 = getelementptr inbounds %struct.zip, %struct.zip* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32* @malloc(i64 %20)
  %22 = load %struct.zip*, %struct.zip** %4, align 8
  %23 = getelementptr inbounds %struct.zip, %struct.zip* %22, i32 0, i32 1
  store i32* %21, i32** %23, align 8
  %24 = load %struct.zip*, %struct.zip** %4, align 8
  %25 = getelementptr inbounds %struct.zip, %struct.zip* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load %struct.archive_read*, %struct.archive_read** %3, align 8
  %30 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %29, i32 0, i32 0
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @archive_set_error(i32* %30, i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %33, i32* %2, align 4
  br label %42

34:                                               ; preds = %16
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.zip*, %struct.zip** %4, align 8
  %37 = getelementptr inbounds %struct.zip, %struct.zip* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.zip*, %struct.zip** %4, align 8
  %40 = getelementptr inbounds %struct.zip, %struct.zip* %39, i32 0, i32 2
  store i32* %38, i32** %40, align 8
  %41 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
