; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_read_body_to_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_read_body_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { i32 }
%struct.archive_string = type { i8*, i64 }
%struct.archive_entry_header_ustar = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Special header too large\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"No memory\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, %struct.archive_string*, i8*, i64*)* @read_body_to_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_body_to_string(%struct.archive_read* %0, %struct.tar* %1, %struct.archive_string* %2, i8* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.tar*, align 8
  %9 = alloca %struct.archive_string*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.archive_entry_header_ustar*, align 8
  %14 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.tar* %1, %struct.tar** %8, align 8
  store %struct.archive_string* %2, %struct.archive_string** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.tar*, %struct.tar** %8, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = bitcast i8* %16 to %struct.archive_entry_header_ustar*
  store %struct.archive_entry_header_ustar* %17, %struct.archive_entry_header_ustar** %13, align 8
  %18 = load %struct.archive_entry_header_ustar*, %struct.archive_entry_header_ustar** %13, align 8
  %19 = getelementptr inbounds %struct.archive_entry_header_ustar, %struct.archive_entry_header_ustar* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @tar_atol(i32 %20, i32 4)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = icmp sgt i32 %22, 1048576
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* %12, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %24, %5
  %28 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %29 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %28, i32 0, i32 0
  %30 = load i32, i32* @EINVAL, align 4
  %31 = call i32 @archive_set_error(i32* %29, i32 %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %32, i32* %6, align 4
  br label %83

33:                                               ; preds = %24
  %34 = load %struct.archive_string*, %struct.archive_string** %9, align 8
  %35 = load i32, i32* %12, align 4
  %36 = sext i32 %35 to i64
  %37 = add i64 %36, 1
  %38 = call i32* @archive_string_ensure(%struct.archive_string* %34, i64 %37)
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %42 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %41, i32 0, i32 0
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = call i32 @archive_set_error(i32* %42, i32 %43, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %45, i32* %6, align 4
  br label %83

46:                                               ; preds = %33
  %47 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %48 = load i64*, i64** %11, align 8
  %49 = call i32 @tar_flush_unconsumed(%struct.archive_read* %47, i64* %48)
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 511
  %52 = and i32 %51, -512
  %53 = sext i32 %52 to i64
  %54 = load i64*, i64** %11, align 8
  store i64 %53, i64* %54, align 8
  %55 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = load i64, i64* %56, align 8
  %58 = call i8* @__archive_read_ahead(%struct.archive_read* %55, i64 %57, i32* null)
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %46
  %62 = load i64*, i64** %11, align 8
  store i64 0, i64* %62, align 8
  %63 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %63, i32* %6, align 4
  br label %83

64:                                               ; preds = %46
  %65 = load %struct.archive_string*, %struct.archive_string** %9, align 8
  %66 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %14, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @memcpy(i8* %67, i8* %68, i64 %70)
  %72 = load %struct.archive_string*, %struct.archive_string** %9, align 8
  %73 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  store i8 0, i8* %77, align 1
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = load %struct.archive_string*, %struct.archive_string** %9, align 8
  %81 = getelementptr inbounds %struct.archive_string, %struct.archive_string* %80, i32 0, i32 1
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %82, i32* %6, align 4
  br label %83

83:                                               ; preds = %64, %61, %40, %27
  %84 = load i32, i32* %6, align 4
  ret i32 %84
}

declare dso_local i32 @tar_atol(i32, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32* @archive_string_ensure(%struct.archive_string*, i64) #1

declare dso_local i32 @tar_flush_unconsumed(%struct.archive_read*, i64*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
