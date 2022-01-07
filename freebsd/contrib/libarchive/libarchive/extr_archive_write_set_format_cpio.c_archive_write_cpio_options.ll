; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio.c_archive_write_cpio_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_cpio.c_archive_write_cpio_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i32, i32, i64 }
%struct.cpio = type { i32* }

@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"hdrcharset\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: hdrcharset option needs a character-set name\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*, i8*, i8*)* @archive_write_cpio_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_write_cpio_options(%struct.archive_write* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cpio*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_write* %0, %struct.archive_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %11 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cpio*
  store %struct.cpio* %13, %struct.cpio** %8, align 8
  %14 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %14, i32* %9, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = call i64 @strcmp(i8* %15, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %53

18:                                               ; preds = %3
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %21, %18
  %28 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %29 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %28, i32 0, i32 0
  %30 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %31 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %32 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @archive_set_error(i32* %29, i32 %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  br label %51

35:                                               ; preds = %21
  %36 = load %struct.archive_write*, %struct.archive_write** %5, align 8
  %37 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %36, i32 0, i32 0
  %38 = load i8*, i8** %7, align 8
  %39 = call i32* @archive_string_conversion_to_charset(i32* %37, i8* %38, i32 0)
  %40 = load %struct.cpio*, %struct.cpio** %8, align 8
  %41 = getelementptr inbounds %struct.cpio, %struct.cpio* %40, i32 0, i32 0
  store i32* %39, i32** %41, align 8
  %42 = load %struct.cpio*, %struct.cpio** %8, align 8
  %43 = getelementptr inbounds %struct.cpio, %struct.cpio* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %47, i32* %9, align 4
  br label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %48, %46
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %55

53:                                               ; preds = %3
  %54 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*, i32) #1

declare dso_local i32* @archive_string_conversion_to_charset(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
