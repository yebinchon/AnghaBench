; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_finish_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_set_format_iso9660.c_iso9660_finish_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write = type { i64, i32, %struct.iso9660* }
%struct.iso9660 = type { i64, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_5__, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@AE_IFREG = common dso_local global i64 0, align 8
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@LOGICAL_BLOCK_SIZE = common dso_local global i32 0, align 4
@LOGICAL_BLOCK_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write*)* @iso9660_finish_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iso9660_finish_entry(%struct.archive_write* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.archive_write*, align 8
  %4 = alloca %struct.iso9660*, align 8
  %5 = alloca i64, align 8
  store %struct.archive_write* %0, %struct.archive_write** %3, align 8
  %6 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %7 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %6, i32 0, i32 2
  %8 = load %struct.iso9660*, %struct.iso9660** %7, align 8
  store %struct.iso9660* %8, %struct.iso9660** %4, align 8
  %9 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %10 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %9, i32 0, i32 1
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = icmp eq %struct.TYPE_8__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %14, i32* %2, align 4
  br label %127

15:                                               ; preds = %1
  %16 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %17 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @archive_entry_filetype(i32 %20)
  %22 = load i64, i64* @AE_IFREG, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %25, i32* %2, align 4
  br label %127

26:                                               ; preds = %15
  %27 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %28 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %27, i32 0, i32 1
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %35, i32* %2, align 4
  br label %127

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %69, %36
  %38 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %39 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %75

42:                                               ; preds = %37
  %43 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %44 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %47 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ugt i64 %45, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %52 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  br label %58

54:                                               ; preds = %42
  %55 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %56 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = phi i64 [ %53, %50 ], [ %57, %54 ]
  store i64 %59, i64* %5, align 8
  %60 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %61 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %62 = getelementptr inbounds %struct.archive_write, %struct.archive_write* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %5, align 8
  %65 = call i64 @write_iso9660_data(%struct.archive_write* %60, i32 %63, i64 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %68, i32* %2, align 4
  br label %127

69:                                               ; preds = %58
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %72 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = sub i64 %73, %70
  store i64 %74, i64* %72, align 8
  br label %37

75:                                               ; preds = %37
  %76 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %77 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %83 = call i32 @zisofs_finish_entry(%struct.archive_write* %82)
  %84 = load i32, i32* @ARCHIVE_OK, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %87, i32* %2, align 4
  br label %127

88:                                               ; preds = %81, %75
  %89 = load %struct.archive_write*, %struct.archive_write** %3, align 8
  %90 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %91 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %90, i32 0, i32 1
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @wb_write_padding_to_temp(%struct.archive_write* %89, i32 %96)
  %98 = load i32, i32* @ARCHIVE_OK, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %101, i32* %2, align 4
  br label %127

102:                                              ; preds = %88
  %103 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %104 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @LOGICAL_BLOCK_SIZE, align 4
  %111 = add nsw i32 %109, %110
  %112 = sub nsw i32 %111, 1
  %113 = load i32, i32* @LOGICAL_BLOCK_BITS, align 4
  %114 = ashr i32 %112, %113
  %115 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %116 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %115, i32 0, i32 1
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  store i32 %114, i32* %120, align 4
  %121 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %122 = load %struct.iso9660*, %struct.iso9660** %4, align 8
  %123 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %122, i32 0, i32 1
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = call i32 @isofile_add_data_file(%struct.iso9660* %121, %struct.TYPE_8__* %124)
  %126 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %102, %100, %86, %67, %34, %24, %13
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i64 @archive_entry_filetype(i32) #1

declare dso_local i64 @write_iso9660_data(%struct.archive_write*, i32, i64) #1

declare dso_local i32 @zisofs_finish_entry(%struct.archive_write*) #1

declare dso_local i32 @wb_write_padding_to_temp(%struct.archive_write*, i32) #1

declare dso_local i32 @isofile_add_data_file(%struct.iso9660*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
