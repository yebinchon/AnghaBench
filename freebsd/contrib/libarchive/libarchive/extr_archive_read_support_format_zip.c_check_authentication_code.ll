; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_check_authentication_code.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_zip.c_check_authentication_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.zip = type { i32, i64 }

@AUTH_CODE_SIZE = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Truncated ZIP file data\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"ZIP bad Authentication code\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8*)* @check_authentication_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_authentication_code(%struct.archive_read* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.zip*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [20 x i32], align 16
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %12 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.zip*
  store %struct.zip* %16, %struct.zip** %6, align 8
  %17 = load %struct.zip*, %struct.zip** %6, align 8
  %18 = getelementptr inbounds %struct.zip, %struct.zip* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %60

21:                                               ; preds = %2
  store i64 20, i64* %9, align 8
  %22 = load %struct.zip*, %struct.zip** %6, align 8
  %23 = getelementptr inbounds %struct.zip, %struct.zip* %22, i32 0, i32 0
  %24 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %25 = call i32 @archive_hmac_sha1_final(i32* %23, i32* %24, i64* %9)
  %26 = load i8*, i8** %5, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %41

28:                                               ; preds = %21
  %29 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %30 = load i32, i32* @AUTH_CODE_SIZE, align 4
  %31 = call i8* @__archive_read_ahead(%struct.archive_read* %29, i32 %30, i32* null)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  %35 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %36 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %35, i32 0, i32 0
  %37 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %38 = call i32 @archive_set_error(i32* %36, i32 %37, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %39, i32* %3, align 4
  br label %62

40:                                               ; preds = %28
  br label %43

41:                                               ; preds = %21
  %42 = load i8*, i8** %5, align 8
  store i8* %42, i8** %7, align 8
  br label %43

43:                                               ; preds = %41, %40
  %44 = getelementptr inbounds [20 x i32], [20 x i32]* %8, i64 0, i64 0
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @AUTH_CODE_SIZE, align 4
  %47 = call i32 @memcmp(i32* %44, i8* %45, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %49 = load i32, i32* @AUTH_CODE_SIZE, align 4
  %50 = call i32 @__archive_read_consume(%struct.archive_read* %48, i32 %49)
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %55 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %54, i32 0, i32 0
  %56 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %57 = call i32 @archive_set_error(i32* %55, i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %58, i32* %3, align 4
  br label %62

59:                                               ; preds = %43
  br label %60

60:                                               ; preds = %59, %2
  %61 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %53, %34
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @archive_hmac_sha1_final(i32*, i32*, i64*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
