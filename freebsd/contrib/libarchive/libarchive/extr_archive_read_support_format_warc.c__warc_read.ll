; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_warc.c__warc_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.warc_s* }
%struct.warc_s = type { i64, i64, i32 }

@ARCHIVE_EOF = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, i8**, i64*, i64*)* @_warc_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_warc_read(%struct.archive_read* %0, i8** %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.warc_s*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %14 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.warc_s*, %struct.warc_s** %16, align 8
  store %struct.warc_s* %17, %struct.warc_s** %10, align 8
  %18 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %19 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %22 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %20, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %62, %25
  %27 = load i8**, i8*** %7, align 8
  store i8* null, i8** %27, align 8
  %28 = load i64*, i64** %8, align 8
  store i64 0, i64* %28, align 8
  %29 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %30 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 4
  %33 = load i64*, i64** %9, align 8
  store i64 %32, i64* %33, align 8
  %34 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %35 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %34, i32 0, i32 2
  store i32 0, i32* %35, align 8
  %36 = load i32, i32* @ARCHIVE_EOF, align 4
  store i32 %36, i32* %5, align 4
  br label %102

37:                                               ; preds = %4
  %38 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %39 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %44 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %45 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @__archive_read_consume(%struct.archive_read* %43, i32 %46)
  %48 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %49 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %48, i32 0, i32 2
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %42, %37
  %51 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %52 = call i8* @__archive_read_ahead(%struct.archive_read* %51, i32 1, i64* %12)
  store i8* %52, i8** %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ult i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i64*, i64** %8, align 8
  store i64 0, i64* %56, align 8
  %57 = load i64, i64* %12, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %102

59:                                               ; preds = %50
  %60 = load i64, i64* %12, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %26

63:                                               ; preds = %59
  %64 = load i64, i64* %12, align 8
  %65 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %66 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %69 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = sub nsw i64 %67, %70
  %72 = icmp ugt i64 %64, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %63
  %74 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %75 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %78 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = sub nsw i64 %76, %79
  store i64 %80, i64* %12, align 8
  br label %81

81:                                               ; preds = %73, %63
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  %84 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %85 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64*, i64** %9, align 8
  store i64 %86, i64* %87, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load i64*, i64** %8, align 8
  store i64 %88, i64* %89, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i8**, i8*** %7, align 8
  store i8* %90, i8** %91, align 8
  %92 = load i64, i64* %12, align 8
  %93 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %94 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = add i64 %95, %92
  store i64 %96, i64* %94, align 8
  %97 = load i64, i64* %12, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.warc_s*, %struct.warc_s** %10, align 8
  %100 = getelementptr inbounds %struct.warc_s, %struct.warc_s* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %83, %55, %26
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i32) #1

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
