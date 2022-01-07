; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_uuencode.c_archive_filter_uuencode_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_uuencode.c_archive_filter_uuencode_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i32, i64 }
%struct.private_uuencode = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"mode option requires octal digits\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"name option requires a string\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*, i8*, i8*)* @archive_filter_uuencode_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_filter_uuencode_options(%struct.archive_write_filter* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.private_uuencode*, align 8
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %10 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.private_uuencode*
  store %struct.private_uuencode* %12, %struct.private_uuencode** %8, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i64 @strcmp(i8* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %16
  %20 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %21 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %24 = call i32 @archive_set_error(i32 %22, i32 %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %25, i32* %4, align 4
  br label %59

26:                                               ; preds = %16
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = call i64 @atol8(i8* %27, i32 %29)
  %31 = trunc i64 %30 to i32
  %32 = and i32 %31, 511
  %33 = load %struct.private_uuencode*, %struct.private_uuencode** %8, align 8
  %34 = getelementptr inbounds %struct.private_uuencode, %struct.private_uuencode* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %35, i32* %4, align 4
  br label %59

36:                                               ; preds = %3
  %37 = load i8*, i8** %6, align 8
  %38 = call i64 @strcmp(i8* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %40
  %44 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %45 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %48 = call i32 @archive_set_error(i32 %46, i32 %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %49, i32* %4, align 4
  br label %59

50:                                               ; preds = %40
  %51 = load %struct.private_uuencode*, %struct.private_uuencode** %8, align 8
  %52 = getelementptr inbounds %struct.private_uuencode, %struct.private_uuencode* %51, i32 0, i32 1
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @archive_strcpy(i32* %52, i8* %53)
  %55 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %36
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %57, %50, %43, %26, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @archive_set_error(i32, i32, i8*) #1

declare dso_local i64 @atol8(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @archive_strcpy(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
