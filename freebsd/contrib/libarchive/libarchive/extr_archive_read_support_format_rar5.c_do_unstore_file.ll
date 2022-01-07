; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_do_unstore_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_rar5.c_do_unstore_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.rar5 = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"I/O error when unstoring file\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.rar5*, i8**, i64*, i64*)* @do_unstore_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_unstore_file(%struct.archive_read* %0, %struct.rar5* %1, i8** %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.archive_read*, align 8
  %8 = alloca %struct.rar5*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %7, align 8
  store %struct.rar5* %1, %struct.rar5** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %15 = load %struct.rar5*, %struct.rar5** %8, align 8
  %16 = getelementptr inbounds %struct.rar5, %struct.rar5* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %5
  %21 = load %struct.rar5*, %struct.rar5** %8, align 8
  %22 = getelementptr inbounds %struct.rar5, %struct.rar5* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %20
  %27 = load %struct.rar5*, %struct.rar5** %8, align 8
  %28 = getelementptr inbounds %struct.rar5, %struct.rar5* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %47

32:                                               ; preds = %26
  %33 = load %struct.rar5*, %struct.rar5** %8, align 8
  %34 = getelementptr inbounds %struct.rar5, %struct.rar5* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  store i32 1, i32* %35, align 8
  %36 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %37 = call i32 @advance_multivolume(%struct.archive_read* %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.rar5*, %struct.rar5** %8, align 8
  %39 = getelementptr inbounds %struct.rar5, %struct.rar5* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @ARCHIVE_OK, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %32
  %45 = load i32, i32* %13, align 4
  store i32 %45, i32* %6, align 4
  br label %116

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %26, %20, %5
  %48 = load %struct.rar5*, %struct.rar5** %8, align 8
  %49 = getelementptr inbounds %struct.rar5, %struct.rar5* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @rar5_min(i64 %51, i32 65536)
  store i64 %52, i64* %14, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %56, i32* %6, align 4
  br label %116

57:                                               ; preds = %47
  %58 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @read_ahead(%struct.archive_read* %58, i64 %59, i32** %12)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %64 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %63, i32 0, i32 0
  %65 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %66 = call i32 @archive_set_error(i32* %64, i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %67 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %67, i32* %6, align 4
  br label %116

68:                                               ; preds = %57
  %69 = load i32, i32* @ARCHIVE_OK, align 4
  %70 = load %struct.archive_read*, %struct.archive_read** %7, align 8
  %71 = load i64, i64* %14, align 8
  %72 = call i32 @consume(%struct.archive_read* %70, i64 %71)
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %68
  %75 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %75, i32* %6, align 4
  br label %116

76:                                               ; preds = %68
  %77 = load i8**, i8*** %9, align 8
  %78 = icmp ne i8** %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32*, i32** %12, align 8
  %81 = bitcast i32* %80 to i8*
  %82 = load i8**, i8*** %9, align 8
  store i8* %81, i8** %82, align 8
  br label %83

83:                                               ; preds = %79, %76
  %84 = load i64*, i64** %10, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i64, i64* %14, align 8
  %88 = load i64*, i64** %10, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i64*, i64** %11, align 8
  %91 = icmp ne i64* %90, null
  br i1 %91, label %92, label %98

92:                                               ; preds = %89
  %93 = load %struct.rar5*, %struct.rar5** %8, align 8
  %94 = getelementptr inbounds %struct.rar5, %struct.rar5* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %11, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %92, %89
  %99 = load i64, i64* %14, align 8
  %100 = load %struct.rar5*, %struct.rar5** %8, align 8
  %101 = getelementptr inbounds %struct.rar5, %struct.rar5* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = sub i64 %103, %99
  store i64 %104, i64* %102, align 8
  %105 = load i64, i64* %14, align 8
  %106 = load %struct.rar5*, %struct.rar5** %8, align 8
  %107 = getelementptr inbounds %struct.rar5, %struct.rar5* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add i64 %109, %105
  store i64 %110, i64* %108, align 8
  %111 = load %struct.rar5*, %struct.rar5** %8, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = load i64, i64* %14, align 8
  %114 = call i32 @update_crc(%struct.rar5* %111, i32* %112, i64 %113)
  %115 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %115, i32* %6, align 4
  br label %116

116:                                              ; preds = %98, %74, %62, %55, %44
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @advance_multivolume(%struct.archive_read*) #1

declare dso_local i64 @rar5_min(i64, i32) #1

declare dso_local i32 @read_ahead(%struct.archive_read*, i64, i32**) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @consume(%struct.archive_read*, i64) #1

declare dso_local i32 @update_crc(%struct.rar5*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
