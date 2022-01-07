; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_archive_read_format_cpio_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cpio.c_archive_read_format_cpio_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cpio = type { i32, i32* }

@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"compat-2x\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"hdrcharset\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"cpio: hdrcharset option needs a character-set name\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8*, i8*)* @archive_read_format_cpio_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_cpio_options(%struct.archive_read* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_read*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cpio*, align 8
  %9 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.cpio*
  store %struct.cpio* %16, %struct.cpio** %8, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = call i64 @strcmp(i8* %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = icmp ne i8* %21, null
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  %25 = load %struct.cpio*, %struct.cpio** %8, align 8
  %26 = getelementptr inbounds %struct.cpio, %struct.cpio* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %27, i32* %4, align 4
  br label %67

28:                                               ; preds = %3
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load i8*, i8** %7, align 8
  %34 = icmp eq i8* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %32
  %36 = load i8*, i8** %7, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 0
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %35, %32
  %42 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %43 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %42, i32 0, i32 0
  %44 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %45 = call i32 @archive_set_error(i32* %43, i32 %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  br label %62

46:                                               ; preds = %35
  %47 = load %struct.archive_read*, %struct.archive_read** %5, align 8
  %48 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %47, i32 0, i32 0
  %49 = load i8*, i8** %7, align 8
  %50 = call i32* @archive_string_conversion_from_charset(i32* %48, i8* %49, i32 0)
  %51 = load %struct.cpio*, %struct.cpio** %8, align 8
  %52 = getelementptr inbounds %struct.cpio, %struct.cpio* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.cpio*, %struct.cpio** %8, align 8
  %54 = getelementptr inbounds %struct.cpio, %struct.cpio* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %58, i32* %9, align 4
  br label %61

59:                                               ; preds = %46
  %60 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %59, %57
  br label %62

62:                                               ; preds = %61, %41
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %67

64:                                               ; preds = %28
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %65, %62, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32* @archive_string_conversion_from_charset(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
