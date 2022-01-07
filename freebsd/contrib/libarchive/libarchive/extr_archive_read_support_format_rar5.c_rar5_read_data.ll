; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_rar5_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_rar5_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i64 }
%struct.TYPE_3__ = type { i64 }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Can't decompress an entry marked as a directory\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_PROGRAMMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Unpacker has written too many bytes\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i32*)* @rar5_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rar5_read_data(%struct.archive_read* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rar5*, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %13 = call %struct.rar5* @get_context(%struct.archive_read* %12)
  store %struct.rar5* %13, %struct.rar5** %11, align 8
  %14 = load %struct.rar5*, %struct.rar5** %11, align 8
  %15 = getelementptr inbounds %struct.rar5, %struct.rar5* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %21 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %20, i32 0, i32 0
  %22 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %23 = call i32 @archive_set_error(i32* %21, i32 %22, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %24, i32* %5, align 4
  br label %101

25:                                               ; preds = %4
  %26 = load %struct.rar5*, %struct.rar5** %11, align 8
  %27 = getelementptr inbounds %struct.rar5, %struct.rar5* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %46, label %30

30:                                               ; preds = %25
  %31 = load %struct.rar5*, %struct.rar5** %11, align 8
  %32 = getelementptr inbounds %struct.rar5, %struct.rar5* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rar5*, %struct.rar5** %11, align 8
  %36 = getelementptr inbounds %struct.rar5, %struct.rar5* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp sgt i64 %34, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %42 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %41, i32 0, i32 0
  %43 = load i32, i32* @ARCHIVE_ERRNO_PROGRAMMER, align 4
  %44 = call i32 @archive_set_error(i32* %42, i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %45, i32* %5, align 4
  br label %101

46:                                               ; preds = %30, %25
  %47 = load %struct.rar5*, %struct.rar5** %11, align 8
  %48 = load i8**, i8*** %7, align 8
  %49 = load i64*, i64** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @use_data(%struct.rar5* %47, i8** %48, i64* %49, i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* @ARCHIVE_OK, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %101

57:                                               ; preds = %46
  %58 = load %struct.rar5*, %struct.rar5** %11, align 8
  %59 = getelementptr inbounds %struct.rar5, %struct.rar5* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %64, i32* %5, align 4
  br label %101

65:                                               ; preds = %57
  %66 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %67 = load %struct.rar5*, %struct.rar5** %11, align 8
  %68 = load i8**, i8*** %7, align 8
  %69 = load i64*, i64** %8, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @do_unpack(%struct.archive_read* %66, %struct.rar5* %67, i8** %68, i64* %69, i32* %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* @ARCHIVE_OK, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %65
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %101

77:                                               ; preds = %65
  %78 = load %struct.rar5*, %struct.rar5** %11, align 8
  %79 = getelementptr inbounds %struct.rar5, %struct.rar5* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %83, label %99

83:                                               ; preds = %77
  %84 = load %struct.rar5*, %struct.rar5** %11, align 8
  %85 = getelementptr inbounds %struct.rar5, %struct.rar5* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.rar5*, %struct.rar5** %11, align 8
  %89 = getelementptr inbounds %struct.rar5, %struct.rar5* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %83
  %94 = load %struct.rar5*, %struct.rar5** %11, align 8
  %95 = getelementptr inbounds %struct.rar5, %struct.rar5* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  store i32 1, i32* %96, align 8
  %97 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %98 = call i32 @verify_global_checksums(%struct.archive_read* %97)
  store i32 %98, i32* %5, align 4
  br label %101

99:                                               ; preds = %83, %77
  %100 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %99, %93, %75, %63, %55, %40, %19
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.rar5* @get_context(%struct.archive_read*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @use_data(%struct.rar5*, i8**, i64*, i32*) #1

declare dso_local i32 @do_unpack(%struct.archive_read*, %struct.rar5*, i8**, i64*, i32*) #1

declare dso_local i32 @verify_global_checksums(%struct.archive_read*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
