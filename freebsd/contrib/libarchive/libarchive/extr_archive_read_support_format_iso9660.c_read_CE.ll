; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_read_CE.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_read_CE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.iso9660 = type { i64, i64, %struct.read_ce_queue }
%struct.read_ce_queue = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, %struct.file_info* }
%struct.file_info = type { i64, i64 }

@ARCHIVE_ERRNO_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Failed to read full block when scanning ISO9660 directory list\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_ERRNO_FILE_FORMAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Malformed CE information\00", align 1
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.iso9660*)* @read_CE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_CE(%struct.archive_read* %0, %struct.iso9660* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.archive_read*, align 8
  %5 = alloca %struct.iso9660*, align 8
  %6 = alloca %struct.read_ce_queue*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.file_info*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %4, align 8
  store %struct.iso9660* %1, %struct.iso9660** %5, align 8
  %13 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %14 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %13, i32 0, i32 2
  store %struct.read_ce_queue* %14, %struct.read_ce_queue** %6, align 8
  %15 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %16 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  br label %18

18:                                               ; preds = %113, %2
  %19 = load %struct.read_ce_queue*, %struct.read_ce_queue** %6, align 8
  %20 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.read_ce_queue*, %struct.read_ce_queue** %6, align 8
  %25 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %31 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br label %34

34:                                               ; preds = %23, %18
  %35 = phi i1 [ false, %18 ], [ %33, %23 ]
  br i1 %35, label %36, label %122

36:                                               ; preds = %34
  %37 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i8* @__archive_read_ahead(%struct.archive_read* %37, i64 %38, i32* null)
  store i8* %39, i8** %7, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %44 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %43, i32 0, i32 0
  %45 = load i32, i32* @ARCHIVE_ERRNO_MISC, align 4
  %46 = call i32 @archive_set_error(i32* %44, i32 %45, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %47, i32* %3, align 4
  br label %124

48:                                               ; preds = %36
  br label %49

49:                                               ; preds = %111, %48
  %50 = load %struct.read_ce_queue*, %struct.read_ce_queue** %6, align 8
  %51 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load %struct.file_info*, %struct.file_info** %54, align 8
  store %struct.file_info* %55, %struct.file_info** %10, align 8
  %56 = load %struct.file_info*, %struct.file_info** %10, align 8
  %57 = getelementptr inbounds %struct.file_info, %struct.file_info* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.file_info*, %struct.file_info** %10, align 8
  %60 = getelementptr inbounds %struct.file_info, %struct.file_info* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %58, %61
  %63 = load i64, i64* %11, align 8
  %64 = icmp ugt i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %49
  %66 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %67 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %66, i32 0, i32 0
  %68 = load i32, i32* @ARCHIVE_ERRNO_FILE_FORMAT, align 4
  %69 = call i32 @archive_set_error(i32* %67, i32 %68, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %70, i32* %3, align 4
  br label %124

71:                                               ; preds = %49
  %72 = load i8*, i8** %7, align 8
  %73 = load %struct.file_info*, %struct.file_info** %10, align 8
  %74 = getelementptr inbounds %struct.file_info, %struct.file_info* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  store i8* %76, i8** %8, align 8
  %77 = load i8*, i8** %8, align 8
  %78 = load %struct.file_info*, %struct.file_info** %10, align 8
  %79 = getelementptr inbounds %struct.file_info, %struct.file_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8* %81, i8** %9, align 8
  %82 = load %struct.read_ce_queue*, %struct.read_ce_queue** %6, align 8
  %83 = call i32 @next_CE(%struct.read_ce_queue* %82)
  %84 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %85 = load %struct.file_info*, %struct.file_info** %10, align 8
  %86 = load i8*, i8** %8, align 8
  %87 = load i8*, i8** %9, align 8
  %88 = call i32 @parse_rockridge(%struct.archive_read* %84, %struct.file_info* %85, i8* %86, i8* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @ARCHIVE_OK, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %94

92:                                               ; preds = %71
  %93 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %93, i32* %3, align 4
  br label %124

94:                                               ; preds = %71
  br label %95

95:                                               ; preds = %94
  %96 = load %struct.read_ce_queue*, %struct.read_ce_queue** %6, align 8
  %97 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = load %struct.read_ce_queue*, %struct.read_ce_queue** %6, align 8
  %102 = getelementptr inbounds %struct.read_ce_queue, %struct.read_ce_queue* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %108 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp eq i64 %106, %109
  br label %111

111:                                              ; preds = %100, %95
  %112 = phi i1 [ false, %95 ], [ %110, %100 ]
  br i1 %112, label %49, label %113

113:                                              ; preds = %111
  %114 = load %struct.archive_read*, %struct.archive_read** %4, align 8
  %115 = load i64, i64* %11, align 8
  %116 = call i32 @__archive_read_consume(%struct.archive_read* %114, i64 %115)
  %117 = load i64, i64* %11, align 8
  %118 = load %struct.iso9660*, %struct.iso9660** %5, align 8
  %119 = getelementptr inbounds %struct.iso9660, %struct.iso9660* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = add i64 %120, %117
  store i64 %121, i64* %119, align 8
  br label %18

122:                                              ; preds = %34
  %123 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %122, %92, %65, %42
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i8* @__archive_read_ahead(%struct.archive_read*, i64, i32*) #1

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i32 @next_CE(%struct.read_ce_queue*) #1

declare dso_local i32 @parse_rockridge(%struct.archive_read*, %struct.file_info*, i8*, i8*) #1

declare dso_local i32 @__archive_read_consume(%struct.archive_read*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
