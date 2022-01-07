; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_archive_compressor_compress_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_archive_compressor_compress_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i8*, %struct.private_data*, i32, i32, i32, %struct.TYPE_3__*, i32, i32 }
%struct.private_data = type { i64, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i64 }

@ARCHIVE_FILTER_COMPRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Can't allocate data for compression\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_WRITE_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [43 x i8] c"Can't allocate data for compression buffer\00", align 1
@archive_compressor_compress_write = common dso_local global i32 0, align 4
@archive_compressor_compress_close = common dso_local global i32 0, align 4
@archive_compressor_compress_free = common dso_local global i32 0, align 4
@CHECK_GAP = common dso_local global i32 0, align 4
@FIRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*)* @archive_compressor_compress_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_compressor_compress_open(%struct.archive_write_filter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write_filter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.private_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %3, align 8
  store i64 65536, i64* %6, align 8
  %8 = load i32, i32* @ARCHIVE_FILTER_COMPRESS, align 4
  %9 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %10 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %12 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %11, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %12, align 8
  %13 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %14 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @__archive_write_open_filter(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @ARCHIVE_OK, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %143

22:                                               ; preds = %1
  %23 = call i64 @calloc(i32 1, i32 80)
  %24 = inttoptr i64 %23 to %struct.private_data*
  store %struct.private_data* %24, %struct.private_data** %5, align 8
  %25 = load %struct.private_data*, %struct.private_data** %5, align 8
  %26 = icmp eq %struct.private_data* %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %29 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %28, i32 0, i32 5
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = call i32 @archive_set_error(%struct.TYPE_3__* %30, i32 %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %33, i32* %2, align 4
  br label %143

34:                                               ; preds = %22
  %35 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %36 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %35, i32 0, i32 5
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ARCHIVE_WRITE_MAGIC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %63

42:                                               ; preds = %34
  %43 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %44 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %43, i32 0, i32 5
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = call i64 @archive_write_get_bytes_per_block(%struct.TYPE_3__* %45)
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %6, align 8
  %49 = icmp ugt i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i64, i64* %7, align 8
  store i64 %51, i64* %6, align 8
  br label %62

52:                                               ; preds = %42
  %53 = load i64, i64* %7, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = urem i64 %56, %57
  %59 = load i64, i64* %6, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %55, %52
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %34
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.private_data*, %struct.private_data** %5, align 8
  %66 = getelementptr inbounds %struct.private_data, %struct.private_data* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.private_data*, %struct.private_data** %5, align 8
  %68 = getelementptr inbounds %struct.private_data, %struct.private_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32* @malloc(i64 %69)
  %71 = load %struct.private_data*, %struct.private_data** %5, align 8
  %72 = getelementptr inbounds %struct.private_data, %struct.private_data* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.private_data*, %struct.private_data** %5, align 8
  %74 = getelementptr inbounds %struct.private_data, %struct.private_data* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %63
  %78 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %79 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %78, i32 0, i32 5
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = call i32 @archive_set_error(%struct.TYPE_3__* %80, i32 %81, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %83 = load %struct.private_data*, %struct.private_data** %5, align 8
  %84 = call i32 @free(%struct.private_data* %83)
  %85 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %85, i32* %2, align 4
  br label %143

86:                                               ; preds = %63
  %87 = load i32, i32* @archive_compressor_compress_write, align 4
  %88 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %89 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @archive_compressor_compress_close, align 4
  %91 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %92 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @archive_compressor_compress_free, align 4
  %94 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %95 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.private_data*, %struct.private_data** %5, align 8
  %97 = getelementptr inbounds %struct.private_data, %struct.private_data* %96, i32 0, i32 2
  store i32 65536, i32* %97, align 8
  %98 = load %struct.private_data*, %struct.private_data** %5, align 8
  %99 = getelementptr inbounds %struct.private_data, %struct.private_data* %98, i32 0, i32 13
  store i64 0, i64* %99, align 8
  %100 = load %struct.private_data*, %struct.private_data** %5, align 8
  %101 = getelementptr inbounds %struct.private_data, %struct.private_data* %100, i32 0, i32 12
  store i64 0, i64* %101, align 8
  %102 = load %struct.private_data*, %struct.private_data** %5, align 8
  %103 = getelementptr inbounds %struct.private_data, %struct.private_data* %102, i32 0, i32 11
  store i64 0, i64* %103, align 8
  %104 = load %struct.private_data*, %struct.private_data** %5, align 8
  %105 = getelementptr inbounds %struct.private_data, %struct.private_data* %104, i32 0, i32 3
  store i32 3, i32* %105, align 4
  %106 = load %struct.private_data*, %struct.private_data** %5, align 8
  %107 = getelementptr inbounds %struct.private_data, %struct.private_data* %106, i32 0, i32 10
  store i64 0, i64* %107, align 8
  %108 = load i32, i32* @CHECK_GAP, align 4
  %109 = load %struct.private_data*, %struct.private_data** %5, align 8
  %110 = getelementptr inbounds %struct.private_data, %struct.private_data* %109, i32 0, i32 9
  store i32 %108, i32* %110, align 4
  %111 = load %struct.private_data*, %struct.private_data** %5, align 8
  %112 = getelementptr inbounds %struct.private_data, %struct.private_data* %111, i32 0, i32 4
  store i32 9, i32* %112, align 8
  %113 = load %struct.private_data*, %struct.private_data** %5, align 8
  %114 = getelementptr inbounds %struct.private_data, %struct.private_data* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @MAXCODE(i32 %115)
  %117 = load %struct.private_data*, %struct.private_data** %5, align 8
  %118 = getelementptr inbounds %struct.private_data, %struct.private_data* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @FIRST, align 4
  %120 = load %struct.private_data*, %struct.private_data** %5, align 8
  %121 = getelementptr inbounds %struct.private_data, %struct.private_data* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 4
  %122 = load %struct.private_data*, %struct.private_data** %5, align 8
  %123 = getelementptr inbounds %struct.private_data, %struct.private_data* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @memset(i32 %124, i32 255, i32 4)
  %126 = load %struct.private_data*, %struct.private_data** %5, align 8
  %127 = getelementptr inbounds %struct.private_data, %struct.private_data* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  store i32 31, i32* %129, align 4
  %130 = load %struct.private_data*, %struct.private_data** %5, align 8
  %131 = getelementptr inbounds %struct.private_data, %struct.private_data* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 157, i32* %133, align 4
  %134 = load %struct.private_data*, %struct.private_data** %5, align 8
  %135 = getelementptr inbounds %struct.private_data, %struct.private_data* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 2
  store i32 144, i32* %137, align 4
  %138 = load %struct.private_data*, %struct.private_data** %5, align 8
  %139 = getelementptr inbounds %struct.private_data, %struct.private_data* %138, i32 0, i32 5
  store i32 3, i32* %139, align 4
  %140 = load %struct.private_data*, %struct.private_data** %5, align 8
  %141 = load %struct.archive_write_filter*, %struct.archive_write_filter** %3, align 8
  %142 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %141, i32 0, i32 1
  store %struct.private_data* %140, %struct.private_data** %142, align 8
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %86, %77, %27, %20
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @__archive_write_open_filter(i32) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @archive_set_error(%struct.TYPE_3__*, i32, i8*) #1

declare dso_local i64 @archive_write_get_bytes_per_block(%struct.TYPE_3__*) #1

declare dso_local i32* @malloc(i64) #1

declare dso_local i32 @free(%struct.private_data*) #1

declare dso_local i32 @MAXCODE(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
