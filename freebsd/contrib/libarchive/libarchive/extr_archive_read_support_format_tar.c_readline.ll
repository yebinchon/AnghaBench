; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_tar.c_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.tar = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Line too long\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Can't allocate working buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.tar*, i8**, i32, i64*)* @readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readline(%struct.archive_read* %0, %struct.tar* %1, i8** %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.tar*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.tar* %1, %struct.tar** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %18 = load i64*, i64** %11, align 8
  %19 = call i32 @tar_flush_unconsumed(%struct.archive_read* %17, i64* %18)
  %20 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %21 = call i8* @__archive_read_ahead(%struct.archive_read* %20, i32 1, i32* %12)
  store i8* %21, i8** %14, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp sle i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %25, i32* %6, align 4
  br label %139

26:                                               ; preds = %5
  %27 = load i8*, i8** %14, align 8
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %14, align 8
  %29 = load i32, i32* %12, align 4
  %30 = call i8* @memchr(i8* %28, i8 signext 10, i32 %29)
  store i8* %30, i8** %16, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %26
  %34 = load i8*, i8** %16, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  %36 = load i8*, i8** %15, align 8
  %37 = ptrtoint i8* %35 to i64
  %38 = ptrtoint i8* %36 to i64
  %39 = sub i64 %37, %38
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %33
  %45 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %46 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %45, i32 0, i32 0
  %47 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %48 = call i32 @archive_set_error(i32* %46, i32 %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %49, i32* %6, align 4
  br label %139

50:                                               ; preds = %33
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64*, i64** %11, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load i8**, i8*** %9, align 8
  store i8* %54, i8** %55, align 8
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %6, align 4
  br label %139

57:                                               ; preds = %26
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64*, i64** %11, align 8
  store i64 %59, i64* %60, align 8
  br label %61

61:                                               ; preds = %135, %57
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %62, %63
  %65 = load i32, i32* %10, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61
  %68 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %69 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %68, i32 0, i32 0
  %70 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %71 = call i32 @archive_set_error(i32* %69, i32 %70, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %72 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %72, i32* %6, align 4
  br label %139

73:                                               ; preds = %61
  %74 = load %struct.tar*, %struct.tar** %8, align 8
  %75 = getelementptr inbounds %struct.tar, %struct.tar* %74, i32 0, i32 0
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32* @archive_string_ensure(%struct.TYPE_2__* %75, i32 %78)
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %87

81:                                               ; preds = %73
  %82 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %83 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %82, i32 0, i32 0
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = call i32 @archive_set_error(i32* %83, i32 %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %86 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %86, i32* %6, align 4
  br label %139

87:                                               ; preds = %73
  %88 = load %struct.tar*, %struct.tar** %8, align 8
  %89 = getelementptr inbounds %struct.tar, %struct.tar* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i8, i8* %91, i64 %93
  %95 = load i8*, i8** %14, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @memcpy(i8* %94, i8* %95, i32 %96)
  %98 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %99 = load i64*, i64** %11, align 8
  %100 = call i32 @tar_flush_unconsumed(%struct.archive_read* %98, i64* %99)
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load i8*, i8** %16, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %87
  %107 = load %struct.tar*, %struct.tar** %8, align 8
  %108 = getelementptr inbounds %struct.tar, %struct.tar* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i8**, i8*** %9, align 8
  store i8* %110, i8** %111, align 8
  %112 = load i32, i32* %13, align 4
  store i32 %112, i32* %6, align 4
  br label %139

113:                                              ; preds = %87
  %114 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %115 = call i8* @__archive_read_ahead(%struct.archive_read* %114, i32 1, i32* %12)
  store i8* %115, i8** %14, align 8
  %116 = load i32, i32* %12, align 4
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %119, i32* %6, align 4
  br label %139

120:                                              ; preds = %113
  %121 = load i8*, i8** %14, align 8
  store i8* %121, i8** %15, align 8
  %122 = load i8*, i8** %14, align 8
  %123 = load i32, i32* %12, align 4
  %124 = call i8* @memchr(i8* %122, i8 signext 10, i32 %123)
  store i8* %124, i8** %16, align 8
  %125 = load i8*, i8** %16, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %135

127:                                              ; preds = %120
  %128 = load i8*, i8** %16, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 1
  %130 = load i8*, i8** %15, align 8
  %131 = ptrtoint i8* %129 to i64
  %132 = ptrtoint i8* %130 to i64
  %133 = sub i64 %131, %132
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %127, %120
  %136 = load i32, i32* %12, align 4
  %137 = sext i32 %136 to i64
  %138 = load i64*, i64** %11, align 8
  store i64 %137, i64* %138, align 8
  br label %61

139:                                              ; preds = %118, %106, %81, %67, %50, %44, %24
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @tar_flush_unconsumed(%struct.archive_read*, i64*) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i32*) #1

declare dso_local i8* @memchr(i8*, i8 signext, i32) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32* @archive_string_ensure(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
