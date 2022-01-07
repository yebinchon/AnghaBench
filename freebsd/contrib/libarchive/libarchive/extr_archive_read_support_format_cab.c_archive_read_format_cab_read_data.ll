; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_archive_read_format_cab_read_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_cab.c_archive_read_format_cab_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.cab = type { i32, i32, i32, i64, i64, i64, i64, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Cannot restore this file split in multivolume.\00", align 1
@ARCHIVE_FAILED = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i32*)* @archive_read_format_cab_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_read_format_cab_read_data(%struct.archive_read* %0, i8** %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.cab*, align 8
  %11 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %13 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.cab*
  store %struct.cab* %17, %struct.cab** %10, align 8
  %18 = load %struct.cab*, %struct.cab** %10, align 8
  %19 = getelementptr inbounds %struct.cab, %struct.cab* %18, i32 0, i32 8
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %35 [
    i32 130, label %23
    i32 128, label %23
    i32 129, label %23
  ]

23:                                               ; preds = %4, %4, %4
  %24 = load i8**, i8*** %7, align 8
  store i8* null, i8** %24, align 8
  %25 = load i64*, i64** %8, align 8
  store i64 0, i64* %25, align 8
  %26 = load i32*, i32** %9, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %28 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %27, i32 0, i32 0
  %29 = call i32 @archive_clear_error(i32* %28)
  %30 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %31 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %30, i32 0, i32 0
  %32 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %33 = call i32 @archive_set_error(i32* %31, i32 %32, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @ARCHIVE_FAILED, align 4
  store i32 %34, i32* %5, align 4
  br label %125

35:                                               ; preds = %4
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.cab*, %struct.cab** %10, align 8
  %38 = getelementptr inbounds %struct.cab, %struct.cab* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %74

41:                                               ; preds = %36
  %42 = load %struct.cab*, %struct.cab** %10, align 8
  %43 = getelementptr inbounds %struct.cab, %struct.cab* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %71

46:                                               ; preds = %41
  %47 = load %struct.cab*, %struct.cab** %10, align 8
  %48 = getelementptr inbounds %struct.cab, %struct.cab* %47, i32 0, i32 7
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %53 = call i32 @cab_next_cfdata(%struct.archive_read* %52)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %5, align 4
  br label %125

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58, %46
  %60 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %61 = load %struct.cab*, %struct.cab** %10, align 8
  %62 = getelementptr inbounds %struct.cab, %struct.cab* %61, i32 0, i32 6
  %63 = load i64, i64* %62, align 8
  %64 = call i64 @cab_consume_cfdata(%struct.archive_read* %60, i64 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %67, i32* %5, align 4
  br label %125

68:                                               ; preds = %59
  %69 = load %struct.cab*, %struct.cab** %10, align 8
  %70 = getelementptr inbounds %struct.cab, %struct.cab* %69, i32 0, i32 6
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %68, %41
  %72 = load %struct.cab*, %struct.cab** %10, align 8
  %73 = getelementptr inbounds %struct.cab, %struct.cab* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %71, %36
  %75 = load %struct.cab*, %struct.cab** %10, align 8
  %76 = getelementptr inbounds %struct.cab, %struct.cab* %75, i32 0, i32 5
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %81 = load %struct.cab*, %struct.cab** %10, align 8
  %82 = getelementptr inbounds %struct.cab, %struct.cab* %81, i32 0, i32 5
  %83 = load i64, i64* %82, align 8
  %84 = call i64 @cab_consume_cfdata(%struct.archive_read* %80, i64 %83)
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %11, align 4
  %86 = load %struct.cab*, %struct.cab** %10, align 8
  %87 = getelementptr inbounds %struct.cab, %struct.cab* %86, i32 0, i32 5
  store i64 0, i64* %87, align 8
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %79
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %5, align 4
  br label %125

92:                                               ; preds = %79
  br label %93

93:                                               ; preds = %92, %74
  %94 = load %struct.cab*, %struct.cab** %10, align 8
  %95 = getelementptr inbounds %struct.cab, %struct.cab* %94, i32 0, i32 4
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = load %struct.cab*, %struct.cab** %10, align 8
  %100 = getelementptr inbounds %struct.cab, %struct.cab* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %98, %93
  %104 = load %struct.cab*, %struct.cab** %10, align 8
  %105 = getelementptr inbounds %struct.cab, %struct.cab* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %103
  %109 = load %struct.cab*, %struct.cab** %10, align 8
  %110 = getelementptr inbounds %struct.cab, %struct.cab* %109, i32 0, i32 1
  store i32 1, i32* %110, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.cab*, %struct.cab** %10, align 8
  %113 = getelementptr inbounds %struct.cab, %struct.cab* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32*, i32** %9, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i64*, i64** %8, align 8
  store i64 0, i64* %116, align 8
  %117 = load i8**, i8*** %7, align 8
  store i8* null, i8** %117, align 8
  %118 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %118, i32* %5, align 4
  br label %125

119:                                              ; preds = %98
  %120 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %121 = load i8**, i8*** %7, align 8
  %122 = load i64*, i64** %8, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @cab_read_data(%struct.archive_read* %120, i8** %121, i64* %122, i32* %123)
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %119, %111, %90, %66, %56, %23
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @archive_clear_error(i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @cab_next_cfdata(%struct.archive_read*) #1

declare dso_local i64 @cab_consume_cfdata(%struct.archive_read*, i64) #1

declare dso_local i32 @cab_read_data(%struct.archive_read*, i8**, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
