; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_heap_add_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_read_support_format_iso9660.c_heap_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_read = type { i32 }
%struct.heap_queue = type { i32, i32, %struct.file_info** }
%struct.file_info = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_read*, %struct.heap_queue*, %struct.file_info*, i64)* @heap_add_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @heap_add_entry(%struct.archive_read* %0, %struct.heap_queue* %1, %struct.file_info* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_read*, align 8
  %7 = alloca %struct.heap_queue*, align 8
  %8 = alloca %struct.file_info*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.file_info**, align 8
  %15 = alloca i32, align 4
  store %struct.archive_read* %0, %struct.archive_read** %6, align 8
  store %struct.heap_queue* %1, %struct.heap_queue** %7, align 8
  store %struct.file_info* %2, %struct.file_info** %8, align 8
  store i64 %3, i64* %9, align 8
  %16 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %17 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %20 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %88

23:                                               ; preds = %4
  %24 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %25 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 2
  store i32 %27, i32* %15, align 4
  %28 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %29 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %30, 1024
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 1024, i32* %15, align 4
  br label %33

33:                                               ; preds = %32, %23
  %34 = load i32, i32* %15, align 4
  %35 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %36 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %34, %37
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %41 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %40, i32 0, i32 0
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = call i32 @archive_set_error(i32* %41, i32 %42, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %44, i32* %5, align 4
  br label %146

45:                                               ; preds = %33
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = trunc i64 %48 to i32
  %50 = call i64 @malloc(i32 %49)
  %51 = inttoptr i64 %50 to %struct.file_info**
  store %struct.file_info** %51, %struct.file_info*** %14, align 8
  %52 = load %struct.file_info**, %struct.file_info*** %14, align 8
  %53 = icmp eq %struct.file_info** %52, null
  br i1 %53, label %54, label %60

54:                                               ; preds = %45
  %55 = load %struct.archive_read*, %struct.archive_read** %6, align 8
  %56 = getelementptr inbounds %struct.archive_read, %struct.archive_read* %55, i32 0, i32 0
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = call i32 @archive_set_error(i32* %56, i32 %57, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %59, i32* %5, align 4
  br label %146

60:                                               ; preds = %45
  %61 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %62 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %77

65:                                               ; preds = %60
  %66 = load %struct.file_info**, %struct.file_info*** %14, align 8
  %67 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %68 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %67, i32 0, i32 2
  %69 = load %struct.file_info**, %struct.file_info*** %68, align 8
  %70 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %71 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @memcpy(%struct.file_info** %66, %struct.file_info** %69, i32 %75)
  br label %77

77:                                               ; preds = %65, %60
  %78 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %79 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %78, i32 0, i32 2
  %80 = load %struct.file_info**, %struct.file_info*** %79, align 8
  %81 = call i32 @free(%struct.file_info** %80)
  %82 = load %struct.file_info**, %struct.file_info*** %14, align 8
  %83 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %84 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %83, i32 0, i32 2
  store %struct.file_info** %82, %struct.file_info*** %84, align 8
  %85 = load i32, i32* %15, align 4
  %86 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %87 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %77, %4
  %89 = load i64, i64* %9, align 8
  %90 = load %struct.file_info*, %struct.file_info** %8, align 8
  %91 = getelementptr inbounds %struct.file_info, %struct.file_info* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  store i64 %89, i64* %10, align 8
  %92 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %93 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 8
  store i32 %94, i32* %12, align 4
  br label %96

96:                                               ; preds = %124, %88
  %97 = load i32, i32* %12, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %139

99:                                               ; preds = %96
  %100 = load i32, i32* %12, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sdiv i32 %101, 2
  store i32 %102, i32* %13, align 4
  %103 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %104 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %103, i32 0, i32 2
  %105 = load %struct.file_info**, %struct.file_info*** %104, align 8
  %106 = load i32, i32* %13, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.file_info*, %struct.file_info** %105, i64 %107
  %109 = load %struct.file_info*, %struct.file_info** %108, align 8
  %110 = getelementptr inbounds %struct.file_info, %struct.file_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %10, align 8
  %113 = load i64, i64* %11, align 8
  %114 = icmp sge i64 %112, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %99
  %116 = load %struct.file_info*, %struct.file_info** %8, align 8
  %117 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %118 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %117, i32 0, i32 2
  %119 = load %struct.file_info**, %struct.file_info*** %118, align 8
  %120 = load i32, i32* %12, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.file_info*, %struct.file_info** %119, i64 %121
  store %struct.file_info* %116, %struct.file_info** %122, align 8
  %123 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %123, i32* %5, align 4
  br label %146

124:                                              ; preds = %99
  %125 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %126 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %125, i32 0, i32 2
  %127 = load %struct.file_info**, %struct.file_info*** %126, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.file_info*, %struct.file_info** %127, i64 %129
  %131 = load %struct.file_info*, %struct.file_info** %130, align 8
  %132 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %133 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %132, i32 0, i32 2
  %134 = load %struct.file_info**, %struct.file_info*** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.file_info*, %struct.file_info** %134, i64 %136
  store %struct.file_info* %131, %struct.file_info** %137, align 8
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %12, align 4
  br label %96

139:                                              ; preds = %96
  %140 = load %struct.file_info*, %struct.file_info** %8, align 8
  %141 = load %struct.heap_queue*, %struct.heap_queue** %7, align 8
  %142 = getelementptr inbounds %struct.heap_queue, %struct.heap_queue* %141, i32 0, i32 2
  %143 = load %struct.file_info**, %struct.file_info*** %142, align 8
  %144 = getelementptr inbounds %struct.file_info*, %struct.file_info** %143, i64 0
  store %struct.file_info* %140, %struct.file_info** %144, align 8
  %145 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %145, i32* %5, align 4
  br label %146

146:                                              ; preds = %139, %115, %54, %39
  %147 = load i32, i32* %5, align 4
  ret i32 %147
}

declare dso_local i32 @archive_set_error(i32*, i32, i8*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memcpy(%struct.file_info**, %struct.file_info**, i32) #1

declare dso_local i32 @free(%struct.file_info**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
